import 'package:flutter/material.dart';
import 'package:onboarding_fade/src/core/text_app.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key,
    required this.title,
    this.subtitle,
    required this.image,
    required this.onPressed,
  });
  final String title;
  final String? subtitle;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      style: TextApp.title,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      subtitle ?? '',
                      style: TextApp.subtitle,
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Spacer(),
                        TextButton(
                            onPressed: onPressed,
                            child: Text(
                              'Proximo',
                              style: TextApp.link.copyWith(color: Colors.amber),
                            ))
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
