// import 'package:sample/values/nutrients.dart';

class Carbohydrate  {
  double glam;

  final double glamPerCol = 4.0;

  double getCol() {
    return glam * glamPerCol;
  }

  @override
  bool operator ==(Object other) 
    => other is Carbohydrate && glam == other.glam;
  

  @override
  int get hashCode => glam.hashCode;

  @override
  String toString() {
    return "$glam";
  }
}