part of '../fhir_dart.dart';

 /// Dates governing proposed immunization
 /// Vaccine date recommendations.  For example, earliest date to administer, latest date to administer, etc.
class ImmunizationRecommendationRecommendationDateCriterion extends BackboneElement implements FhirResource {
   /// Type of date
   /// Date classification of recommendation.  For example, earliest date to give, latest date to give, etc.
  final CodeableConcept code;
   /// Recommended date
   /// The date whose meaning is specified by dateCriterion.code.
  final String value;
  ImmunizationRecommendationRecommendationDateCriterion({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.value,
  });
  
  @override
  factory ImmunizationRecommendationRecommendationDateCriterion.fromJson(Map<String, dynamic> json) {
    return ImmunizationRecommendationRecommendationDateCriterion(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      value: json['value'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'value': value,
    };
  
  @override
  ImmunizationRecommendationRecommendationDateCriterion copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? value,
  }) {
    return ImmunizationRecommendationRecommendationDateCriterion(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
    );
  }
}
