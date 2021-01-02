import 'package:flutter/material.dart';
import 'package:flutter_odoo_client/widgets/animated-background.dart';
import 'package:flutter_odoo_client/widgets/animated-wave.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class FancyBackgroundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedBackground()),
        onBottom(AnimatedWave(
          height: 180,
          speed: 1.0,
        )),
        onBottom(AnimatedWave(
          height: 120,
          speed: 0.9,
          offset: pi,
        )),
        onBottom(AnimatedWave(
          height: 220,
          speed: 1.2,
          offset: pi / 2,
        )),
        Positioned.fill(child: Align(
            alignment: Alignment.center,
            child: Text(
          "Welcome to Odoo Client",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
              color: Colors.white,
            fontSize: 48,
          ),
        ))),
      ],
    );
  }

  onBottom(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );
}