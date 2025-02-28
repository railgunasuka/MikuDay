import 'package:flutter/material.dart';
import '/data_schema.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';



class LocalStorageService {
  static const String _key = 'data_struct_list';

  // 保存列表
  static Future<void> saveDataList(List<DataStruct> list) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = list.map((item) => item.toJson()).toList();
    await prefs.setString(_key, jsonEncode(jsonList));
  }

  // 读取列表
  static Future<List<DataStruct>> getDataList() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_key);
    if (data == null) return [];

    try {
      // 解析 JSON 并转换为 DataStruct 列表
      final jsonList = jsonDecode(data) as List<dynamic>;
      return jsonList.map((json) => DataStruct.fromJson(json)).toList();
    } catch (e) {
      print('解析失败: $e');
      return [];
    }
  }
}




class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }



  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }


  List<int> _timelistA1 = [];
  List<int> get timelistA1 => _timelistA1;
  set timelistA1(List<int> value) {
    _timelistA1 = value;
  }
  void addToTimelistA1(int value) {
    timelistA1.add(value);
  }

  void removeFromTimelistA1(int value) {
    timelistA1.remove(value);
  }

  void removeAtIndexFromTimelistA1(int index) {
    timelistA1.removeAt(index);
  }

  void updateTimelistA1AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    timelistA1[index] = updateFn(_timelistA1[index]);
  }

  void insertAtIndexInTimelistA1(int index, int value) {
    timelistA1.insert(index, value);
  }

  List<int> _timelistA2 = [];
  List<int> get timelistA2 => _timelistA2;
  set timelistA2(List<int> value) {
    _timelistA2 = value;
  }
  void addToTimelistA2(int value) {
    timelistA2.add(value);
  }

  void removeFromTimelistA2(int value) {
    timelistA2.remove(value);
  }

  void removeAtIndexFromTimelistA2(int index) {
    timelistA2.removeAt(index);
  }

  void updateTimelistA2AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    timelistA2[index] = updateFn(_timelistA2[index]);
  }

  void insertAtIndexInTimelistA2(int index, int value) {
    timelistA2.insert(index, value);
  }

  List<int> _timelistB1 = [];
  List<int> get timelistB1 => _timelistB1;
  set timelistB1(List<int> value) {
    _timelistB1 = value;
  }
  void addToTimelistB1(int value) {
    timelistB1.add(value);
  }

  void removeFromTimelistB1(int value) {
    timelistB1.remove(value);
  }

  void removeAtIndexFromTimelistB1(int index) {
    timelistB1.removeAt(index);
  }

  void updateTimelistB1AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    timelistB1[index] = updateFn(_timelistB1[index]);
  }

  void insertAtIndexInTimelistB1(int index, int value) {
    timelistB1.insert(index, value);
  }

  List<int> _timelistB2 = [];
  List<int> get timelistB2 => _timelistB2;
  set timelistB2(List<int> value) {
    _timelistB2 = value;
  }
  void addToTimelistB2(int value) {
    timelistB2.add(value);
  }

  void removeFromTimelistB2(int value) {
    timelistB2.remove(value);
  }

  void removeAtIndexFromTimelistB2(int index) {
    timelistB2.removeAt(index);
  }

  void updateTimelistB2AtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    timelistB2[index] = updateFn(_timelistB2[index]);
  }

  void insertAtIndexInTimelistB2(int index, int value) {
    timelistB2.insert(index, value);
  }

  List<String> _line = [];
  List<String> get line => _line;
  set line(List<String> value) {
    _line = value;
  }

  void addToLine(String value) {
    line.add(value);
  }

  void removeFromLine(String value) {
    line.remove(value);
  }

  void removeAtIndexFromLine(int index) {
    line.removeAt(index);
  }

  void updateLineAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    line[index] = updateFn(_line[index]);
  }

  void insertAtIndexInLine(int index, String value) {
    line.insert(index, value);
  }

  List<Color> _color = [];
  List<Color> get color => _color;
  set color(List<Color> value) {
    _color = value;
  }

  void addToColor(Color value) {
    color.add(value);
  }

  void removeFromColor(Color value) {
    color.remove(value);
  }

  void removeAtIndexFromColor(int index) {
    color.removeAt(index);
  }

  void updateColorAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    color[index] = updateFn(_color[index]);
  }

  void insertAtIndexInColor(int index, Color value) {
    color.insert(index, value);
  }

  List<String> timescale = ['▽  00：00', '01：00', '02：00', '03：00', '04：00', '05：00', '06：00', '07：00', '08：00', '09：00', '10：00', '11：00', '12：00', '13：00', '14：00', '15：00', '16：00', '17：00', '18：00', '19：00', '20：00', '21：00', '22：00', '23：00', '△  24：00'];

  
  List<DataStruct> _main = [];
  List<DataStruct> get main => _main;


  // 初始化时加载数据
  Future<void> loadItems() async {
    _main = await LocalStorageService.getDataList();
    notifyListeners();
  }



  /* set main(List<DataStruct> value) {
    _main = value;
    
  } */

  Future<void> addToMain(DataStruct value) async {
    main.add(value);
    await LocalStorageService.saveDataList(_main);
    notifyListeners();
  }

  Future<void> removeFromMain(DataStruct value) async {
    main.remove(value);
    await LocalStorageService.saveDataList(_main);
    notifyListeners();
  }

  Future<void> removeAtIndexFromMain(int index) async {
    main.removeAt(index);
    await LocalStorageService.saveDataList(_main);
    notifyListeners();
  }

  void updateMainAtIndex(
    int index,
    DataStruct Function(DataStruct) updateFn,
  ) {
    main[index] = updateFn(_main[index]);
  }

  void insertAtIndexInMain(int index, DataStruct value) {
    main.insert(index, value);
  }




}
