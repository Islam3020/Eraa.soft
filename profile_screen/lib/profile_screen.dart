import 'package:flutter/material.dart';
import 'package:profile_screen/custom_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.logout_outlined),
          )
        ],
        title: const Text('Profile'),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              leading: const CircleAvatar(
                radius: 45,
                backgroundColor: Colors.blue,backgroundImage: 
                AssetImage('lib/assets/images/صورة واتساب بتاريخ 1446-07-13 في 13.27.14_7b6fc6a7.jpg',),
                
              ),
              title: const Text(
                'Islam Ali',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              subtitle: Text(
                'islamali3020@gmail.com',
                style: TextStyle(color: Colors.black.withOpacity(.4)),
              ),
            ),
            const CustomListTile(
              title: 'Shipping Addresses',
              subtitle: '03 addresses',
            ),
            const CustomListTile(
              title: 'Payment Method',
              subtitle: 'you have 2 cards',
            ),
            const CustomListTile(
              title: 'My reviews',
              subtitle: 'Reviews for 5 items',
            ),
            const CustomListTile(
              title: 'Settings ',
              subtitle: 'Notifications ,Passwords',
            ),
          ],
        ),
      ),
    );
  }
}
