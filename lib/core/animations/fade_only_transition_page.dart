import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadeOnlyTransitionPage extends CustomTransitionPage {
  FadeOnlyTransitionPage({
    required super.child,
    Duration duration = const Duration(milliseconds: 1000),
  }) : super(
         transitionDuration: duration,
         reverseTransitionDuration: duration,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return FadeTransition(
             opacity: Tween<double>(begin: 1.0, end: 0.0).animate(
               CurvedAnimation(
                 parent: secondaryAnimation,
                 curve: Curves.easeInOut,
               ),
             ),
             child: child,
           );
         },
       );
}
