part of '../fhir_dart.dart';

/// The path by which the pharmaceutical product is taken into or makes contact with the body.
class MedicinalProductPharmaceuticalRouteOfAdministration
    extends BackboneElement implements FhirResource {
  /// Coded expression for the route.
  final CodeableConcept code;

  /// The first dose (dose quantity) administered in humans can be specified, for a product under investigation, using a numerical value and its unit of measurement.
  final Quantity? firstDose;

  /// The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered as per the protocol referenced in the clinical trial authorisation.
  final Quantity? maxDosePerDay;

  /// The maximum dose per treatment period that can be administered as per the protocol referenced in the clinical trial authorisation.
  final Ratio? maxDosePerTreatmentPeriod;

  /// The maximum single dose that can be administered as per the protocol of a clinical trial can be specified using a numerical value and its unit of measurement.
  final Quantity? maxSingleDose;

  /// The maximum treatment period during which an Investigational Medicinal Product can be administered as per the protocol referenced in the clinical trial authorisation.
  final Duration? maxTreatmentPeriod;

  /// A species for which this route applies.
  final List<MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies>?
      targetSpecies;
  MedicinalProductPharmaceuticalRouteOfAdministration({
    required this.code,
    super.fhirExtension,
    this.firstDose,
    super.id,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxSingleDose,
    this.maxTreatmentPeriod,
    super.modifierExtension,
    this.targetSpecies,
  });

  @override
  factory MedicinalProductPharmaceuticalRouteOfAdministration.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductPharmaceuticalRouteOfAdministration(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstDose: json['firstDose'] != null
          ? Quantity.fromJson(json['firstDose'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      maxDosePerDay: json['maxDosePerDay'] != null
          ? Quantity.fromJson(json['maxDosePerDay'] as Map<String, dynamic>)
          : null,
      maxDosePerTreatmentPeriod: json['maxDosePerTreatmentPeriod'] != null
          ? Ratio.fromJson(
              json['maxDosePerTreatmentPeriod'] as Map<String, dynamic>)
          : null,
      maxSingleDose: json['maxSingleDose'] != null
          ? Quantity.fromJson(json['maxSingleDose'] as Map<String, dynamic>)
          : null,
      maxTreatmentPeriod: json['maxTreatmentPeriod'] != null
          ? Duration.fromJson(
              json['maxTreatmentPeriod'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetSpecies: (json['targetSpecies'] as List<dynamic>?)
          ?.map((e) =>
              MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'firstDose': firstDose?.toJson(),
        'id': id,
        'maxDosePerDay': maxDosePerDay?.toJson(),
        'maxDosePerTreatmentPeriod': maxDosePerTreatmentPeriod?.toJson(),
        'maxSingleDose': maxSingleDose?.toJson(),
        'maxTreatmentPeriod': maxTreatmentPeriod?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'targetSpecies': targetSpecies?.map((e) => e.toJson()).toList(),
      };

  @override
  MedicinalProductPharmaceuticalRouteOfAdministration copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    Quantity? firstDose,
    String? id,
    Quantity? maxDosePerDay,
    Ratio? maxDosePerTreatmentPeriod,
    Quantity? maxSingleDose,
    Duration? maxTreatmentPeriod,
    List<Extension>? modifierExtension,
    List<MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies>?
        targetSpecies,
  }) {
    return MedicinalProductPharmaceuticalRouteOfAdministration(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      firstDose: firstDose ?? this.firstDose,
      id: id ?? this.id,
      maxDosePerDay: maxDosePerDay ?? this.maxDosePerDay,
      maxDosePerTreatmentPeriod:
          maxDosePerTreatmentPeriod ?? this.maxDosePerTreatmentPeriod,
      maxSingleDose: maxSingleDose ?? this.maxSingleDose,
      maxTreatmentPeriod: maxTreatmentPeriod ?? this.maxTreatmentPeriod,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      targetSpecies: targetSpecies ?? this.targetSpecies,
    );
  }
}
