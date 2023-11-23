import 'dart:convert';

Shopping shoppingFromData(String data) => Shopping.fromJson(jsonDecode(data));

String shoppingToData(Shopping shopping) => jsonEncode(shopping.toJson());

class Shopping{

  late String productName;
  late int cost;
  late String category;
  late Details details;
  late Type type;

  Shopping.fromJson(Map<String, dynamic> json){
    productName = json["productName"];
    cost = json["cost"];
    category = json["category"];
    details = Details.fromJson(json["details"]);
    type = Type.fromJson(json["type"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "productName": productName,
      "cost": cost,
      "category": category,
      "details": details,
      "type": type
    };
    return map;
  }

  @override
  String toString() {
    return "Product name: $productName \nCost: $cost \nCategory: $category \nDetails: \n{\n$details\n} \nType: \n{\n$type\n}";
  }

}

class Details{

  late String color;
  late int weight;
  late Dimensions dimensions;

  Details.fromJson(Map<String, dynamic> json){
    color = json["color"];
    weight = json["weight"];
    dimensions = Dimensions.fromJson(json["dimensions"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "color": color,
      "weight": weight,
      "dimensions": dimensions
    };
    return map;
  }

  @override
  String toString() {
    return " Color: $color \n Weight: $weight \n Dimensions:\n {\n$dimensions\n }";
  }

}

class Dimensions{

  late int length;
  late int width;
  late int height;

  Dimensions.fromJson(Map<String, dynamic> json){
    length = json["length"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "length": length,
      "width": width,
      "height": height
    };
    return map;
  }

  @override
  String toString() {
    return "  Length: $length \n  Width: $width \n  Height: $height";
  }

}

class Type{

  late String name;
  late String comment;
  late List<int> count;
  late String id;

  Type.fromJson(Map<String, dynamic> json){
    name = json["name"];
    comment = json["comment"];
    count = List<int>.from(json["count"].map((e) => e));
    id = json["id"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "name": name,
      "comment": comment,
      "count": count,
      "id": id
    };
    return map;
  }

  @override
  String toString() {
    return " Name: $name \n Comment: $comment \n Count: $count \n Id: $id";
  }

}