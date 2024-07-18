import 'package:flutter/material.dart';
import 'package:rental_house_ui/constants.dart';
import 'package:rental_house_ui/model/house.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedItems = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedItems = index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 3,
                      color: selectedItems == index
                          ? primaryColor
                          : Colors.transparent,
                    ),
                  ),
                ),
                child: Text(
                  categoryList[index],
                  style: TextStyle(
                    color:
                        selectedItems == index ? primaryColor : bodyTextColor,
                    fontWeight: selectedItems == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: selectedItems == index ? 16 : 14,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
