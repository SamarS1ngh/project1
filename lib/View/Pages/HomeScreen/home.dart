import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simpsonsviewer/Utils/colors.dart';
import 'package:simpsonsviewer/Utils/texts.dart';
import 'package:simpsonsviewer/ViewModel/Provider/home_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    log('inititating call');
    Provider.of<CharacterListProvider>(context, listen: false).simpsonsData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'The Simpsons',
              style: AppFonts.titleText,
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 0.05.sh,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.accentColor,
                        borderRadius: BorderRadius.circular(0.02.sw)),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0.01.sh),
                          prefixIcon: const Icon(Icons.search),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.textSecondary)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.02.sw)),
                          hintText: 'Search ...',
                          hintStyle: AppFonts.subTitles),
                    ),
                  ),
                  Consumer<CharacterListProvider>(
                    builder: (context, characterListProvider, child) {
                      final list = characterListProvider.list;
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: list!.length,
                        itemBuilder: (context, index) {
                          return const Card(
                            color: AppColors.errorColor,
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            )),
          )),
    );
  }
}
