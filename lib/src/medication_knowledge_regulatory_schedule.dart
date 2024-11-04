part of '../fhir_dart.dart';

 /// Specifies the schedule of a medication in jurisdiction.
class MedicationKnowledgeRegulatorySchedule extends BackboneElement implements FhirResource {
   /// Specifies the specific drug schedule.
  final CodeableConcept schedule;
  MedicationKnowledgeRegulatorySchedule({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.schedule,
  });
  
  @override
  factory MedicationKnowledgeRegulatorySchedule.fromJson(Map<String, dynamic> json) {
    return MedicationKnowledgeRegulatorySchedule(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      schedule: CodeableConcept.fromJson(json['schedule'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'schedule': schedule.toJson(),
    };
  
  @override
  MedicationKnowledgeRegulatorySchedule copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? schedule,
  }) {
    return MedicationKnowledgeRegulatorySchedule(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      schedule: schedule ?? this.schedule,
    );
  }
}
