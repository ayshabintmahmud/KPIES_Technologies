import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget image;

  const CardContent({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19.48),
        ),
        margin: const EdgeInsets.all(10.0),
        child: Container(
          width: 190,
          height: 180,
          padding: const EdgeInsets.only(
            left: 15,
            top: 13,
            bottom: 10,
            right: 2,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19.48),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF2B99FB),
                Color(0xFF372275),
              ],
              stops: [0.0171, 1.1262],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image,
              const SizedBox(height: 5.0),
              Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color(0xffFFD700),
                  fontFamily: 'Baskervville',
                  fontSize: 18.0,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Baskervville',
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
