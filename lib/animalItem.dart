import 'package:flutter/material.dart';

class Animal{
  String imagePath; //이미지경로
  String lengthName;//동물이름
  String kind; //종류
  bool flyExist = false; //날수있냐

  Animal({
      @required this.lengthName,
      @required this.kind,
      @required this.imagePath,
      this.flyExist
  });

}