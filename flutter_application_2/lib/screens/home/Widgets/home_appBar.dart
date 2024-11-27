import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/constant/color.dart';
import 'package:flutter_application_2/constant/image.dart';


class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ListColor.hex020206,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      title: const Text(
        'You have got 5 tasks\ntoday to complete ✍️',
        maxLines: 2,
        style: TextStyle(
          color: Colors.white,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      titleSpacing: 20,
      actions: [
        ClipRRect(
          borderRadius: BorderRadius.circular(22.5),
         
        ),
        
      ],
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
