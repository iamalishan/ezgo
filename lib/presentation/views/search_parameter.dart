import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class SearchParameter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF1F1F1),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Booster.verticalSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Booster.dynamicFontSize(
                    label: 'Reset',
                    fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black),
                Booster.dynamicFontSize(
                    label: 'Add Filters',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Booster.dynamicFontSize(
                      label: 'Close',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            Booster.verticalSpace(15),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                    height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Color(0xff707070),
                      width: 1
                    ),
                    color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Alfa Remeo',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Aston Martin',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Audi',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'BMW',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Bentley',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'CAM',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Chery',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Chervrolet',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(10),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: Color(0xff707070),
                          width: 1
                      ),
                      color: Colors.white
                  ),
                ),
                Booster.horizontalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Daihatsu',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ],
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
          ],
        ),
      ),
    );
  }
}
