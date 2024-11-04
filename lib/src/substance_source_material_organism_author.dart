part of '../fhir_dart.dart';

/// 4.9.13.6.1 Author type (Conditional).
class SubstanceSourceMaterialOrganismAuthor extends BackboneElement
    implements FhirResource {
  /// The author of an organism species shall be specified. The author year of an organism shall also be specified when applicable; refers to the year in which the first author(s) published the infraspecific plant/animal name (of any rank).
  final String? authorDescription;

  /// The type of author of an organism species shall be specified. The parenthetical author of an organism species refers to the first author who published the plant/animal name (of any rank). The primary author of an organism species refers to the first author(s), who validly published the plant/animal name.
  final CodeableConcept? authorType;
  SubstanceSourceMaterialOrganismAuthor({
    this.authorDescription,
    this.authorType,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory SubstanceSourceMaterialOrganismAuthor.fromJson(
      Map<String, dynamic> json) {
    return SubstanceSourceMaterialOrganismAuthor(
      authorDescription: json['authorDescription'] as String?,
      authorType: json['authorType'] != null
          ? CodeableConcept.fromJson(json['authorType'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'authorDescription': authorDescription,
        'authorType': authorType?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  SubstanceSourceMaterialOrganismAuthor copyWith({
    String? authorDescription,
    CodeableConcept? authorType,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return SubstanceSourceMaterialOrganismAuthor(
      authorDescription: authorDescription ?? this.authorDescription,
      authorType: authorType ?? this.authorType,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
