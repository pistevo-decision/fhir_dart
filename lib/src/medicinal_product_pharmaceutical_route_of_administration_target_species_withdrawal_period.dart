part of '../fhir_dart.dart';

/// A species specific time during which consumption of animal product is not appropriate.
class MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod
    extends BackboneElement implements FhirResource {
  /// Extra information about the withdrawal period.
  final String? supportingInformation;

  /// Coded expression for the type of tissue for which the withdrawal period applues, e.g. meat, milk.
  final CodeableConcept tissue;

  /// A value for the time.
  final Quantity value;
  MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.supportingInformation,
    required this.tissue,
    required this.value,
  });

  @override
  factory MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod.fromJson(
      Map<String, dynamic> json) {
    return MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      supportingInformation: json['supportingInformation'] as String?,
      tissue: CodeableConcept.fromJson(
          (json['tissue'] as Map).cast<String, dynamic>()),
      value: Quantity.fromJson((json['value'] as Map).cast<String, dynamic>()),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'supportingInformation': supportingInformation,
        'tissue': tissue.toJson(),
        'value': value.toJson(),
      };

  @override
  MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod
      copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? supportingInformation,
    CodeableConcept? tissue,
    Quantity? value,
  }) {
    return MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      tissue: tissue ?? this.tissue,
      value: value ?? this.value,
    );
  }
}
