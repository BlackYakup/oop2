class Triangle {
  double _heightInMm;
  double _widthInMm;
  MeasurementSystem measurementSystem;

  // Standard-Konstruktor
  Triangle(this._heightInMm, this._widthInMm) : measurementSystem = MeasurementSystem.mm;

  // Benannte Konstruktoren nutzen jetzt die Faktoren aus dem Enum
  Triangle.feet(double h, double w) : this.fromSystem(h, w, MeasurementSystem.feet);
  Triangle.inch(double h, double w) : this.fromSystem(h, w, MeasurementSystem.inch);
  Triangle.m(double h, double w) : this.fromSystem(h, w, MeasurementSystem.m);
  Triangle.dm(double h, double w) : this.fromSystem(h, w, MeasurementSystem.dm);
  Triangle.cm(double h, double w) : this.fromSystem(h, w, MeasurementSystem.cm);
  Triangle.mm(double h, double w) : this.fromSystem(h, w, MeasurementSystem.mm);
  // ... usw für inch/feet

  // Ein interner Hilfskonstruktor spart Schreibarbeit
  Triangle.fromSystem(double h, double w, this.measurementSystem)
      : _heightInMm = h * measurementSystem.factorToMm,
        _widthInMm = w * measurementSystem.factorToMm;

  double get heightInMeters => _heightInMm / MeasurementSystem.m.factorToMm;
  double get heightInFeet => _heightInMm / MeasurementSystem.feet.factorToMm;
  
  double get height => _heightInMm / measurementSystem.factorToMm;
  double get width => _widthInMm / measurementSystem.factorToMm;

  set heightInMeters(double value) => _heightInMm = value * MeasurementSystem.m.factorToMm;
  set widthInInches(double value) => _widthInMm = value * MeasurementSystem.inch.factorToMm;

  @override
  String toString() {
    return 'Dreieck ${measurementSystem.description}: H=${height.toStringAsFixed(2)}$measurementSystem, B=${width.toStringAsFixed(2)}$measurementSystem';
  }
}

enum MeasurementSystem {
  mm(1.0, "mm", "in Millimeter"),
  cm(10.0, "cm", "in Zentimeter"),
  dm(100.0, "dm", "in Dezimeter"),
  m(1000.0, "m", "in Meter"),
  inch(25.4, "inch", "in Zoll"),
  feet(304.8, "feet", "in Fuß");

  // Das ist der "Umrechnungsfaktor" zur Basis (Millimeter)
  final double factorToMm;
  final String symbol;
  final String description;

  const MeasurementSystem(this.factorToMm, this.symbol, this.description);

  @override
  String toString() => symbol;
}