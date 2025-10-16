class Vehicle {
  String regNo;
  String makeModel;
  int year;
  String photo;
  String status;

  Vehicle({
    required this.regNo,
    required this.makeModel,
    required this.year,
    required this.photo,
    required this.status,
  });

  String toFileFormat() => '$regNo,$makeModel,$year,$status,$photo';

  factory Vehicle.fromFileFormat(String line) {
    final parts = line.split(',');
    return Vehicle(
      regNo: parts[0],
      makeModel: parts[1],
      year: int.parse(parts[2]),
      status: parts[3],
      photo: parts.length > 4 ? parts[4] : 'assets/car.png',
    );
  }
}
