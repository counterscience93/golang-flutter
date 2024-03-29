import 'package:flutter/material.dart';
import 'package:flutter_provider_example/sign_up_view.dart';
import 'package:flutter_provider_example/signin_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (_) => SignInView(),
        '/signup': (_) => SignUpView(),
      },
    );
  }
}
