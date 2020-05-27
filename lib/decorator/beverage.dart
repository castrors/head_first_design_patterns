import 'size.dart';

abstract class Beverage {
  Size size = Size.TALL;
  String description = 'Unknown Beverage';

  String getDescription() {
    return description;
  }

  void setSize(Size size) {
    this.size = size;
  }

  Size getSize() => this.size;

  double cost();
}
