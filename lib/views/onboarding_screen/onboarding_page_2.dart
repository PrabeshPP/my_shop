import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String headlineText = "On-time delivery";
    String bodyText =
        "You can track your product with out powerful tracking service";
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
          ),
          Positioned(
            top: size.height * 0.15,
            child: Image.asset(
              "assets/background.png",
              width: size.width,
            ),
          ),
          Positioned(
            top: size.height * 0.28,
            left: size.width * 0.2,
            child: Image.asset(
              "assets/thirdScreen.png",
            ),
          ),
          Positioned(
            top: size.height * 0.6,
            right: size.width * 0.1,
            child: textWidget(
              size.width * 0.6,
              headlineText,
              Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: size.height * 0.65,
            right: size.width * 0.1,
            child: textWidget(size.width * 0.8, bodyText,
                Theme.of(context).textTheme.bodyLarge!),
          ),
        ],
      ),
    );
  }
}

Widget textWidget(double width, String text, TextStyle txtStyle) {
  return SizedBox(
    width: width,
    child: Text(
      text,
      style: txtStyle,
      textDirection: TextDirection.rtl,
    ),
  );
}
