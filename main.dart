import 'triangle.dart';

void main() {
  
  List<Triangle> triangles = [
    Triangle(23,54),
    Triangle.cm(53,23),
    Triangle.dm(23,22),
    Triangle.m(0.9, 1.2),
    Triangle.inch(20, 45),
    Triangle.feet(3, 5)
  ];

  for (int i = 0; i < triangles.length; i++) {
    print(triangles[i]);
  }
  
}

