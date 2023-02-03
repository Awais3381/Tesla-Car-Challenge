/*
 * Copyright (c) 2020 .
 */

import 'package:flutter/material.dart';

class DrawerLinkWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  DrawerLinkWidget({

    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue.withOpacity(0.7),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            width: 1,
            height: 24,
            color: Colors.white.withOpacity(0.6),
          ),
          Expanded(
            child: Text(text, style:TextStyle(fontSize: 14,color: Colors.white))),

        ],
      ),
    );
  }
}
