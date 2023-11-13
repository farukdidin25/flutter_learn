import '../core/base/base_statefull.dart';
import 'food_card.dart';
import 'model/food_model.dart';

abstract class FoodCardViewModel extends BaseStatefull<FoodCard> {
  late final List<FoodModel> foodItemList;

  @override
  void initState() {
    super.initState();
    foodItemList = [
      FoodModel('Broccoli', imageConstants.broccoli, '10'),
      FoodModel('Kale', imageConstants.kale, '12'),
      FoodModel('Red Peppers', imageConstants.pepper, '11'),
      FoodModel('Strow Berries', imageConstants.strawBerry, '13'),
    ];
  }
}