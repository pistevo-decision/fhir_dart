part of '../fhir_dart.dart';

 /// Condition that the related person had
 /// The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system to represent more than one condition per resource, though there is nothing stopping multiple resources - one per condition.
class FamilyMemberHistoryCondition extends BackboneElement implements FhirResource {
   /// Condition suffered by relation
   /// The actual condition specified. Could be a coded condition (like MI or Diabetes) or a less specific string like 'cancer' depending on how much is known about the condition and the capabilities of the creating system.
  final CodeableConcept code;
   /// Whether the condition contributed to the cause of death
   /// This condition contributed to the cause of death of the related person. If contributedToDeath is not populated, then it is unknown.
  final bool? contributedToDeath;
   /// Extra information about condition
   /// An area where general notes can be placed about this specific condition.
  final List<Annotation>? note;
   /// When condition first manifested
   /// Either the age of onset, range of approximate age or descriptive string can be recorded.  For conditions with multiple occurrences, this describes the first known occurrence.
  final Age? onsetAge;
   /// When condition first manifested
   /// Either the age of onset, range of approximate age or descriptive string can be recorded.  For conditions with multiple occurrences, this describes the first known occurrence.
  final Period? onsetPeriod;
   /// When condition first manifested
   /// Either the age of onset, range of approximate age or descriptive string can be recorded.  For conditions with multiple occurrences, this describes the first known occurrence.
  final Range? onsetRange;
   /// When condition first manifested
   /// Either the age of onset, range of approximate age or descriptive string can be recorded.  For conditions with multiple occurrences, this describes the first known occurrence.
  final String? onsetString;
   /// deceased | permanent disability | etc.
   /// Indicates what happened following the condition.  If the condition resulted in death, deceased date is captured on the relation.
  final CodeableConcept? outcome;
  FamilyMemberHistoryCondition({
    required this.code,
    this.contributedToDeath,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.note,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.outcome,
  });
  
  @override
  factory FamilyMemberHistoryCondition.fromJson(Map<String, dynamic> json) {
    return FamilyMemberHistoryCondition(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      contributedToDeath: json['contributedToDeath'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      note: (json['note'] as List<dynamic>?)?.map((e) => Annotation.fromJson(e as Map<String, dynamic>)).toList(),
      onsetAge: json['onsetAge'] != null ? Age.fromJson(json['onsetAge'] as Map<String, dynamic>) : null,
      onsetPeriod: json['onsetPeriod'] != null ? Period.fromJson(json['onsetPeriod'] as Map<String, dynamic>) : null,
      onsetRange: json['onsetRange'] != null ? Range.fromJson(json['onsetRange'] as Map<String, dynamic>) : null,
      onsetString: json['onsetString'] as String?,
      outcome: json['outcome'] != null ? CodeableConcept.fromJson(json['outcome'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code.toJson(),
      'contributedToDeath': contributedToDeath,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'note': note?.map((e) => e.toJson()).toList(),
      'onsetAge': onsetAge?.toJson(),
      'onsetPeriod': onsetPeriod?.toJson(),
      'onsetRange': onsetRange?.toJson(),
      'onsetString': onsetString,
      'outcome': outcome?.toJson(),
    };
  
  @override
  FamilyMemberHistoryCondition copyWith({
    CodeableConcept? code,
    bool? contributedToDeath,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    String? onsetString,
    CodeableConcept? outcome,
  }) {
    return FamilyMemberHistoryCondition(
      code: code ?? this.code,
      contributedToDeath: contributedToDeath ?? this.contributedToDeath,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      onsetAge: onsetAge ?? this.onsetAge,
      onsetPeriod: onsetPeriod ?? this.onsetPeriod,
      onsetRange: onsetRange ?? this.onsetRange,
      onsetString: onsetString ?? this.onsetString,
      outcome: outcome ?? this.outcome,
    );
  }
}
