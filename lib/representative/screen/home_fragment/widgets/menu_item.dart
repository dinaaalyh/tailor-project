import 'package:flutter/material.dart';
import 'package:tailor_project/utils/assets.gen.dart';

class MenuItem extends StatelessWidget {
  final AssetGenImage icon;
  final String title;
  final Widget screen;

  const MenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
        leading: icon.image(width: 24, height: 24),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 20),
        onTap: () {
          Navigator.pop(context);
          if (title == "Logout") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          }
        });
  }
}
