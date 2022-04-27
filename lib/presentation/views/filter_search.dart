import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/filter_search_builder.dart';
import 'package:ez_go_final/presentation/views/search_parameter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterSearch extends StatefulWidget {
  @override
  _FilterSearchState createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
  double _currentSliderValue = 20;
  bool isBoth = true;
  bool isAutomatic = false;
  bool isManual = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        color: Colors.white,
      ),
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
                  onTap: () {
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
            Booster.verticalSpace(15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Booster.verticalSpace(30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Booster.dynamicFontSize(
                            label: 'Price Range',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        Booster.dynamicFontSize(
                            label: 'Max MYR 0.00/Day',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ],
                    ),
                    Booster.verticalSpace(10),
                    Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100000,
                      divisions: 5,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    Booster.verticalSpace(10),
                    Booster.dynamicFontSize(
                      label: 'Transmittion',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    Booster.verticalSpace(20),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              isBoth = true;
                              isManual = false;
                              isAutomatic = false;
                              setState(() {});
                            },
                            child: Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width,
                              color: isBoth ? Colors.black : Colors.white,
                              child: Center(
                                child: Booster.dynamicFontSize(
                                  label: 'Both',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color:isBoth?Colors.white: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Booster.horizontalSpace(10),
                        Expanded(
                          child: InkWell(
                            onTap: () {isBoth = false;
                            isManual = false;
                            isAutomatic = true;
                            setState(() {});},
                            child: Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width,
                              color: isAutomatic ? Colors.black : Colors.white,
                              child: Center(
                                child: Booster.dynamicFontSize(
                                  label: 'Automatic',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color:isAutomatic?Colors.white: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Booster.horizontalSpace(10),
                        Expanded(
                          child: InkWell(
                            onTap: () {isBoth = false;
                            isManual = true;
                            isAutomatic = false;
                            setState(() {});},
                            child: Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width,
                              color: isManual ? Colors.black : Colors.white,
                              child: Center(
                                child: Booster.dynamicFontSize(
                                  label: 'Manual',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color:isManual?Colors.white: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Booster.verticalSpace(35),
                    Booster.dynamicFontSize(
                      label: 'Car Type',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    Booster.verticalSpace(35),
                    GridViewWidget(() {
                      showModalBottomSheet<void>(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10))),
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SearchParameter();
                        },
                      );
                    }),
                    Booster.verticalSpace(35),
                    AppButton(
                      onTap: () {},
                      text: 'Apply Filters',
                      color: Color(0xffF51C17),
                    ),
                    Booster.verticalSpace(35),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
