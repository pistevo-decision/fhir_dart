part of '../fhir_dart.dart';

/// The regulatory procedure for granting or amending a marketing authorization.
class MedicinalProductAuthorizationProcedure extends BackboneElement
    implements FhirResource {
  /// Applcations submitted to obtain a marketing authorization.
  final List<MedicinalProductAuthorizationProcedure>? application;

  /// Date of procedure.
  final String? dateDateTime;

  /// Date of procedure.
  final Period? datePeriod;

  /// Identifier for this procedure.
  final Identifier? identifier;

  /// Type of procedure.
  final CodeableConcept type;
  MedicinalProductAuthorizationProcedure({
    this.application,
    this.dateDateTime,
    this.datePeriod,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    required this.type,
  });

  @override
  factory MedicinalProductAuthorizationProcedure.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductAuthorizationProcedure(
      application: (json['application'] as List<dynamic>?)
          ?.map((e) => MedicinalProductAuthorizationProcedure.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      dateDateTime: json['dateDateTime'] as String?,
      datePeriod: json['datePeriod'] != null
          ? Period.fromJson((json['datePeriod'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: CodeableConcept.fromJson(
          (json['type'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'application': application?.map((e) => e.toJson()).toList(),
        'dateDateTime': dateDateTime,
        'datePeriod': datePeriod?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type.toJson(),
      };

  @override
  MedicinalProductAuthorizationProcedure copyWith({
    List<MedicinalProductAuthorizationProcedure>? application,
    String? dateDateTime,
    Period? datePeriod,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
  }) {
    return MedicinalProductAuthorizationProcedure(
      application: application ?? this.application,
      dateDateTime: dateDateTime ?? this.dateDateTime,
      datePeriod: datePeriod ?? this.datePeriod,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
    );
  }
}
