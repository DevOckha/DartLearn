void main(List<String> args) {
  final shapeTriangle = Shape(ShapeType.triangle);
  final shapeRectangle = Shape(ShapeType.rectangle);

  shapeRectangle.draw();
  shapeTriangle.draw();
}

enum ShapeType { triangle, rectangle }

abstract class Shape {
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.triangle:
        return Triangle();
        break;

      case ShapeType.rectangle:
        return Rectangle();
        break;
      default:
        return Shape(type);
    }
  }
  void draw();
}

class Triangle implements Shape {
  @override
  void draw() {
    print("TRIANGLE");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("RECTANGLE");
  }
}
