part of '../fhir_dart.dart';

/// Pertinent diagnosis information
/// Information about diagnoses relevant to the claim items.
class ExplanationOfBenefitDiagnosis extends BackboneElement
    implements FhirResource {
  /// Nature of illness or problem
  /// The nature of illness or problem in a coded form or as a reference to an external defined Condition.
  final CodeableConcept? diagnosisCodeableConcept;

  /// Nature of illness or problem
  /// The nature of illness or problem in a coded form or as a reference to an external defined Condition.
  final Reference? diagnosisReference;

  /// Present on admission
  /// Indication of whether the diagnosis was present on admission to a facility.
  final CodeableConcept? onAdmission;

  /// Package billing code
  /// A package billing code or bundle code used to group products and services to a particular health condition (such as heart attack) which is based on a predetermined grouping code system.
  /// For example, DRG (Diagnosis Related Group) or a bundled billing code. A patient may have a diagnosis of a Myocardio-infarction and a DRG for HeartAttack would assigned. The Claim item (and possible subsequent claims) would refer to the DRG for those line items that were for services related to the heart attack event.
  final CodeableConcept? packageCode;

  /// Diagnosis instance identifier
  /// A number to uniquely identify diagnosis entries.
  /// Diagnosis are presented in list order to their expected importance: primary, secondary, etc.
  final int sequence;

  /// Timing or nature of the diagnosis
  /// When the condition was observed or the relative ranking.
  /// For example: admitting, primary, secondary, discharge.
  final List<CodeableConcept>? type;
  ExplanationOfBenefitDiagnosis({
    this.diagnosisCodeableConcept,
    this.diagnosisReference,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.onAdmission,
    this.packageCode,
    required this.sequence,
    this.type,
  });

  @override
  factory ExplanationOfBenefitDiagnosis.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitDiagnosis(
      diagnosisCodeableConcept: json['diagnosisCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['diagnosisCodeableConcept'] as Map<String, dynamic>)
          : null,
      diagnosisReference: json['diagnosisReference'] != null
          ? Reference.fromJson(
              json['diagnosisReference'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      onAdmission: json['onAdmission'] != null
          ? CodeableConcept.fromJson(
              json['onAdmission'] as Map<String, dynamic>)
          : null,
      packageCode: json['packageCode'] != null
          ? CodeableConcept.fromJson(
              json['packageCode'] as Map<String, dynamic>)
          : null,
      sequence: json['sequence'] as int,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'diagnosisCodeableConcept': diagnosisCodeableConcept?.toJson(),
        'diagnosisReference': diagnosisReference?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'onAdmission': onAdmission?.toJson(),
        'packageCode': packageCode?.toJson(),
        'sequence': sequence,
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  ExplanationOfBenefitDiagnosis copyWith({
    CodeableConcept? diagnosisCodeableConcept,
    Reference? diagnosisReference,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? onAdmission,
    CodeableConcept? packageCode,
    int? sequence,
    List<CodeableConcept>? type,
  }) {
    return ExplanationOfBenefitDiagnosis(
      diagnosisCodeableConcept:
          diagnosisCodeableConcept ?? this.diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference ?? this.diagnosisReference,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      onAdmission: onAdmission ?? this.onAdmission,
      packageCode: packageCode ?? this.packageCode,
      sequence: sequence ?? this.sequence,
      type: type ?? this.type,
    );
  }
}
