import 'package:cubit/cubit/app_cubit.dart';
import 'package:cubit/widgets/app_large_text.dart';
import 'package:cubit/widgets/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + images[index]),
                    fit: BoxFit.cover)),
            child: Container(
              margin: const EdgeInsets.only(top: 150, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LargeText(
                        text: "Trip",
                        isBold: true,
                        color: Colors.white,
                      ),
                      const LargeText(
                          text: "Mountain", size: 30, color: Colors.white,),
                      const SizedBox(height: 20,),
                      Container(
                        width: 250,
                        child: const LargeText(
                          text:
                              'Mountain hikes give you an incredible sense of freedom along with endurance',
                          size: 10,
                            color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40,),
                      GestureDetector(
                          onTap: ()=>BlocProvider.of<AppCubits>(context).getData(),
                          child: Container(child: const ResponsiveButton(width: 100,)))
                    ],
                  ),
                  Column(
                    children:List.generate(3, (indexSlider) =>
                        Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: indexSlider==index?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: indexSlider==index?Colors.deepPurple:Colors.black38
                          ),
                        )
                    )
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
