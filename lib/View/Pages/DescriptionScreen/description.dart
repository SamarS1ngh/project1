import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simpsonsviewer/Utils/colors.dart';
import 'package:simpsonsviewer/Utils/constants.dart';
import 'package:simpsonsviewer/Utils/texts.dart';

class DescriptionPage extends StatelessWidget {
  DescriptionPage({super.key, required this.character, this.name});
  final Map? character;
  final String? name;

  @override
  Widget build(BuildContext context) {
    final String? imageLink = character!['Icon']['URL'];
    log(imageLink.toString());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.04.sw),
          child: Column(
            children: [
              Text(
                name!,
                style: AppFonts.titleText,
              ),
              imageLink == ""
                  ? Image.asset('assets/demon king.png')
                  : Image.network("$imgBaseUrl$imageLink"),
              SizedBox(
                height: 0.03.sh,
              ),
              Text(
                'Description',
                style: AppFonts.headingText
                    .copyWith(color: AppColors.primaryColor, fontSize: 24),
              ),
              Text(
                character!['Text'],
                style: AppFonts.bodyText,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
