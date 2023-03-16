import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/food.dart';
import '../utils/constants.dart';
import '../widgets/ingredient.dart';
import '../widgets/nutrition_builder.dart';
import '../widgets/recipe.dart';
import '../widgets/text_with_icon.dart';
import 'image_page.dart';

class RecipePage extends StatefulWidget {
  final Food food;

  const RecipePage({required this.food, Key? key}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late Size size;
  late Food food;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    food = widget.food;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: FloatingActionButton(
          mini: true,
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back),
        ),
        body: Stack(
          children: [
            imageBuilder,
            Positioned(
              top: size.height * 0.35,
              child: Container(
                width: size.width,
                height: size.height * 0.60,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(mediumRadius),
                    topLeft: Radius.circular(mediumRadius),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleBuilder(),
                    durationAndRate(),
                    buildTabBar(),
                    Expanded(child: buildTabBarView())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget get imageBuilder => Positioned(
        top: 0,
        child: InkWell(
          key: ValueKey(food.id),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ImagePage(
                  id: food.id,
                  image: food.image,
                  title: food.title,
                ),
              ),
            );
          },
          child: Hero(
            tag: food.id,
            child: Image.asset(
              food.image,
              fit: BoxFit.fill,
              // width: size.width,
              height: size.height * 0.4,
            ),
          ),
        ),
      );

  Widget buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        Ingredient(ingredientList: food.ingredients),
        Recipe(recipeList: food.recipes),
        NutritionBuilder(nutritionList: food.nutrition),
      ],
    );
  }

  Widget buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: const [
        Tab(icon: Icon(FontAwesomeIcons.receipt, size: mediumIcon)),
        Tab(icon: Icon(FontAwesomeIcons.fire, size: mediumIcon)),
        Tab(icon: Icon(FontAwesomeIcons.nutritionix, size: mediumIcon)),
      ],
    );
  }

  Widget durationAndRate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextWithIcon(title: food.duration, icon: durationIcon),
        TextWithIcon(title: food.rate.toString(), icon: rateIcon),
      ],
    );
  }

  Widget titleBuilder() {
    return Padding(
      padding: const EdgeInsets.all(largePadding),
      child: Text(
        food.title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
