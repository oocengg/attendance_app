import 'package:attendance_app/features/auth/provider/login_provider.dart';
import 'package:attendance_app/features/auth/provider/shared_preferences_provider.dart';
import 'package:attendance_app/features/auth/provider/validator_auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:attendance_app/features/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ValidatorProvider()),
        ChangeNotifierProvider(create: (context) => LoginProvider()),
        ChangeNotifierProvider(create: (context) => SharedPreferencesProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Attendance Report App',
        home: const SplashScreen(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ).apply(
            bodyColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
