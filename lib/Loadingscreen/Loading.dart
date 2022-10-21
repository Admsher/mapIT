import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _Loading();
}

class _Loading extends State<Loading> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    animation =
        CurvedAnimation(parent: controller, curve: Curves.linear);

    controller.repeat();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
               
                child: RotationTransition(
                    turns: animation,
                    child: SizedBox(
                      child: Image.asset('assets/images/Property 1=Frame 4.png'),
                    )),
              ),
            ],
          )
        ]));
  }
}
