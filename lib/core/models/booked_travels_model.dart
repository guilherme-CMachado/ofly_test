// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BookedTravelsModel {
  final String planeTicketNumber;
  final String airPort;
  final String airCompany;
  final String hour;
  final String fightDate;
  BookedTravelsModel({
    required this.planeTicketNumber,
    required this.airPort,
    required this.airCompany,
    required this.hour,
    required this.fightDate,
  });

  BookedTravelsModel copyWith({
    String? planeTicketNumber,
    String? airPort,
    String? airCompany,
    String? hour,
    String? fightDate,
  }) {
    return BookedTravelsModel(
      planeTicketNumber: planeTicketNumber ?? this.planeTicketNumber,
      airPort: airPort ?? this.airPort,
      airCompany: airCompany ?? this.airCompany,
      hour: hour ?? this.hour,
      fightDate: fightDate ?? this.fightDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planeTicketNumber': planeTicketNumber,
      'airPort': airPort,
      'airCompany': airCompany,
      'hour': hour,
      'fightDate': fightDate,
    };
  }

  factory BookedTravelsModel.fromMap(Map<String, dynamic> map) {
    return BookedTravelsModel(
      planeTicketNumber: map['planeTicketNumber'] as String,
      airPort: map['airPort'] as String,
      airCompany: map['airCompany'] as String,
      hour: map['hour'] as String,
      fightDate: map['fightDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookedTravelsModel.fromJson(String source) =>
      BookedTravelsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BookedTravelsModel(planeTicketNumber: $planeTicketNumber, airPort: $airPort, airCompany: $airCompany, hour: $hour, fightDate: $fightDate)';
  }

  @override
  bool operator ==(covariant BookedTravelsModel other) {
    if (identical(this, other)) return true;

    return other.planeTicketNumber == planeTicketNumber &&
        other.airPort == airPort &&
        other.airCompany == airCompany &&
        other.hour == hour &&
        other.fightDate == fightDate;
  }

  @override
  int get hashCode {
    return planeTicketNumber.hashCode ^
        airPort.hashCode ^
        airCompany.hashCode ^
        hour.hashCode ^
        fightDate.hashCode;
  }
}
