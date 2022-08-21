import 'package:flutter/material.dart';

class AppBarC extends StatelessWidget implements PreferredSizeWidget {
  const AppBarC({Key key, this.title, this.centerTitle}) : super(key: key);
  final title;
  final centerTitle;

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      child: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
    );
  }
}
