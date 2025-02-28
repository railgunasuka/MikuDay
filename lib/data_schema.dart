import 'package:flutter/material.dart';
class DataStruct {
  // 四个整数数列
  final List<int> ta1;
  final List<int> ta2;
  final List<int> tb1;
  final List<int> tb2;

  // 字符串数列
  final List<String> sTline;

  // 颜色数列
  final List<Color> cOcolor;

  // 单个字符串
  final String name;

  // 构造函数
  DataStruct({
    required this.ta1,
    required this.ta2,
    required this.tb1,
    required this.tb2,
    required this.sTline,
    required this.cOcolor,
    required this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'ta1': ta1,
      'ta2': ta2,
      'tb1': tb1,
      'tb2': tb2,
      'sTline': sTline,
      // 将Color转换为ARGB整数值
      'cOcolor': cOcolor.map((color) => color.toARGB32()).toList(),
      'name': name,
    };
  }

  // 对应的反序列化方法
  factory DataStruct.fromJson(Map<String, dynamic> json) {
    return DataStruct(
      ta1: List<int>.from(json['ta1']),
      ta2: List<int>.from(json['ta2']),
      tb1: List<int>.from(json['tb1']),
      tb2: List<int>.from(json['tb2']),
      sTline: List<String>.from(json['sTline']),
      cOcolor: List<Color>.from(
        (json['cOcolor'] as List).map((v) => Color(v as int))
      ),
      name: json['name'] as String,
    );
  }


  /* @override
  String toString() {
    return '''
    DataStruct(
      ta1: $ta1,
      ta2: $ta2,
      tb1: $tb1,
      tb2: $tb2,
      sTline: $sTline,
      cOcolor: $cOcolor,
      name: $name,
    )
    '''; 
  } */




}