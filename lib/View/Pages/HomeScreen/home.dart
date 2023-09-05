import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simpsonsviewer/Utils/colors.dart';
import 'package:simpsonsviewer/Utils/texts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            centerTitle: true,
            floating: true,
            title: Text(
              'The Simpsons',
              style: AppFonts.titleText,
            ),
            bottom: AppBar(
              title: Container(
                height: 0.05.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(0.02.sw)),
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 0.01.sh),
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
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [],
                ),
              ),
            ),
          ]))
        ]),
      ),
    );
  }
}
