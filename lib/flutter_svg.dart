// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_potd/resources/app_svg.dart';

class FlutterSvgPage extends StatelessWidget {
  const FlutterSvgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          contentTile(
              title: 'SVG Assets',
              description:
                  'You can use svg from assets that you download previously. note : set them to pubspec.yaml before use it',
              svgAssets: [
                // This is the way you use SvgPicture Asset
                SvgPicture.asset(AppSvg.home),
                SvgPicture.asset(AppSvg.profile, )
              ]),
          const Divider(
            height: 10,
            color: Colors.transparent,
            thickness: 0,
          ),
          contentTile(
              title: 'SVG Network',
              description:
                  'You can use svg from network that you get from network/api.',
              svgAssets: [
                // This is the way you use SvgPicture Network
                SvgPicture.network(
                  AppSvg.network,
                  // You can set width and height in here
                  width: 20,
                  height: 20,
                ),
              ]),
          const Divider(
            height: 10,
            color: Colors.transparent,
            thickness: 0,
          ),
          contentTile(
              title: 'SVG String',
              description: 'You can use svg from string of the svg value',
              svgAssets: [
                // This is the way you use SvgPicture Network
                SvgPicture.string(
                  AppSvg.stringSvg,
                  // You can set width and height in here
                  width: 20,
                  height: 20,
                ),
              ]),
        ],
      ),
    );
  }

  Widget contentTile({
    String? title,
    String? description,
    List<Widget>? svgAssets,
  }) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade400, width: 2)),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.grey.shade200,
        title: Text(
          title!,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        subtitle: Container(
            margin: const EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.centerLeft,
            child: Row(
              children: svgAssets!,
            )),
        textColor: Colors.black,
        iconColor: Colors.black,
        collapsedIconColor: Colors.black,
        collapsedTextColor: Colors.black,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              description!,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}
