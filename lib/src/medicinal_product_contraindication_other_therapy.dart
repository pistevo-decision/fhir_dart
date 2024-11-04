part of '../fhir_dart.dart';

 /// Information about the use of the medicinal product in relation to other therapies described as part of the indication.
class MedicinalProductContraindicationOtherTherapy extends BackboneElement implements FhirResource {
   /// Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.
  final CodeableConcept? medicationCodeableConcept;
   /// Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.
  final Reference? medicationReference;
   /// The type of relationship between the medicinal product indication or contraindication and another therapy.
  final CodeableConcept therapyRelationshipType;
  MedicinalProductContraindicationOtherTherapy({
    super.fhirExtension,
    super.id,
    this.medicationCodeableConcept,
    this.medicationReference,
    super.modifierExtension,
    required this.therapyRelationshipType,
  });
  
  @override
  factory MedicinalProductContraindicationOtherTherapy.fromJson(Map<String, dynamic> json) {
    return MedicinalProductContraindicationOtherTherapy(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      medicationCodeableConcept: json['medicationCodeableConcept'] != null ? CodeableConcept.fromJson(json['medicationCodeableConcept'] as Map<String, dynamic>) : null,
      medicationReference: json['medicationReference'] != null ? Reference.fromJson(json['medicationReference'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      therapyRelationshipType: CodeableConcept.fromJson(json['therapyRelationshipType'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'medicationCodeableConcept': medicationCodeableConcept?.toJson(),
      'medicationReference': medicationReference?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'therapyRelationshipType': therapyRelationshipType.toJson(),
    };
  
  @override
  MedicinalProductContraindicationOtherTherapy copyWith({
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    List<Extension>? modifierExtension,
    CodeableConcept? therapyRelationshipType,
  }) {
    return MedicinalProductContraindicationOtherTherapy(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      medicationCodeableConcept: medicationCodeableConcept ?? this.medicationCodeableConcept,
      medicationReference: medicationReference ?? this.medicationReference,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      therapyRelationshipType: therapyRelationshipType ?? this.therapyRelationshipType,
    );
  }
}
