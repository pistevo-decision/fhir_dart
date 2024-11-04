part of '../fhir_dart.dart';

 /// A species for which this route applies.
class MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies extends BackboneElement implements FhirResource {
   /// Coded expression for the species.
  final CodeableConcept code;
   /// A species specific time during which consumption of animal product is not appropriate.
  final List<MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod>? withdrawalPeriod;
  MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.withdrawalPeriod,
  });
  
  @override
  factory MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies.fromJson(Map<String, dynamic> json) {
    return MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies(
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      withdrawalPeriod: (json['withdrawalPeriod'] as List<dynamic>?)?.map((e) => MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'code': code.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'withdrawalPeriod': withdrawalPeriod?.map((e) => e.toJson()).toList(),
    };
  
  @override
  MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpeciesWithdrawalPeriod>? withdrawalPeriod,
  }) {
    return MedicinalProductPharmaceuticalRouteOfAdministrationTargetSpecies(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      withdrawalPeriod: withdrawalPeriod ?? this.withdrawalPeriod,
    );
  }
}
