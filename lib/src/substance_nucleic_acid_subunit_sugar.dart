part of '../fhir_dart.dart';

/// 5.3.6.8.1 Sugar ID (Mandatory).
class SubstanceNucleicAcidSubunitSugar extends BackboneElement
    implements FhirResource {
  /// The Substance ID of the sugar or sugar-like component that make up the nucleotide.
  final Identifier? identifier;

  /// The name of the sugar or sugar-like component that make up the nucleotide.
  final String? name;

  /// The residues that contain a given sugar will be captured. The order of given residues will be captured in the 5‘-3‘direction consistent with the base sequences listed above.
  final String? residueSite;
  SubstanceNucleicAcidSubunitSugar({
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.name,
    this.residueSite,
  });

  @override
  factory SubstanceNucleicAcidSubunitSugar.fromJson(Map<String, dynamic> json) {
    return SubstanceNucleicAcidSubunitSugar(
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
      name: json['name'] as String?,
      residueSite: json['residueSite'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'residueSite': residueSite,
      };

  @override
  SubstanceNucleicAcidSubunitSugar copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    String? name,
    String? residueSite,
  }) {
    return SubstanceNucleicAcidSubunitSugar(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      residueSite: residueSite ?? this.residueSite,
    );
  }
}
