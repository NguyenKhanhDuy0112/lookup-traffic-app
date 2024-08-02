import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'banner_m.dart';

import '../../../constants.dart';

class BannerMStyle2 extends StatelessWidget {
  const BannerMStyle2({
    super.key,
    this.image =
        "https://images.unsplash.com/photo-1526113418551-2241c19dd635?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYWZmaWN8ZW58MHx8MHx8fDA%3D",
    required this.title,
    required this.press,
    this.subtitle,
    required this.discountParcent,
  });
  final String? image;
  final String title;
  final String? subtitle;
  final int discountParcent;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return BannerM(
      image: image!,
      press: press,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   title.toUpperCase(),
                    //   style: const TextStyle(
                    //     fontFamily: grandisExtendedFont,
                    //     fontSize: 28,
                    //     fontWeight: FontWeight.w900,
                    //     color: Colors.white,
                    //     height: 1,
                    //   ),
                    // ),
                    const SizedBox(height: defaultPadding / 4),
                    if (subtitle != null)
                      Text(
                        subtitle!.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: defaultPadding),
              SizedBox(
                height: 48,
                width: 48,
                child: ElevatedButton(
                  onPressed: press,
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/Arrow - Right.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Align(
        //   alignment: Alignment.topCenter,
        //   child: BannerDiscountTag(percentage: discountParcent),
        // ),
      ],
    );
  }
}
