import 'package:attendance_app/features/auth/view/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: const BoxDecoration(
                    color: Color(0xff111B32),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(150.0),
                        bottomRight: Radius.circular(150.0))),
                alignment: Alignment.bottomCenter,
              ),
            ),
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: const Icon(
                Icons.energy_savings_leaf,
                size: 100,
                color: Colors.indigo,
              ),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Text("Attendance",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          Text("A platform built for new way of working",
              style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.55,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(
                    builder: (BuildContext context) => const LoginScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(15.0)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                elevation: MaterialStateProperty.all<double>(5.0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Login Now',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
