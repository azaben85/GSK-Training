import 'package:easy_localization/easy_localization.dart';
import 'package:firstproject/home_screen.dart';
import 'package:firstproject/navigation/page1.dart';
import 'package:firstproject/navigation/page2.dart';
import 'package:firstproject/navigation/page3.dart';
import 'package:firstproject/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en'),
      child: const AppInit()));
}

class AppInit extends StatelessWidget {
  const AppInit({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        // minTextAdapt: true,
        //splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: AppRouter.navgiationKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            // home: const HomeScreen(),
            routes: {
              '/': (context) => const HomeScreen(), // '/' means home
              'page1': (context) => Page1(),
              'page2': (context) => Page2(''),
              'page3': (context) => Page3('')
            },
            onGenerateRoute: (settings) {
              String routName = settings.name ?? '';
              dynamic routArgs = settings.arguments;
              switch (routName) {
                case 'screen':
                  return MaterialPageRoute(
                    builder: (context) {
                      return Page2(
                        'NO Data',
                      );
                    },
                  );
              }
            },
            onUnknownRoute: (settings) {
              return MaterialPageRoute(
                builder: (context) {
                  return const Scaffold(
                    backgroundColor: Colors.red,
                    body: Center(child: Text('No Page Found')),
                  );
                },
              );
            },
          );
        });
  }
}

class MyFirstUI extends StatelessWidget {
  Map<String, dynamic> personData = {
    'name': 'Omar',
    'city': 'Nablue',
    'age': 10,
    'isMale': true
  };

  List<Map<String, dynamic>> students = [
    {'name': 'Ahmad', 'age': 50, 'city': 'Nablus'},
    {'name': 'Hazem', 'age': 33, 'city': 'Nablus'},
    {'name': 'Nizar', 'age': 22, 'city': 'Nablus'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First APP'),
      ),
      body: Center(
        child: Column(
          children: students.map((e) {
            return Column(
              children: e.keys.map((key) {
                return Row(children: [
                  Text('$key:'),
                  Text('${personData[key]}'),
                ]);
              }).toList(),
            );
          }).toList(),

          /*personData.keys.map((key) {
            return Row(children: [
              Text('$key:'),
              Text('${personData[key]}'),
            ]);
          }).toList(),
          */
        ),
      ),
    );
  }
}
