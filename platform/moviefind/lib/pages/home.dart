import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:moviefind/values/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorBackground,
    );
  }
}
