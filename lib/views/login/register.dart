


import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String fontFam = "GoogleFonts.poppins().fontFamily";
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
            child: Image.asset(
              "assets/background.jpg",
              fit: BoxFit.fill,
              colorBlendMode: BlendMode.luminosity,
              color: const Color.fromARGB(22, 110, 75, 0),
            ),
          ),
          Positioned(
            left: size.width * 0.1,
            top: size.height * 0.15,
            child: FittedBox(
                child: Text(
              "Welcome Back !",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: fontFam,
                  ),
            )),
          ),
          Positioned(
            top: size.height * 0.25,
            left: size.width * 0.05,
            child: Container(
              height: size.height * 0.3,
              width: size.width * 0.95,
              color: Colors.white.withOpacity(0.85),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.width*0.1),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "example@gmai.com",
                        contentPadding:EdgeInsets.all(0) 
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.width*0.1),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "password",
                        contentPadding:EdgeInsets.all(0) 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.53,
            left: size.width * 0.2,
            child: InkWell(
              onTap: (){

              },
              child: Container(
                height: size.height * 0.07,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 0, 0),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Center(
                  child: Text(
                    "Log in",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: fontFam),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: size.height * 0.05,
              left: size.width * 0.1,
              child: Row(
                children: [
                  Text(
                    "Forgot your Password ?",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: fontFam),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Reset Password",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: const Color.fromARGB(255, 80, 48, 110),
                                fontWeight: FontWeight.bold,
                                fontFamily: fontFam),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
