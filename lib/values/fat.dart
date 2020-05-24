class Fat {
  double glam;

  final double glamPerCol = 9.0;

  double getCol() {
    return glam * glamPerCol;
  }

  @override
  bool operator ==(Object other) 
    => other is Fat && glam == other.glam;
  

  @override
  int get hashCode => glam.hashCode;

  @override
  String toString() {
    return "$glam";
  }
}