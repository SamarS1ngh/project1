import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import 'package:simpsonsviewer/Utils/colors.dart';
import 'package:simpsonsviewer/Utils/texts.dart';
import 'package:simpsonsviewer/View/Widgets/character_list.dart';
import 'package:simpsonsviewer/View/Widgets/searchList.dart';
import 'package:simpsonsviewer/ViewModel/Provider/home_provider.dart';
import 'package:simpsonsviewer/ViewModel/Provider/search_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  List<String> names = [];

  List<String> temp = [];

  @override
  void initState() {
    super.initState();
    log('inititating call');
    Provider.of<CharacterListProvider>(context, listen: false).simpsonsData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<String> func(String keyword) {
    if (keyword.isEmpty) {
      setState(() {
        temp = names;
      });
    } else {
      setState(() {
        temp = names
            .where((element) =>
                element.toLowerCase().contains(keyword.toLowerCase()))
            .toList();
      });
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'The Simpsons',
              style: AppFonts.titleText,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Consumer<CharacterListProvider>(
                    builder: (context, characterListProvider, child) {
                      final list = characterListProvider.list;
                      if (list != null) {
                        names =
                            SearchProvider(characterListProvider).getNames();
                        return Container(
                          height: orientation == Orientation.portrait
                              ? 0.05.sh
                              : 0.06.sw,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.accentColor,
                              borderRadius: BorderRadius.circular(0.02.sw)),
                          child: TextField(
                            onChanged: (value) => func(value),
                            controller: _searchController,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 0.01.sh),
                                prefixIcon: const Icon(Icons.search),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.textSecondary)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(0.02.sw)),
                                hintText: 'Search ...',
                                hintStyle: AppFonts.subTitles,
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      _searchController.clear();
                                      setState(() {
                                        temp = [];
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.cancel,
                                    ))),
                          ),
                        );
                      } else {
                        return const CircularProgressIndicator(
                          color: Colors.black,
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: 0.03.sh,
                  ),
                  temp.isEmpty
                      ? CharacterListWidget()
                      : SearchListWidget(
                          names: names,
                          temp: temp,
                        )
                ],
              ),
            ),
          )),
    );
  }
}
