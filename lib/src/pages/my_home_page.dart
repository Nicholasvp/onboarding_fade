import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding_fade/src/core/my_images.dart';
import 'package:onboarding_fade/src/widgets/onboarding.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int currentPosition = 1;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this)
      ..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void nextPage() {
    setState(() {
      currentPosition < 5 ? currentPosition++ : currentPosition = 1;
    });

    _controller.reset();
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return switch (currentPosition) {
      1 => FadeTransition(
          opacity: _animation,
          child: Onboarding(
            image: MyImagesEnum.onb1.url,
            title: 'BEM VINDO!',
            onPressed: nextPage,
          ),
        ),
      2 => FadeTransition(
          opacity: _animation,
          child: Onboarding(
            image: MyImagesEnum.onb2.url,
            title: 'AR PURO',
            subtitle:
                'Inspire-se na pureza da natureza e deixe o estresse ir embora.',
            onPressed: nextPage,
          ),
        ),
      3 => FadeTransition(
          opacity: _animation,
          child: Onboarding(
            image: MyImagesEnum.onb3.url,
            title: 'PAZ E TRANQUILIDADE',
            subtitle:
                'Desfrute da paz e tranquilidade da natureza e encontre a sua essência.',
            onPressed: nextPage,
          ),
        ),
      4 => FadeTransition(
          opacity: _animation,
          child: Onboarding(
            image: MyImagesEnum.onb4.url,
            title: 'AGUAS CRISTALINAS',
            subtitle: 'Mergulhe na beleza da natureza e sinta a paz interior.',
            onPressed: nextPage,
          ),
        ),
      5 => FadeTransition(
          opacity: _animation,
          child: Onboarding(
            image: MyImagesEnum.onb5.url,
            title: 'FLORES COLORIDAS',
            subtitle: 'Aprecie a beleza da natureza e sinta-se inspirado.',
            onPressed: nextPage,
          ),
        ),
      _ => const SizedBox(),
    };
  }
}
