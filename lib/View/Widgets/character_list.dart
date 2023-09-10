import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:simpsonsviewer/Utils/Routes/app_route_constants.dart';

import '../../Utils/texts.dart';
import '../../ViewModel/Provider/home_provider.dart';

class CharacterListWidget extends StatelessWidget {
  CharacterListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String getName(String text) {
      List<String> parts = text.split('-');
      if (parts.isNotEmpty) {
        return parts[0].trim();
      } else {
        return "";
      }
    }

    return Consumer<CharacterListProvider>(
      builder: (context, characterListProvider, child) {
        final list = characterListProvider.list;

        return list == null
            ? const CircularProgressIndicator()
            : Expanded(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    final name = getName(list[index].text);

                    final char = list[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          context.pushNamed(
                              AppRouteConsts.descriptionPageRouteName,
                              pathParameters: {
                                'character': jsonEncode(char),
                                'name': name
                              });
                        },
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.02.sh, horizontal: 0.02.sw),
                            color: const Color.fromARGB(255, 18, 18, 18),
                            width: 1.sw,
                            height: 0.1.sh,
                            child: Center(
                              child: Text(
                                name,
                                style: AppFonts.subTitles.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
      },
    );
  }
}
