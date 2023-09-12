import 'package:dujis_partner/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  final Widget? cardChild;
  final Function? onPress;

  const ReusableCard({super.key, this.cardChild, this.onPress});

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return GestureDetector(
      onTap: widget.onPress as void Function()?,
      child: ScaleTransition(
        scale: _animation as Animation<double>,
        child: FadeTransition(
          opacity: _animation as Animation<double>,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: dujisCardBackgroundColor,
            ),
            child: widget.cardChild,
          ),
        ),
      ),
    );
  }
}
