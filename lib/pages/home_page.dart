import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../services/auth/auth_service.dart';
import './chat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  void signOut(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Care Chat'),
        backgroundColor: Color(0xFFFF4D00),
        elevation: 4,
        actions: [
          
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => signOut(context),
          )
        ],
      ),
      body: _buildUserList(context),
    );
  }

  Widget _buildUserList(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView(
          children: snapshot.data!.docs
              .map<Widget>((doc) => _buildUserListItem(context, doc))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(BuildContext context, DocumentSnapshot document) {
    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

    // Don't show the current user in the list
    if (FirebaseAuth.instance.currentUser!.uid == document.id) {
      return Container();
    }

    return ListTile(
      title: Text(data['name'] ?? data['email'].split('@')[0]),
      subtitle: Text(data['email'] ?? 'No email'),
      leading: CircleAvatar(
child: Text(data['email'].split('@')[0][0].toUpperCase()),
      ),
      onTap: () {
        // Navigate to ChatPage when a user is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(
              receiverUserEmail: data['email'],
              receiverUserID: document.id,
            ),
          ),
        );
      },
    );
  }
}