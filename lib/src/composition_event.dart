part of '../fhir_dart.dart';

 /// The clinical service(s) being documented
 /// The clinical service, such as a colonoscopy or an appendectomy, being documented.
 /// The event needs to be consistent with the type element, though can provide further information if desired.
class CompositionEvent extends BackboneElement implements FhirResource {
   /// Code(s) that apply to the event being documented
   /// This list of codes represents the main clinical acts, such as a colonoscopy or an appendectomy, being documented. In some cases, the event is inherent in the typeCode, such as a "History and Physical Report" in which the procedure being documented is necessarily a "History and Physical" act.
   /// An event can further specialize the act inherent in the typeCode, such as where it is simply "Procedure Report" and the procedure was a "colonoscopy". If one or more eventCodes are included, they SHALL NOT conflict with the values inherent in the classCode, practiceSettingCode or typeCode, as such a conflict would create an ambiguous situation. This short list of codes is provided to be used as key words for certain types of queries.
  final List<CodeableConcept>? code;
   /// The event(s) being documented
   /// The description and/or reference of the event(s) being documented. For example, this could be used to document such a colonoscopy or an appendectomy.
  final List<Reference>? detail;
   /// The period covered by the documentation
   /// The period of time covered by the documentation. There is no assertion that the documentation is a complete representation for this period, only that it documents events during this time.
  final Period? period;
  CompositionEvent({
    this.code,
    this.detail,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
  });
  
  @override
  factory CompositionEvent.fromJson(Map<String, dynamic> json) {
    return CompositionEvent(
      code: (json['code'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      detail: (json['detail'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code?.map((e) => e.toJson()).toList(),
      'detail': detail?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period?.toJson(),
    };
  
  @override
  CompositionEvent copyWith({
    List<CodeableConcept>? code,
    List<Reference>? detail,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
  }) {
    return CompositionEvent(
      code: code ?? this.code,
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
    );
  }
}
