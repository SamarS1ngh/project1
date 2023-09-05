import 'package:simpsonsviewer/Utils/Routes/app_router_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simpsonsviewer/Utils/colors.dart';
import 'package:simpsonsviewer/Utils/texts.dart';
import 'package:simpsonsviewer/ViewModel/Provider/someclass.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => SomeClass(),
      )
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
            routerConfig: AppRouter().router,
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(),
    );
  }
}
