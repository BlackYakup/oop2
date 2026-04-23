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

    if(measurementSystem == MeasurementSystem.mm) {
      return 'Dreieck ($measurementSystem): H=${heightInMm}mm, B=${widthInMm}mm';
    }
    else if(measurementSystem == MeasurementSystem.cm) {
      return 'Dreieck ($measurementSystem): H=${heightInMm}cm, B=${widthInMm}cm';
    }
    else if(measurementSystem == MeasurementSystem.dm) {
      return 'Dreieck ($measurementSystem): H=${heightInMm}dm, B=${widthInMm}dm';
    }
    else if(measurementSystem == MeasurementSystem.m) {
      return 'Dreieck ($measurementSystem): H=${heightInMm}m, B=${widthInMm}m';
    }
    else if(measurementSystem == MeasurementSystem.inch) {
      return 'Dreieck ($measurementSystem): H=${heightInMm}inch, B=${widthInMm} inch';
    }
    else if(measurementSystem == MeasurementSystem.feet) {
      return 'Dreieck ($measurementSystem): H=${heightInMm}feet, B=${widthInMm} feet';
    }
    else {
      return '';
    }
  }
}

enum MeasurementSystem {
  mm,
  cm,
  dm, 
  m,
  inch,
  feet
}

