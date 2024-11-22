import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oder_note/app/page/weather/bloc/weather_bloc.dart';
import 'package:oder_note/app/page/weather/bloc/weather_event.dart';
import 'package:oder_note/app/page/weather/bloc/weather_state.dart';
import 'package:oder_note/core/globals/logger.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({
    super.key,
    // required this.cityWeather,
    //   required this.indexx,
    //   required this.loc,
  });
  //   final cityWeather;
  //   final indexx;
  //   final loc;
  //   final response;

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  bool loading = true;

  @override
  void initState() {
    context.read<WeatherBloc>().add(const WeatherDailyEvent());
    super.initState();
    //cityWeather = widget.cityWeather;
    // _pageController = PageController(initialPage: widget.indexx);
  }

  @override
  void dispose() {
    // _scrollControllers[widget.indexx].removeListener(_scrollListener);
    //_scrollControllers[widget.indexx].dispose();
    super.dispose();
  }

  String getTime(final timeStamp) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000);
    String x = DateFormat.H().format(time);
    return x;
  }

  @override
  Widget build(BuildContext context) {
    Logger.info('build: weather');

    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        // backgroundColor: Colors.transparent,
        //resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   leading: IconButton(
        //     splashRadius: 20,
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.refresh_rounded,
        //       color: Colors.white,
        //     ),
        //   ),
        //   // title:
        //   //     BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
        //   //   return state is WeatherLoading
        //   //       ? const CupertinoActivityIndicator(color: Colors.white)
        //   //       : state is WeatherLoaded
        //   //           ? const Column(
        //   //               children: [
        //   //                 Text(
        //   //                   "aabbcc",
        //   //                 ),
        //   //               ],
        //   //             )
        //   //           : state is WeatherError
        //   //               ? Text("error")
        //   //               : const SizedBox.shrink();
        //   // }),
        //   // surfaceTintColor: Colors.transparent,
        //   // centerTitle: true,
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         //chon thanh pho
        //       },
        //       icon: const Icon(
        //         Icons.location_on,
        //         color: Colors.white,
        //       ),
        //     ),
        //   ],
        // ),
        body: BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
          return Column(
            children: [
              Flexible(
                  child: PageView.builder(
                // onPageChanged: ,
                scrollDirection: Axis.horizontal,
                //controller: _pageController,
                pageSnapping: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            // "assets/images/partly-cloudy-day.jpeg"
                            "assets/images/${state.weatherDaily!.days[0].icon}.jpeg",
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: NestedScrollView(
                      headerSliverBuilder:
                          (BuildContext context, bool innerBoxIsScrolled) {
                        return [
                          SliverAppBar(
                            // title:  Text("data"),
                            elevation: 0,
                            surfaceTintColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            pinned: true,
                            automaticallyImplyLeading: false,
                            expandedHeight: 400,
                            flexibleSpace: FlexibleSpaceBar(
                              background: SafeArea(
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 48),
                                      // child: Image(
                                      //   image:
                                      //       AssetImage("images/daytime.jpeg"),
                                      //   fit: BoxFit.none,
                                      // ),
                                    ),
                                    Text(
                                      state.weatherDaily!.resolvedAddress
                                          .toString(),
                                      // state.weatherDaily!.resolvedAddress.toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      state.weatherDaily!.days[0].temp!
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                    Text(
                                      "T:" +
                                          state.weatherDaily!.days[0].tempmin
                                              .toString() +
                                          "    " +
                                          "C:" +
                                          state.weatherDaily!.days[0].tempmax
                                              .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            centerTitle: true,
                          ),
                          // SliverOverlapAbsorber(
                          //   handle:
                          //       NestedScrollView.sliverOverlapAbsorberHandleFor(
                          //           context),
                          //   sliver: const SliverAppBar(
                          //     //title: Text("data"),
                          //     surfaceTintColor: Colors.transparent,
                          //     pinned: true,
                          //     automaticallyImplyLeading: false,
                          //     backgroundColor: Colors.transparent,
                          //   ),
                          // ),
                        ];
                      },
                      body: Padding(
                        padding: EdgeInsets.only(top: 77),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5, right: 22, left: 22),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    width: double.infinity,
                                    height: 173,
                                    child: Stack(
                                      children: [
                                        BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 10, sigmaY: 51),
                                          child: Container(
                                            height: 173,
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "24-HOURS FORECAST",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white54,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Divider(
                                                  height: 2,
                                                  color: Colors.white54,
                                                ),
                                                Flexible(
                                                    child: ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    22),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  state
                                                                      .weatherDaily!
                                                                      .days[
                                                                          index]
                                                                      .hours[
                                                                          index]
                                                                      .datetime,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                ),
                                                                // Text(getTime(state
                                                                //       .weatherDaily!
                                                                //       .days[
                                                                //           index]
                                                                //       .hours[
                                                                //           index]
                                                                //       .datetime
                                                                //      )),
                                                                Stack(
                                                                  alignment:
                                                                      AlignmentDirectional
                                                                          .bottomCenter,
                                                                  children: [
                                                                    Image(
                                                                      image:
                                                                          AssetImage(
                                                                        "assets/icons/${state.weatherDaily!.days[0].hours[index].icon}.png",
                                                                      ),
                                                                      height:
                                                                          30,
                                                                      width: 33,
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                    state
                                                                        .weatherDaily!
                                                                        .days[
                                                                            index]
                                                                        .hours[
                                                                            index]
                                                                        .temp
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w600)),
                                                              ],
                                                            ),
                                                          );
                                                        }))
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 22, vertical: 6),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                    width: double.infinity,
                                    height: 170,
                                    child: Stack(
                                      children: [
                                        BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 10, sigmaY: 51),
                                          child: Container(
                                            height: 170,
                                            padding: EdgeInsets.all(5),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "data",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white54,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                  Divider(
                                                  height: 2,
                                                  color: Colors.white54,
                                                ),
                                                Flexible(child: 
                                                loading ? Padding(padding: 
                                                const EdgeInsets.all(2),
                                                child: CupertinoActivityIndicator(),
                                                ): ListView.separated(
                                                  physics: NeverScrollableScrollPhysics(),
                                                  scrollDirection: Axis.vertical,
                                                  shrinkWrap: true,
                                                  padding: EdgeInsets.zero,
                                                  itemBuilder: (context, index){
                                                    return Column(
                                                      children: [
                                                        Container(
                                                          padding: EdgeInsets.symmetric(
                                                            
                                                          ),
                                                        )
                                                      ],
                                                    );
                                                  }, 
                                                  itemCount: state.weatherDaily!.days.length,
                                                   separatorBuilder: (BuildContext context, int index) { 
                                                   return Text("data");
                                                    },
                                                   
                                                )
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ))
            ],
          );
          // return Stack(
          //   fit:  StackFit.expand,
          //   alignment: Alignment.topCenter,
          //   children: [
          //     Image.asset(
          //        'images/daytime.jpeg',
          //       fit:  BoxFit.cover,
          //       height: double.infinity,
          //       alignment: Alignment.center,
          //       ),
          //       Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children:[
          //           Text("country"),
          //           Text("nhiet do")
          //         ]
          //       )
          //   ],
          // );
        }));
  }
}
