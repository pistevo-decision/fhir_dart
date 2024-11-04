part of '../fhir_dart.dart';

 /// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
class MedicinalProductSpecialDesignation extends BackboneElement implements FhirResource {
   /// Date when the designation was granted.
  final String? date;
   /// Identifier for the designation, or procedure number.
  final List<Identifier>? identifier;
   /// Condition for which the medicinal use applies.
  final CodeableConcept? indicationCodeableConcept;
   /// Condition for which the medicinal use applies.
  final Reference? indicationReference;
   /// The intended use of the product, e.g. prevention, treatment.
  final CodeableConcept? intendedUse;
   /// Animal species for which this applies.
  final CodeableConcept? species;
   /// For example granted, pending, expired or withdrawn.
  final CodeableConcept? status;
   /// The type of special designation, e.g. orphan drug, minor use.
  final CodeableConcept? type;
  MedicinalProductSpecialDesignation({
    this.date,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.indicationCodeableConcept,
    this.indicationReference,
    this.intendedUse,
    super.modifierExtension,
    this.species,
    this.status,
    this.type,
  });
  
  @override
  factory MedicinalProductSpecialDesignation.fromJson(Map<String, dynamic> json) {
    return MedicinalProductSpecialDesignation(
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      indicationCodeableConcept: json['indicationCodeableConcept'] != null ? CodeableConcept.fromJson(json['indicationCodeableConcept'] as Map<String, dynamic>) : null,
      indicationReference: json['indicationReference'] != null ? Reference.fromJson(json['indicationReference'] as Map<String, dynamic>) : null,
      intendedUse: json['intendedUse'] != null ? CodeableConcept.fromJson(json['intendedUse'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      species: json['species'] != null ? CodeableConcept.fromJson(json['species'] as Map<String, dynamic>) : null,
      status: json['status'] != null ? CodeableConcept.fromJson(json['status'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'date': date,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'indicationCodeableConcept': indicationCodeableConcept?.toJson(),
      'indicationReference': indicationReference?.toJson(),
      'intendedUse': intendedUse?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'species': species?.toJson(),
      'status': status?.toJson(),
      'type': type?.toJson(),
    };
  
  @override
  MedicinalProductSpecialDesignation copyWith({
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    CodeableConcept? indicationCodeableConcept,
    Reference? indicationReference,
    CodeableConcept? intendedUse,
    List<Extension>? modifierExtension,
    CodeableConcept? species,
    CodeableConcept? status,
    CodeableConcept? type,
  }) {
    return MedicinalProductSpecialDesignation(
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      indicationCodeableConcept: indicationCodeableConcept ?? this.indicationCodeableConcept,
      indicationReference: indicationReference ?? this.indicationReference,
      intendedUse: intendedUse ?? this.intendedUse,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      species: species ?? this.species,
      status: status ?? this.status,
      type: type ?? this.type,
    );
  }
}
