import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class listUi extends StatelessWidget {
  final IconData leading;
  final String text;
  const listUi({super.key, required this.leading,required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30)),
        child:  ListTile(
          leading: Icon(
            leading,
            color: Colors.black,
          ),
          title: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
