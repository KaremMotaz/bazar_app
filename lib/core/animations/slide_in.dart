// import 'package:flutter/material.dart';

// class SlideIn extends StatefulWidget {
//   final Widget child;
//   final Duration duration;
//   final Curve curve;
//   final Offset beginOffset;
//   final Offset endOffset;
//   final bool autoPlay;

//   const SlideIn({
//     super.key,
//     required this.child,
//     this.duration = const Duration(milliseconds: 1000),
//     this.curve = Curves.easeInOut,
//     this.beginOffset = const Offset(1, 0),
//     this.endOffset = Offset.zero,
//     this.autoPlay = true,
//   });

//   @override
//   State<SlideIn> createState() => _SlideInState();
// }

// class _SlideInState extends State<SlideIn> {
//   late Offset _offset;

//   @override
//   void initState() {
//     super.initState();
//     _offset = widget.beginOffset;

//     if (widget.autoPlay) {
//       Future.delayed(Duration.zero, () {
//         setState(() {
//           _offset = widget.endOffset;
//         });
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSlide(
//       offset: _offset,
//       duration: widget.duration,
//       curve: widget.curve,
//       child: widget.child,
//     );
//   }
// }

import 'package:flutter/material.dart';

class SlideIn extends StatelessWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final Offset beginOffset;

  const SlideIn({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 1000),
    this.curve = Curves.easeInOut,
    this.beginOffset = const Offset(1, 0),
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      offset: Offset.zero,
      duration: duration,
      curve: curve,
      child: TweenAnimationBuilder<Offset>(
        tween: Tween(begin: beginOffset, end: Offset.zero),
        duration: duration,
        curve: curve,
        builder: (context, offset, child) {
          return FractionalTranslation(
            translation: offset,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}