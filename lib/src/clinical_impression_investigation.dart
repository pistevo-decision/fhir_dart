part of '../fhir_dart.dart';

 /// One or more sets of investigations (signs, symptoms, etc.). The actual grouping of investigations varies greatly depending on the type and context of the assessment. These investigations may include data generated during the assessment process, or data previously generated and recorded that is pertinent to the outcomes.
class ClinicalImpressionInvestigation extends BackboneElement implements FhirResource {
   /// A name/code for the set
   /// A name/code for the group ("set") of investigations. Typically, this will be something like "signs", "symptoms", "clinical", "diagnostic", but the list is not constrained, and others such groups such as (exposure|family|travel|nutritional) history may be used.
  final CodeableConcept code;
   /// Record of a specific investigation
   /// A record of a specific investigation that was undertaken.
   /// Most investigations are observations of one kind or another but some other specific types of data collection resources can also be used.
  final List<Reference>? item;
  ClinicalImpressionInvestigation({
    required this.code,
    super.fhirExtension,
    super.id,
    this.item,
    super.modifierExtension,
  });
  
  @override
  factory ClinicalImpressionInvestigation.fromJson(Map<String, dynamic> json) {
    return ClinicalImpressionInvestigation(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      item: (json['item'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'item': item?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  ClinicalImpressionInvestigation copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Reference>? item,
    List<Extension>? modifierExtension,
  }) {
    return ClinicalImpressionInvestigation(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      item: item ?? this.item,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
