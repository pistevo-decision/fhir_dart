part of '../fhir_dart.dart';

 /// The linkages between sugar residues will also be captured.
class SubstanceNucleicAcidSubunitLinkage extends BackboneElement implements FhirResource {
   /// The entity that links the sugar residues together should also be captured for nearly all naturally occurring nucleic acid the linkage is a phosphate group. For many synthetic oligonucleotides phosphorothioate linkages are often seen. Linkage connectivity is assumed to be 3’-5’. If the linkage is either 3’-3’ or 5’-5’ this should be specified.
  final String? connectivity;
   /// Each linkage will be registered as a fragment and have an ID.
  final Identifier? identifier;
   /// Each linkage will be registered as a fragment and have at least one name. A single name shall be assigned to each linkage.
  final String? name;
   /// Residues shall be captured as described in 5.3.6.8.3.
  final String? residueSite;
  SubstanceNucleicAcidSubunitLinkage({
    this.connectivity,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.modifierExtension,
    this.name,
    this.residueSite,
  });
  
  @override
  factory SubstanceNucleicAcidSubunitLinkage.fromJson(Map<String, dynamic> json) {
    return SubstanceNucleicAcidSubunitLinkage(
      connectivity: json['connectivity'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
      residueSite: json['residueSite'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'connectivity': connectivity,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'residueSite': residueSite,
    };
  
  @override
  SubstanceNucleicAcidSubunitLinkage copyWith({
    String? connectivity,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    List<Extension>? modifierExtension,
    String? name,
    String? residueSite,
  }) {
    return SubstanceNucleicAcidSubunitLinkage(
      connectivity: connectivity ?? this.connectivity,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      residueSite: residueSite ?? this.residueSite,
    );
  }
}
