import 'package:flutter/material.dart';


class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String headlineText = "Get Anything Online";
    String bodyText =
        "You can buy anything ranging from digital products to hardware with few clicks .";
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
            top: size.height * 0.3,
            left: size.width * 0.2,
            child: Image.asset(
              "assets/firstScreen.png",
            ),
          ),
          Positioned(
            top: size.height * 0.55,
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
            top: size.height * 0.6,
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
      textAlign: TextAlign.end,
    ),
  );
}
