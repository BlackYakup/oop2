class Triangle {
  double heightInMm;
  double widthInMm;
  MeasurementSystem measurementSystem;

  Triangle(
    this.heightInMm,
    this.widthInMm,) 
    : measurementSystem = MeasurementSystem.mm;

  Triangle.cm(double height, double width)
    : heightInMm = height * 10,
      widthInMm = width * 10,
      measurementSystem = MeasurementSystem.cm;

  Triangle.dm(double height, double width)
    : heightInMm = height * 100,
      widthInMm = width * 100,
      measurementSystem = MeasurementSystem.dm;

  Triangle.m(double height, double width)
    : heightInMm = height * 1000,
      widthInMm = width * 1000,
      measurementSystem = MeasurementSystem.m;

  Triangle.inch(double height, double width)
    : heightInMm = height * 25.4,
      widthInMm = width * 25.4,
      measurementSystem = MeasurementSystem.inch;

  Triangle.feet(double height, double width)
    : heightInMm = height * 304.8,
      widthInMm = width * 304.8,
      measurementSystem = MeasurementSystem.feet;

  @override
  String toString() {
    return 'Dreieck ${measurementSystem.ausgeschriebeneEinheiten()}: H=${heightInMm}$measurementSystem, B=${widthInMm}$measurementSystem';
  }
}

enum MeasurementSystem {
  mm,
  cm,
  dm, 
  m,
  inch,
  feet;

  @override
  String toString() {
    switch(this){
      case MeasurementSystem.mm: return "mm";
      case MeasurementSystem.cm: return "cm";
      case MeasurementSystem.dm: return "dm";
      case MeasurementSystem.m: return "m";
      case MeasurementSystem.inch: return "inch";
      case MeasurementSystem.feet: return "feet";
    }
  }

  String ausgeschriebeneEinheiten() {
    switch(this){
      case MeasurementSystem.mm: return "in Millimeter";
      case MeasurementSystem.cm: return "in Zentimeter";
      case MeasurementSystem.dm: return "in Dezimeter";
      case MeasurementSystem.m: return "in Meter";
      case MeasurementSystem.inch: return "in Zoll";
      case MeasurementSystem.feet: return "in Fuß";
    }
  }
}

