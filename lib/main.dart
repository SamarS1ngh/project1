import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:simpsonsviewer/ViewModel/Provider/home_provider.dart';
import 'package:simpsonsviewer/ViewModel/Provider/search_provider.dart';

import 'Utils/Colors.dart';
import 'Utils/Routes/app_router_config.dart';
import 'Utils/texts.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CharacterListProvider(),
      ),
      ChangeNotifierProxyProvider<CharacterListProvider, SearchProvider>(
          create: (context) => SearchProvider(
              Provider.of<CharacterListProvider>(context, listen: false)),
          update: (_, characterListProvider, __) =>
              SearchProvider(characterListProvider))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return ScreenUtilInit(
        designSize: Size(width, height),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.router,
            theme: ThemeData(
              colorScheme: const ColorScheme.dark(
                background: AppColors.backgroundColor,
                error: AppColors.errorColor,
                brightness: Brightness.dark,
                primary: AppColors.primaryColor,
                secondary: AppColors.accentColor,
              ),
              appBarTheme: AppBarTheme(
                  titleTextStyle: AppFonts.titleText,
                  iconTheme: const IconThemeData(
                      color: AppColors.primaryColor, size: 27),
                  backgroundColor: AppColors.backgroundColor,
                  elevation: .5,
                  actionsIconTheme: const IconThemeData(
                    color: Colors.white,
                    size: 27,
                  )),
              useMaterial3: true,
            ),
          );
        });
  }
}
