// ignore_for_file: file_names

import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:simpsonsviewer/ViewModel/Provider/home_provider.dart';

import '../../Utils/Routes/app_route_constants.dart';
import '../../Utils/texts.dart';

class SearchListWidget extends StatefulWidget {
  final List temp, names;

  const SearchListWidget({super.key, required this.temp, required this.names});

  @override
  State<SearchListWidget> createState() => _SearchListWidgetState();
}

class _SearchListWidgetState extends State<SearchListWidget> {
  @override
  Widget build(BuildContext context) {
    final names = widget.names;
    final temp = widget.temp;
    var orientation = MediaQuery.of(context).orientation;
    final list =
        Provider.of<CharacterListProvider>(context, listen: false).list;
    return Expanded(
      child: ListView.builder(
        itemCount: temp.length,
        itemBuilder: (context, index) {
          var name = names[index];
          return InkWell(
            onTap: () {
              context.pushNamed(AppRouteConsts.descriptionPageRouteName,
                  pathParameters: {
                    'character': jsonEncode(list![index]),
                    'name': name
                  });
            },
            child: Card(
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 0.02.sh, horizontal: 0.02.sw),
                color: const Color.fromARGB(255, 18, 18, 18),
                width: 1.sw,
                height: orientation == Orientation.portrait ? 0.1.sh : 0.1.sw,
                child: Center(
                  child: Text(
                    temp[index],
                    style: AppFonts.subTitles.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
