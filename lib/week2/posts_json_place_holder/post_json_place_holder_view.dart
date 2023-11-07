// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_learn/week2/core/component/card/post_card.dart';
import 'package:flutter_learn/week2/posts_json_place_holder/post_json_place_holder_view_model.dart';

class PostJsonPlaceHolderView extends PostJsonPlaceHolderViewModel {
  final String title = "JSON Place Holder";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: isLoading
          ? Center(child: LinearProgressIndicator())
          : buildListView(),
    );
  }

  ListView buildListView() {
    return ListView.builder(
            itemCount: postItems?.length ?? 0,
            itemBuilder: (context, index) => PostCard(model: postItems![index]),);
  }

  AppBar buildAppBar(BuildContext context) => AppBar(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Theme.of(context).colorScheme.surface),
        ),
      );
}
