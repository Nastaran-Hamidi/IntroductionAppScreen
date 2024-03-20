import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          globalBackgroundColor: Colors.blue.shade100,
          pages: [
            PageViewModel(
              title: "Hello",
              body: "Welcome to your app!",
              image:Image.asset("assets/login.png",height: 350,)
            ),
            PageViewModel(
                title: "Sign up",
                body: "Sign up & Join us!",
                image:Image.asset("assets/login2.png",height: 350)
            ),
            PageViewModel(
                title: "Login",
                body: "Do you have an account before?",
                image:Image.asset("assets/login3.png")
            ),
          ],
          onDone: ()=>print("Done!"),
          onSkip: ()=>print("Skip!"),
          skip: Text(
            "Skip",
            style: Theme.of(context).textTheme.titleMedium,
          ) ,
          done: Text(
            "Done",
            style: Theme.of(context).textTheme.titleMedium,
          ) ,
          next: Text(
            "Next",
            style: Theme.of(context).textTheme.titleMedium,
          ) ,
          showSkipButton: true,
          dotsDecorator: DotsDecorator(
            activeColor: Colors.blue.shade800,
            activeSize: const Size(20.0, 30.0),
          ),
      ),
    );
  }
}
