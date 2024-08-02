import 'package:flutter/material.dart';
import 'banner_m.dart';

import '../../../constants.dart';

class BannerMStyle1 extends StatelessWidget {
  const BannerMStyle1({
    super.key,
    this.image =
        "https://media.istockphoto.com/id/1167082956/photo/traffic-jam-near-queensboro-bridge-new-york-city.webp?b=1&s=170667a&w=0&k=20&c=2bVT2Zhr0OTZnz3dgpr1lJEybd-rGxJXc3VMXOMAvEg=",
    required this.text,
    required this.press,
  });
  final String? image;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return BannerM(
      image: image!,
      press: press,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: grandisExtendedFont,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              // const Text(
              //   "Shop now",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              const SizedBox(
                width: 64,
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ],
    );
  }
}
