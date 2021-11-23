import 'package:cubit/widgets/app_button.dart';
import 'package:cubit/widgets/app_large_text.dart';
import 'package:cubit/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  width: double.maxFinite,
                  height: deviceSize.height / 2,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("img/snorkling.jpg"),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              Positioned(
                  child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu,
                            size: 30, color: Colors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu,
                            size: 30, color: Colors.white)),
                  ],
                ),
              )),
              Positioned(
                top: 300,
                child: SingleChildScrollView(
                  child: Container(
                    width: deviceSize.width,
                    //height: deviceSize.height / 3,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              LargeText(
                                  text: "Yosimito",
                                  size: 20,
                                  color: Colors.black,
                                  isBold: true),
                              LargeText(
                                  text: "\$ 250", size: 20, color: Colors.grey),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.menu, color: Colors.deepPurple),
                              LargeText(
                                text: "USA Calefornia",
                                size: 15,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Wrap(
                                  children: List.generate(
                                      5,
                                      (index) => const Icon(Icons.star,
                                          size: 30,
                                          color: Colors.yellowAccent))),
                              const SizedBox(
                                width: 5,
                              ),
                              const LargeText(
                                text: ("(4)"),
                                size: 20,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const LargeText(
                            text: "People",
                            isBold: true,
                            size: 20,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const LargeText(
                              text: "number of people in your group",
                              isBold: true,
                              size: 15,
                              color: Colors.grey),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: List.generate(5, (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: AppButton(
                                    text: (index + 1).toString(),
                                    size: 60,
                                    backgroundColor: selectedIndex == index
                                        ? Colors.black
                                        : Colors.grey,
                                    borderColor: selectedIndex == index
                                        ? Colors.grey
                                        : Colors.black,
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black),
                              );
                            }),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const LargeText(
                            text: 'Description',
                            size: 20,
                            isBold: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const LargeText(
                            text:
                                'You must go for travelling. travel helps in getting rid of pressure.Go to mountains to see the nature',
                            color: Colors.grey,
                            size: 15,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      size: 60,
                      backgroundColor: Colors.grey,
                      borderColor: Colors.black,
                      color: Colors.black,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const ResponsiveButton(width: 200)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
