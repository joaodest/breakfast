import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends AppBar {
  CustomAppbar({super.key})
      : super(
            title: const Text(
              'Breakfast',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF7F8F8),
              ),
              child: SvgPicture.asset(
                'assets/icons/Arrow - Left 2.svg',
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
            elevation: 0.0,
            actions: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF7F8F8),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/dots.svg',
                    width: 5,
                    height: 5,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ]);
}
