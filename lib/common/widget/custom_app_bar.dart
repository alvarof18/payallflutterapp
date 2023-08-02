import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      bottomOpacity: 1,
      title: Text(title ?? ''),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.grey[900],
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
