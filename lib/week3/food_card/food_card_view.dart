// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_learn/week3/core/localizate/application_strings.dart';
import 'package:flutter_learn/week3/core/widgets/card/food_card.dart';
import 'package:flutter_learn/week3/core/widgets/wrap/icon_text.dart';
import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildPadding(context),
    );
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: insetsAll,
      child: buildColumnBody(context),
    );
  }

  Column buildColumnBody(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 4, child: buildListViewFoodList()),
        Spacer(),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(child: buildRowSubTotal()),
                Expanded(child: buildRowDelivery()),
                Expanded(flex: 2, child: buildRowTotal()),
                Spacer()
              ],
            )),
        Expanded(child: buildElevatedCheckOutButton(context)),
      ],
    );
  }

  ListView buildListViewFoodList() {
    return ListView.builder(
        itemCount: foodItemList.length,
        itemBuilder: (context, index) =>
            FoodCardWidget(model: foodItemList[index]));
  }

  Row buildRowSubTotal() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildTextSubTitle(applicationStrings.subTotal),
          Text('\$09.30')
        ],
      );

  Row buildRowDelivery() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildTextSubTitle(applicationStrings.delivery),
          Text('data')
        ],
      );

  Row buildRowTotal() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            applicationStrings.total,
            style: textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            '\$09.30',
            style: textTheme.headline5,
          )
        ],
      );

  Text buildTextSubTitle(String title) => Text(
        title,
        style: textTheme.bodyText1!.copyWith(color: colorScheme.onPrimary),
      );

  ElevatedButton buildElevatedCheckOutButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Theme.of(context).hintColor),
            shape: MaterialStateProperty.all(StadiumBorder())),
        child: Center(
          child: buildWrapIconText(),
        ));
  }

  Widget buildWrapIconText() {
    return IconTextWidget(
        title: applicationStrings.checkOut,
        icon: Icons.arrow_right_alt_outlined);
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Center(
          child: Text(
        ApplicationStrings.instance.cartTitle,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Theme.of(context).colorScheme.onPrimary),
      )),
    );
  }
}
