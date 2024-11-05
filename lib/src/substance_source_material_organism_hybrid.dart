part of '../fhir_dart.dart';

/// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
class SubstanceSourceMaterialOrganismHybrid extends BackboneElement
    implements FhirResource {
  /// The hybrid type of an organism shall be specified.
  final CodeableConcept? hybridType;

  /// The identifier of the maternal species constituting the hybrid organism shall be specified based on a controlled vocabulary. For plants, the parents aren’t always known, and it is unlikely that it will be known which is maternal and which is paternal.
  final String? maternalOrganismId;

  /// The name of the maternal species constituting the hybrid organism shall be specified. For plants, the parents aren’t always known, and it is unlikely that it will be known which is maternal and which is paternal.
  final String? maternalOrganismName;

  /// The identifier of the paternal species constituting the hybrid organism shall be specified based on a controlled vocabulary.
  final String? paternalOrganismId;

  /// The name of the paternal species constituting the hybrid organism shall be specified.
  final String? paternalOrganismName;
  SubstanceSourceMaterialOrganismHybrid({
    super.fhirExtension,
    this.hybridType,
    super.id,
    this.maternalOrganismId,
    this.maternalOrganismName,
    super.modifierExtension,
    this.paternalOrganismId,
    this.paternalOrganismName,
  });

  @override
  factory SubstanceSourceMaterialOrganismHybrid.fromJson(
      Map<String, dynamic> json) {
    return SubstanceSourceMaterialOrganismHybrid(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      hybridType: json['hybridType'] != null
          ? CodeableConcept.fromJson(
              (json['hybridType'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      maternalOrganismId: json['maternalOrganismId'] as String?,
      maternalOrganismName: json['maternalOrganismName'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      paternalOrganismId: json['paternalOrganismId'] as String?,
      paternalOrganismName: json['paternalOrganismName'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'hybridType': hybridType?.toJson(),
        'id': id,
        'maternalOrganismId': maternalOrganismId,
        'maternalOrganismName': maternalOrganismName,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'paternalOrganismId': paternalOrganismId,
        'paternalOrganismName': paternalOrganismName,
      };

  @override
  SubstanceSourceMaterialOrganismHybrid copyWith({
    List<Extension>? fhirExtension,
    CodeableConcept? hybridType,
    String? id,
    String? maternalOrganismId,
    String? maternalOrganismName,
    List<Extension>? modifierExtension,
    String? paternalOrganismId,
    String? paternalOrganismName,
  }) {
    return SubstanceSourceMaterialOrganismHybrid(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      hybridType: hybridType ?? this.hybridType,
      id: id ?? this.id,
      maternalOrganismId: maternalOrganismId ?? this.maternalOrganismId,
      maternalOrganismName: maternalOrganismName ?? this.maternalOrganismName,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      paternalOrganismId: paternalOrganismId ?? this.paternalOrganismId,
      paternalOrganismName: paternalOrganismName ?? this.paternalOrganismName,
    );
  }
}
