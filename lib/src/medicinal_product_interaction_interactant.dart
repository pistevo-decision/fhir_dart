part of '../fhir_dart.dart';

 /// The specific medication, food or laboratory test that interacts.
class MedicinalProductInteractionInteractant extends BackboneElement implements FhirResource {
   /// The specific medication, food or laboratory test that interacts.
  final CodeableConcept? itemCodeableConcept;
   /// The specific medication, food or laboratory test that interacts.
  final Reference? itemReference;
  MedicinalProductInteractionInteractant({
    super.fhirExtension,
    super.id,
    this.itemCodeableConcept,
    this.itemReference,
    super.modifierExtension,
  });
  
  @override
  factory MedicinalProductInteractionInteractant.fromJson(Map<String, dynamic> json) {
    return MedicinalProductInteractionInteractant(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      itemCodeableConcept: json['itemCodeableConcept'] != null ? CodeableConcept.fromJson(json['itemCodeableConcept'] as Map<String, dynamic>) : null,
      itemReference: json['itemReference'] != null ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'itemCodeableConcept': itemCodeableConcept?.toJson(),
      'itemReference': itemReference?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MedicinalProductInteractionInteractant copyWith({
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    List<Extension>? modifierExtension,
  }) {
    return MedicinalProductInteractionInteractant(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
