part of '../fhir_dart.dart';

 /// Associated documentation about the medication.
class MedicationKnowledgeMonograph extends BackboneElement implements FhirResource {
   /// Associated documentation about the medication.
  final Reference? source;
   /// The category of medication document
   /// The category of documentation about the medication. (e.g. professional monograph, patient education monograph).
  final CodeableConcept? type;
  MedicationKnowledgeMonograph({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.source,
    this.type,
  });
  
  @override
  factory MedicationKnowledgeMonograph.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeMonograph(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      source: json['source'] != null ? Reference.fromJson(json['source'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'source': source?.toJson(),
      'type': type?.toJson(),
    };
  
  @override
  MedicationKnowledgeMonograph copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? source,
    CodeableConcept? type,
  }) {
    return MedicationKnowledgeMonograph(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      type: type ?? this.type,
    );
  }
}
