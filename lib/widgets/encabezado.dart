import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/user_provider.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(85);

  @override
  Widget build(BuildContext context) {
    final userEmail = Provider.of<UserProvider>(context).email;

    return AppBar(
      toolbarHeight: 80,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/icono_app.png',
            height: 65,
            fit: BoxFit.contain,
          ),
          Text(
            '¡Bienvenido/a $userEmail !',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white, // Para que coincida con tu diseño
      centerTitle: true,
    );
  }
}