// ignore_for_file: prefer_const_constructors

import 'package:locavel/models/bookmark.dart';
import 'package:locavel/services/bookmark_service.dart';
import 'package:flutter/material.dart';
import 'package:locavel/models/destination.dart';
import 'package:locavel/services/destination_service.dart';
import 'package:locavel/widgets/recommended_destination.dart';
import 'package:locavel/widgets/searchbar.dart';
import 'package:locavel/widgets/top_destination.dart';
import 'package:locavel/screens/details.dart';
import 'package:locavel/widgets/bookmark_destination.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locavel/services/places_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DestinationService destinationService = DestinationService();
  BookmarkService bookmarkService = BookmarkService();
  Places placesService = Places();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: buildTabBar(context),
          body: buildTabBarView(context),
        ),
      ),
    );
  }

  TabBarView buildTabBarView(BuildContext context) {
    return TabBarView(
      children: [
        SingleChildScrollView(
          child: Container(
            color: const Color(0xfff6f8fb),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  buildProfileWidget(),
                  buildSearchWidget(),
                  // buildPlacesWidget(),
                  buildRecommendedWidget(),
                  buildTopWidget(),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: const Color(0xfff6f8fb),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                buildWilayah(),
              ],
            ),
          ),
        ),
        Container(
          color: const Color(0xfff6f8fb),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                buildBookMarkWidget(),
              ],
            ),
          ),
        ),
        Container(
          color: const Color(0xfff6f8fb),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                buildHeaderProfileWidget(),
                buildAboutUSWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTabBar(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: const TabBar(
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.map,
              size: 30.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.bookmark,
              size: 30.0,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.person,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileWidget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage('images/profile.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Selamat Datang',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'RockoFLF',
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      'Bagas Alfito',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RockoFLF Bold',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              const Icon(
                Icons.notifications,
                size: 30,
                color: Colors.grey,
              ),
              Positioned(
                top: 1,
                right: 3,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSearchWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          const Expanded(
            child: SearchBar(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.blue,
              ),
              width: 48,
              height: 48,
              child: const Icon(
                Icons.settings_input_component,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget buildPlacesWidget() {
  //   List placesList = placesService.placesList;

  //   return Padding(
  //     padding: const EdgeInsets.only(top: 10, bottom: 10),
  //     child: Column(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.symmetric(
  //             vertical: 6.0,
  //           ),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             crossAxisAlignment: CrossAxisAlignment.end,
  //             children: const [
  //               Expanded(
  //                 child: Text(
  //                   'Rekomendasi',
  //                   style: TextStyle(
  //                     color: Colors.black,
  //                     fontFamily: 'RockoFLF Bold',
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 24,
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: EdgeInsets.only(
  //                   left: 10.0,
  //                 ),
  //                 child: Icon(
  //                   Icons.more_horiz,
  //                   color: Colors.grey,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         SizedBox(
  //           height: 260.0,
  //           child: Padding(
  //             padding: const EdgeInsets.only(top: 12.0),
  //             child: ListView.builder(
  //               scrollDirection: Axis.horizontal,
  //               itemCount: placesList.length,
  //               itemBuilder: (BuildContext context, int index) {
  //                 final Destination destination = placesList[index];
  //                 return GestureDetector(
  //                   onTap: () {
  //                     Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                         builder: (context) =>
  //                             Details(destination: destination),
  //                       ),
  //                     );
  //                   },
  //                   child: Padding(
  //                     padding: const EdgeInsets.only(
  //                       right: 20.0,
  //                     ),
  //                     child: RecommendedDestination(
  //                       destination: destination,
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  ///////////////////////// REKOMENDASI ///////////////////////////
  Widget buildRecommendedWidget() {
    List recommendedDestinations = destinationService.recommendedDestinations;

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 6.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Expanded(
                  child: Text(
                    'Rekomendasi',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RockoFLF Bold',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 260.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendedDestinations.length,
                itemBuilder: (BuildContext context, int index) {
                  final Destination destination =
                      recommendedDestinations[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Details(destination: destination),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 20.0,
                      ),
                      child: RecommendedDestination(
                        destination: destination,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTopWidget() {
    List topDestinations = destinationService.topDestinations;
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Expanded(
                    child: Text(
                      'Paling Populer',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RockoFLF Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topDestinations.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Destination destination = topDestinations[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Details(destination: destination),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 20.0,
                        ),
                        child: TopDestination(
                          destination: destination,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }

  Widget buildAboutUSWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 6.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 12.0,
            bottom: 12.0,
          ),
          child: Text(
            'Nama :\nBagas Alfito Prismawan\n\nEmail  :\nbagas@student.telkomuniversity.ac.id\n\nAsal    :\nDKI Jakarta',
            style: TextStyle(
              color: Colors.black54,
              fontFamily: 'RockoFLF',
              fontWeight: FontWeight.bold,
              fontSize: 17,
              height: 2,
            ),
          ),
        ),
      ],
    );
  }

  ////////////////////////ISI ABOUT US////////////////////////////////////////////////////////////////
  Widget buildHeaderProfileWidget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  bottom: 50.0,
                ),
                child: Text(
                  'Profile',
                  style: const TextStyle(
                    color: Colors.black87,
                    fontFamily: 'RockoFLF',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/profile.png'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color: Colors.blueAccent.withOpacity(.2), width: 1)),
              ),
            ],
          ),
        ],
      ),
    );
  }

//////////////////////////////// BOOKMARK ///////////////////////////////////
  Widget buildBookMarkWidget() {
    List bookmarkedDestination = bookmarkService.bookmarkedDestination;
    return Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Wisata Favorit Anda',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RockoFLF Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.71,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  physics: BouncingScrollPhysics(),
                  itemCount: bookmarkedDestination.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Bookmark bookwidgetdestination =
                        bookmarkedDestination[index];
                    return GestureDetector(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => BookMarkPage(anjing: anjing),
                      //     ),
                      //   );
                      // },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20.0,
                        ),
                        child: BookMarkPage(
                          bookwidget: bookwidgetdestination,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }

  ///////////////////////////////// WILAYAH ///////////////////////////////////
  Widget buildWilayah() {
    final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(-6.9741757, 107.6302268),
      zoom: 13.4746,
    );

    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Expanded(
                    child: Text(
                      'Wisata Berdasarkan Wilayah',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'RockoFLF Bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Icon(
                      Icons.add_location_alt,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                ),
              ),
            ),
          ],
        ));
  }
}
