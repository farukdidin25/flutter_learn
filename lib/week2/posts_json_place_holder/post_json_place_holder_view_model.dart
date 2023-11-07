// ignore_for_file: unused_local_variable, empty_catches

import 'package:flutter/material.dart';
import 'package:flutter_learn/week2/posts_json_place_holder/model/post_model.dart';
import 'package:flutter_learn/week2/posts_json_place_holder/post_json_place_holder.dart';
import 'package:flutter_learn/week2/posts_json_place_holder/service/place_holder_service.dart';

abstract class PostJsonPlaceHolderViewModel extends State<PostJsonPlaceHolder>{
  bool isLoading = true;
  final PlaceHolderService placeHolderService = PlaceHolderService();
  List<PostModel?>? postItems;

  @override
  void initState() {
    super.initState();
    fetchAllDatas();
  }

  Future<void> fetchAllDatas() async {
    try {
      final response = await placeHolderService.fetchPostItems();
    postItems = response;
    }catch(e){
        
    }


    _changeLoading();
  }

  void _changeLoading(){
    setState(() {
      isLoading = !isLoading;
    });
  }

}