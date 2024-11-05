part of '../fhir_dart.dart';

/// Clinical procedures performed
/// Procedures performed on the patient relevant to the billing items with the claim.
class ExplanationOfBenefitProcedure extends BackboneElement
    implements FhirResource {
  /// When the procedure was performed
  /// Date and optionally time the procedure was performed.
  final String? date;

  /// Specific clinical procedure
  /// The code or reference to a Procedure resource which identifies the clinical intervention performed.
  final CodeableConcept? procedureCodeableConcept;

  /// Specific clinical procedure
  /// The code or reference to a Procedure resource which identifies the clinical intervention performed.
  final Reference? procedureReference;

  /// Procedure instance identifier
  /// A number to uniquely identify procedure entries.
  final int sequence;

  /// Category of Procedure
  /// When the condition was observed or the relative ranking.
  final List<CodeableConcept>? type;

  /// Unique device identifier
  /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;
  ExplanationOfBenefitProcedure({
    this.date,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.procedureCodeableConcept,
    this.procedureReference,
    required this.sequence,
    this.type,
    this.udi,
  });

  @override
  factory ExplanationOfBenefitProcedure.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitProcedure(
      date: json['date'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      procedureCodeableConcept: json['procedureCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['procedureCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      procedureReference: json['procedureReference'] != null
          ? Reference.fromJson(
              (json['procedureReference'] as Map).cast<String, dynamic>())
          : null,
      sequence: json['sequence'] as int,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'date': date,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'procedureCodeableConcept': procedureCodeableConcept?.toJson(),
        'procedureReference': procedureReference?.toJson(),
        'sequence': sequence,
        'type': type?.map((e) => e.toJson()).toList(),
        'udi': udi?.map((e) => e.toJson()).toList(),
      };

  @override
  ExplanationOfBenefitProcedure copyWith({
    String? date,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? procedureCodeableConcept,
    Reference? procedureReference,
    int? sequence,
    List<CodeableConcept>? type,
    List<Reference>? udi,
  }) {
    return ExplanationOfBenefitProcedure(
      date: date ?? this.date,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      procedureCodeableConcept:
          procedureCodeableConcept ?? this.procedureCodeableConcept,
      procedureReference: procedureReference ?? this.procedureReference,
      sequence: sequence ?? this.sequence,
      type: type ?? this.type,
      udi: udi ?? this.udi,
    );
  }
}
