class Protein {
  double glam;

  final double glamPerCol = 4.0;

  double getCol() {
    return glam * glamPerCol;
  }

  @override
  bool operator ==(Object other) 
    => other is Protein && glam == other.glam;
  

  @override
  int get hashCode => glam.hashCode;

  @override
  String toString() {
    return "$glam";
  }
}