import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../screens/menu_screen.dart';
import '../widgets/road_info.dart';
import '../core/constants.dart';
import 'package:flutter_svg/svg.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
  static const String routeName = '/search';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late GoogleMapController _googleMapController;
  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  static const _initialCameraPosition =
      CameraPosition(target: LatLng(41.3321343, 69.3115812), zoom: 11.5);

  int index = 1;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.black, fontSize: 17.0);
    final appBar = AppBar(
      elevation: 0.0,
      backgroundColor: AppConstants.bgColor,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MenuScreen.routeName);
        },
        icon: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            'assets/icons/listmenu_icon.svg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      centerTitle: true,
      title: const Text(
        'Alaska',
        textAlign: TextAlign.center,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ),
      ],
    );
    final mediaQuery = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppConstants.bgColor,
      systemNavigationBarColor: AppConstants.appBarBgColor,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: appBar,
      body: Container(
        color: AppConstants.bgColor,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: SizedBox(
                width: mediaQuery.size.width -
                    mediaQuery.padding.left -
                    mediaQuery.padding.right,
                height: mediaQuery.size.height -
                    appBar.preferredSize.height -
                    mediaQuery.padding.top -
                    mediaQuery.padding.bottom,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _initialCameraPosition,
                    onMapCreated: (controller) =>
                        _googleMapController = controller,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: buildTextFields(context, textStyle),
            ),
            // Positioned(
            //   bottom: 0,
            //   child: buildBottomModalSheet(mediaQuery),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFields(BuildContext context, TextStyle textStyle) =>
      Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
        child: Column(
          children: [
            TextField(
              style: textStyle,
              decoration: InputDecoration(
                hintText: 'Goethe St Road',
                prefixIcon: Container(
                  width: 40,
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/location_icon.svg',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: 2,
                        height: 14,
                        color: const Color(0XffEDEDF6),
                      ),
                    ],
                  ),
                ),
                suffixIcon: const Icon(Icons.add),
                contentPadding: const EdgeInsets.all(10),
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: textStyle,
              decoration: InputDecoration(
                hintText: 'Where to go?',
                prefixIcon: Container(
                  width: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/navigation_icon.svg',
                        fit: BoxFit.cover,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 0,
                        ),
                        width: 2,
                        height: 14,
                        color: const Color(0XffEDEDF6),
                      ),
                    ],
                  ),
                ),
                contentPadding: const EdgeInsets.all(10.0),
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget buildBottomModalSheet(MediaQueryData mediaQuery) {
    return Container(
      height: mediaQuery.size.height * 0.25,
      width: mediaQuery.size.width,
      decoration: const BoxDecoration(
        color: AppConstants.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 14),
                child: SvgPicture.asset(
                  'assets/icons/car_icon.svg',
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  color: AppConstants.bgColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                color: const Color(0Xff282F62),
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                child: SvgPicture.asset(
                  'assets/icons/motorbike.svg',
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const RoadInfo(
                roadInfo: '34 km',
                svgUrl: 'assets/icons/geolocation_icon.svg',
              ),
              const RoadInfo(
                roadInfo: '1h30m',
                svgUrl: 'assets/icons/clock_icon.svg',
              ),
              const RoadInfo(
                roadInfo: '\$45.20',
                svgUrl: 'assets/icons/hand_holding_money_icon.svg',
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            width: double.infinity,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.white),
                  padding: MaterialStateProperty.resolveWith(
                    (states) => const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'REQUEST FOR TAXI',
                  style: TextStyle(color: AppConstants.bgColor, fontSize: 17.0),
                )),
          )
        ],
      ),
    );
  }
}
