part of '../fhir_dart.dart';

/// Details of the official nature of this name.
class SubstanceSpecificationNameOfficial extends BackboneElement
    implements FhirResource {
  /// Which authority uses this official name.
  final CodeableConcept? authority;

  /// Date of official name change.
  final String? date;

  /// The status of the official name.
  final CodeableConcept? status;
  SubstanceSpecificationNameOfficial({
    this.authority,
    this.date,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.status,
  });

  @override
  factory SubstanceSpecificationNameOfficial.fromJson(
      Map<String, dynamic> json) {
    return SubstanceSpecificationNameOfficial(
      authority: json['authority'] != null
          ? CodeableConcept.fromJson(
              (json['authority'] as Map).cast<String, dynamic>())
          : null,
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              (json['status'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'authority': authority?.toJson(),
        'date': date,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'status': status?.toJson(),
      };

  @override
  SubstanceSpecificationNameOfficial copyWith({
    CodeableConcept? authority,
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? status,
  }) {
    return SubstanceSpecificationNameOfficial(
      authority: authority ?? this.authority,
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
    );
  }
}
