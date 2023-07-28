import 'package:breakfast/models/category_item_model.dart';
import 'package:breakfast/models/diet_item_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:breakfast/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';
import 'package:breakfast/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController controller = TextEditingController();
  List<CategoryItemModel> categories = [];
  List<DietItemModel> items = [];

  void _getInitInfo() {
    categories = CategoryItemModel.getCategories();
    items = DietItemModel.getDietItems();
  }

  @override
  Widget build(BuildContext context) {
    _getInitInfo();
    return Scaffold(
      appBar: CustomAppbar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          CustomSearchField(controller: controller),
          const SizedBox(height: 25),
          _categoriesColumn(),
          const SizedBox(height: 25),
          _dietColumn()
        ],
      ),
    );
  }

  Column _categoriesColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            "Category",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 120,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: categories[index].boxColor.withOpacity(0.3),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgPicture.asset(categories[index].icon),
                      ),
                    ),
                    Text(
                      categories[index].itemName,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
        )
      ],
    );
  }

  Column _dietColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Recommendation\nfor Diet',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.only(left: 20, right: 5),
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: ((context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: items[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(items[index].icon),
                    Text(
                      items[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${items[index].level} | ${items[index].duration} | ${items[index].calorie}",
                      style: const TextStyle(
                          color: Color(0xff7B6F72),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      width: 130,
                      height: 45,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff1D1617).withOpacity(0.11),
                            blurRadius: 40,
                            spreadRadius: 20.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [
                            items[index].viewIsSelected
                                ? const Color(0xff9DCEFF)
                                : Colors.transparent,
                            items[index].viewIsSelected
                                ? const Color(0xff92A3FD)
                                : Colors.transparent
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "View",
                          style: TextStyle(
                            color: items[index].viewIsSelected
                                ? Colors.white
                                : const Color(0xffC58BF2),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}
