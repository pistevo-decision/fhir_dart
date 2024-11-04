part of '../fhir_dart.dart';

 /// Stage/grade, usually assessed formally
 /// Clinical stage or grade of a condition. May include formal severity assessments.
class ConditionStage extends BackboneElement implements FhirResource {
   /// Formal record of assessment
   /// Reference to a formal record of the evidence on which the staging assessment is based.
  final List<Reference>? assessment;
   /// Simple summary (disease specific)
   /// A simple summary of the stage such as "Stage 3". The determination of the stage is disease-specific.
  final CodeableConcept? summary;
   /// Kind of staging
   /// The kind of staging, such as pathological or clinical staging.
  final CodeableConcept? type;
  ConditionStage({
    this.assessment,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.summary,
    this.type,
  });
  
  @override
  factory ConditionStage.fromJson(Map<String, dynamic> json) {
    return ConditionStage(
      assessment: (json['assessment'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      summary: json['summary'] != null ? CodeableConcept.fromJson(json['summary'] as Map<String, dynamic>) : null,
      type: json['type'] != null ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'assessment': assessment?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'summary': summary?.toJson(),
      'type': type?.toJson(),
    };
  
  @override
  ConditionStage copyWith({
    List<Reference>? assessment,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? summary,
    CodeableConcept? type,
  }) {
    return ConditionStage(
      assessment: assessment ?? this.assessment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      summary: summary ?? this.summary,
      type: type ?? this.type,
    );
  }
}
