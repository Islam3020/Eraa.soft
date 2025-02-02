import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.title, required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.only(left: 30,bottom: 20),
        trailing: const Icon(Icons.arrow_forward_ios),
        title:  Text(title,style: TextStyle(fontSize: 20),),
        subtitle: Text(subtitle,
        style: TextStyle(color: Colors.black.withOpacity(.4)),),
      );
  }
}
