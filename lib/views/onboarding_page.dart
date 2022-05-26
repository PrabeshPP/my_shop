import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shop/view_model/cubit/page_cubit.dart';
import 'package:my_shop/views/onboarding_screen/onboarding_page_1.dart';
import 'package:my_shop/views/onboarding_screen/onboarding_page_2.dart';
import 'package:my_shop/views/onboarding_screen/onboarding_page_3.dart';

class OnBoardinPage extends StatelessWidget {
  const OnBoardinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [const Page1(), const Page2(), const Page3()];
    final PageController controller = PageController();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
        ),
        body: BlocBuilder<PageCubit, PageState>(
          builder: (context, state) {
            return Stack(
              children: [
                ScrollConfiguration(
                  //to remove the glowing effect while scrolling
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: PageView(
                      pageSnapping: true,
                      onPageChanged: (value) {
                        context
                            .read<PageCubit>()
                            .onPageChange(pageNumber: value + 1);
                      },
                      controller: controller,
                      children: list),
                ),
                Positioned(
                  top: size.height * 0.85,
                  child: SizedBox(
                    width: size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicators(list.length, state.pageNumber, size),
                    ),
                  ),
                ),
                Positioned(
                  bottom: size.height * 0.03,
                  left: size.width * 0.02,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black),
                      )),
                ),
                Positioned(
                  bottom: size.height * 0.03,
                  right: size.width * 0.02,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Next",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.black),
                      )),
                )
              ],
            );
          },
        ));
  }
}

List<Widget> indicators(pageLength, currentIndex, Size size) {
  return List<Widget>.generate(pageLength, (index) {
    return Container(
      width: size.width * 0.06,
      height: size.height * 0.02,
      decoration: BoxDecoration(
          color: currentIndex == index + 1 ? Colors.red : Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(width: 2.0, color: Colors.red)),
    );
  });
}
