import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoadInfo extends StatelessWidget {
  const RoadInfo({Key? key, required this.svgUrl, required this.roadInfo})
      : super(key: key);
  final String svgUrl;
  final String roadInfo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: SvgPicture.asset(
            svgUrl,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          roadInfo,
          style: const TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ],
    );
  }
}
