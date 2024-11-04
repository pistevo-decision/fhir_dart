part of '../fhir_dart.dart';

/// Regulatory information about a medication.
class MedicationKnowledgeRegulatory extends BackboneElement
    implements FhirResource {
  /// The maximum number of units of the medication that can be dispensed in a period.
  final MedicationKnowledgeRegulatoryMaxDispense? maxDispense;

  /// Specifies the authority of the regulation
  /// The authority that is specifying the regulations.
  final Reference regulatoryAuthority;

  /// Specifies the schedule of a medication in jurisdiction.
  final List<MedicationKnowledgeRegulatorySchedule>? schedule;

  /// Specifies if changes are allowed when dispensing a medication from a regulatory perspective.
  final List<MedicationKnowledgeRegulatorySubstitution>? substitution;
  MedicationKnowledgeRegulatory({
    super.fhirExtension,
    super.id,
    this.maxDispense,
    super.modifierExtension,
    required this.regulatoryAuthority,
    this.schedule,
    this.substitution,
  });

  @override
  factory MedicationKnowledgeRegulatory.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeRegulatory(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      maxDispense: json['maxDispense'] != null
          ? MedicationKnowledgeRegulatoryMaxDispense.fromJson(
              json['maxDispense'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      regulatoryAuthority: Reference.fromJson(
          json['regulatoryAuthority'] as Map<String, dynamic>),
      schedule: (json['schedule'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeRegulatorySchedule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      substitution: (json['substitution'] as List<dynamic>?)
          ?.map((e) => MedicationKnowledgeRegulatorySubstitution.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'maxDispense': maxDispense?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'regulatoryAuthority': regulatoryAuthority.toJson(),
        'schedule': schedule?.map((e) => e.toJson()).toList(),
        'substitution': substitution?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicationKnowledgeRegulatory copyWith({
    List<Extension>? fhirExtension,
    String? id,
    MedicationKnowledgeRegulatoryMaxDispense? maxDispense,
    List<Extension>? modifierExtension,
    Reference? regulatoryAuthority,
    List<MedicationKnowledgeRegulatorySchedule>? schedule,
    List<MedicationKnowledgeRegulatorySubstitution>? substitution,
  }) {
    return MedicationKnowledgeRegulatory(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      maxDispense: maxDispense ?? this.maxDispense,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      regulatoryAuthority: regulatoryAuthority ?? this.regulatoryAuthority,
      schedule: schedule ?? this.schedule,
      substitution: substitution ?? this.substitution,
    );
  }
}
