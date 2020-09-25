import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isExpanded;
  final void Function() onTap;

  CustomBottomAppBar({@required this.isExpanded, @required this.onTap});

  @override
  Size get preferredSize => Size.fromHeight(20);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        color: Colors.white,
        size: 26,
      ),
    );
  }
}
