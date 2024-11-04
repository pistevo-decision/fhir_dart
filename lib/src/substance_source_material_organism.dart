part of '../fhir_dart.dart';

 /// This subclause describes the organism which the substance is derived from. For vaccines, the parent organism shall be specified based on these subclause elements. As an example, full taxonomy will be described for the Substance Name: ., Leaf.
class SubstanceSourceMaterialOrganism extends BackboneElement implements FhirResource {
   /// 4.9.13.6.1 Author type (Conditional).
  final List<SubstanceSourceMaterialOrganismAuthor>? author;
   /// The family of an organism shall be specified.
  final CodeableConcept? family;
   /// The genus of an organism shall be specified; refers to the Latin epithet of the genus element of the plant/animal scientific name; it is present in names for genera, species and infraspecies.
  final CodeableConcept? genus;
   /// 4.9.13.8.1 Hybrid species maternal organism ID (Optional).
  final SubstanceSourceMaterialOrganismHybrid? hybrid;
   /// The intraspecific description of an organism shall be specified based on a controlled vocabulary. For Influenza Vaccine, the intraspecific description shall contain the syntax of the antigen in line with the WHO convention.
  final String? intraspecificDescription;
   /// The Intraspecific type of an organism shall be specified.
  final CodeableConcept? intraspecificType;
   /// 4.9.13.7.1 Kingdom (Conditional).
  final SubstanceSourceMaterialOrganismOrganismGeneral? organismGeneral;
   /// The species of an organism shall be specified; refers to the Latin epithet of the species of the plant/animal; it is present in names for species and infraspecies.
  final CodeableConcept? species;
  SubstanceSourceMaterialOrganism({
    this.author,
    super.fhirExtension,
    this.family,
    this.genus,
    this.hybrid,
    super.id,
    this.intraspecificDescription,
    this.intraspecificType,
    super.modifierExtension,
    this.organismGeneral,
    this.species,
  });
  
  @override
  factory SubstanceSourceMaterialOrganism.fromJson(Map<String, dynamic> json) {
    return SubstanceSourceMaterialOrganism(
      author: (json['author'] as List<dynamic>?)?.map((e) => SubstanceSourceMaterialOrganismAuthor.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      family: json['family'] != null ? CodeableConcept.fromJson(json['family'] as Map<String, dynamic>) : null,
      genus: json['genus'] != null ? CodeableConcept.fromJson(json['genus'] as Map<String, dynamic>) : null,
      hybrid: json['hybrid'] != null ? SubstanceSourceMaterialOrganismHybrid.fromJson(json['hybrid'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      intraspecificDescription: json['intraspecificDescription'] as String?,
      intraspecificType: json['intraspecificType'] != null ? CodeableConcept.fromJson(json['intraspecificType'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      organismGeneral: json['organismGeneral'] != null ? SubstanceSourceMaterialOrganismOrganismGeneral.fromJson(json['organismGeneral'] as Map<String, dynamic>) : null,
      species: json['species'] != null ? CodeableConcept.fromJson(json['species'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'author': author?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'family': family?.toJson(),
      'genus': genus?.toJson(),
      'hybrid': hybrid?.toJson(),
      'id': id,
      'intraspecificDescription': intraspecificDescription,
      'intraspecificType': intraspecificType?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'organismGeneral': organismGeneral?.toJson(),
      'species': species?.toJson(),
    };
  
  @override
  SubstanceSourceMaterialOrganism copyWith({
    List<SubstanceSourceMaterialOrganismAuthor>? author,
    List<Extension>? fhirExtension,
    CodeableConcept? family,
    CodeableConcept? genus,
    SubstanceSourceMaterialOrganismHybrid? hybrid,
    String? id,
    String? intraspecificDescription,
    CodeableConcept? intraspecificType,
    List<Extension>? modifierExtension,
    SubstanceSourceMaterialOrganismOrganismGeneral? organismGeneral,
    CodeableConcept? species,
  }) {
    return SubstanceSourceMaterialOrganism(
      author: author ?? this.author,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      family: family ?? this.family,
      genus: genus ?? this.genus,
      hybrid: hybrid ?? this.hybrid,
      id: id ?? this.id,
      intraspecificDescription: intraspecificDescription ?? this.intraspecificDescription,
      intraspecificType: intraspecificType ?? this.intraspecificType,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organismGeneral: organismGeneral ?? this.organismGeneral,
      species: species ?? this.species,
    );
  }
}
