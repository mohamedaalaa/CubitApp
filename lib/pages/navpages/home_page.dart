import 'package:cubit/cubit/app_cubit.dart';
import 'package:cubit/cubit/app_cubit_states.dart';
import 'package:cubit/widgets/app_large_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: BlocBuilder<AppCubits,CubitStates>(
          builder: (context,state){
            if(state is LoadedState){
              var info=state.places;
              return SafeArea(
                  child: SingleChildScrollView(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.menu),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const LargeText(
                          text: "Discover",
                          isBold: true,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: TabBar(
                            controller: _tabController,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: Colors.deepPurple,
                            indicator:
                            CircleTabIndicator(color: Colors.deepPurple, radius: 4),
                            tabs: const [
                              Tab(
                                text: "Places",
                              ),
                              Tab(text: "Inspiration"),
                              Tab(text: "Emotions"),
                            ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        width: double.maxFinite,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: TabBarView(controller: _tabController, children: [
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: info.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: (){
                                    BlocProvider.of<AppCubits>(context).detailsPage(info[index]);
                                  },
                                  child: Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+ info[index].img),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                              );
                            },
                          ),
                          Text('hi'),
                          Text('hi'),
                        ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            LargeText(
                              text: 'Explore more',
                              isBold: true,
                            ),
                            LargeText(
                              text: 'See all',
                              color: Colors.grey,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20,right: 20),
                        height: 100,
                        width: double.maxFinite,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: images1.length,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage('img/' + images1.keys.elementAt(index)),
                                              fit: BoxFit.cover)),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    LargeText(
                                      text:images1.values.elementAt(index),
                                      size: 16,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              );
                            }),
                      )
                    ]),
                  ));
            }else{
              return Container();
            }
          },
        )
    );
  }
}
