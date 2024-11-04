part of '../fhir_dart.dart';

 /// Source material shall capture information on the taxonomic and anatomical origins as well as the fraction of a material that can result in or can be modified to form a substance. This set of data elements shall be used to define polymer substances isolated from biological matrices. Taxonomic and anatomical origins shall be described using a controlled vocabulary as required. This information is captured for naturally derived polymers ( . starch) and structurally diverse substances. For Organisms belonging to the Kingdom Plantae the Substance level defines the fresh material of a single species or infraspecies, the Herbal Drug and the Herbal preparation. For Herbal preparations, the fraction information will be captured at the Substance information level and additional information for herbal extracts will be captured at the Specified Substance Group 1 information level. See for further explanation the Substance Class: Structurally Diverse and the herbal annex.
class SubstanceSourceMaterial extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'SubstanceSourceMaterial';
   /// The country where the plant material is harvested or the countries where the plasma is sourced from as laid down in accordance with the Plasma Master File. For “Plasma-derived substances” the attribute country of origin provides information about the countries used for the manufacturing of the Cryopoor plama or Crioprecipitate.
  final List<CodeableConcept>? countryOfOrigin;
   /// Stage of life for animals, plants, insects and microorganisms. This information shall be provided only when the substance is significantly different in these stages (e.g. foetal bovine serum).
  final CodeableConcept? developmentStage;
   /// Many complex materials are fractions of parts of plants, animals, or minerals. Fraction elements are often necessary to define both Substances and Specified Group 1 Substances. For substances derived from Plants, fraction information will be captured at the Substance information level ( . Oils, Juices and Exudates). Additional information for Extracts, such as extraction solvent composition, will be captured at the Specified Substance Group 1 information level. For plasma-derived products fraction information will be captured at the Substance and the Specified Substance Group 1 levels.
  final List<SubstanceSourceMaterialFractionDescription>? fractionDescription;
   /// The place/region where the plant is harvested or the places/regions where the animal source material has its habitat.
  final List<String>? geographicalLocation;
   /// This subclause describes the organism which the substance is derived from. For vaccines, the parent organism shall be specified based on these subclause elements. As an example, full taxonomy will be described for the Substance Name: ., Leaf.
  final SubstanceSourceMaterialOrganism? organism;
   /// The unique identifier associated with the source material parent organism shall be specified.
  final Identifier? organismId;
   /// The organism accepted Scientific name shall be provided based on the organism taxonomy.
  final String? organismName;
   /// The parent of the herbal drug Ginkgo biloba, Leaf is the substance ID of the substance (fresh) of Ginkgo biloba L. or Ginkgo biloba L. (Whole plant).
  final List<Identifier>? parentSubstanceId;
   /// The parent substance of the Herbal Drug, or Herbal preparation.
  final List<String>? parentSubstanceName;
   /// To do.
  final List<SubstanceSourceMaterialPartDescription>? partDescription;
   /// General high level classification of the source material specific to the origin of the material.
  final CodeableConcept? sourceMaterialClass;
   /// The state of the source material when extracted.
  final CodeableConcept? sourceMaterialState;
   /// The type of the source material shall be specified based on a controlled vocabulary. For vaccines, this subclause refers to the class of infectious agent.
  final CodeableConcept? sourceMaterialType;
  SubstanceSourceMaterial({
    super.contained,
    this.countryOfOrigin,
    this.developmentStage,
    super.fhirExtension,
    this.fractionDescription,
    this.geographicalLocation,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.organism,
    this.organismId,
    this.organismName,
    this.parentSubstanceId,
    this.parentSubstanceName,
    this.partDescription,
    this.sourceMaterialClass,
    this.sourceMaterialState,
    this.sourceMaterialType,
    super.text,
  });
  
  @override
  factory SubstanceSourceMaterial.fromJson(Map<String, dynamic> json) {
    return SubstanceSourceMaterial(
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      countryOfOrigin: (json['countryOfOrigin'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      developmentStage: json['developmentStage'] != null ? CodeableConcept.fromJson(json['developmentStage'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      fractionDescription: (json['fractionDescription'] as List<dynamic>?)?.map((e) => SubstanceSourceMaterialFractionDescription.fromJson(e as Map<String, dynamic>)).toList(),
      geographicalLocation: (json['geographicalLocation'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      organism: json['organism'] != null ? SubstanceSourceMaterialOrganism.fromJson(json['organism'] as Map<String, dynamic>) : null,
      organismId: json['organismId'] != null ? Identifier.fromJson(json['organismId'] as Map<String, dynamic>) : null,
      organismName: json['organismName'] as String?,
      parentSubstanceId: (json['parentSubstanceId'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      parentSubstanceName: (json['parentSubstanceName'] as List<dynamic>?)?.map((e) => e as String).toList(),
      partDescription: (json['partDescription'] as List<dynamic>?)?.map((e) => SubstanceSourceMaterialPartDescription.fromJson(e as Map<String, dynamic>)).toList(),
      sourceMaterialClass: json['sourceMaterialClass'] != null ? CodeableConcept.fromJson(json['sourceMaterialClass'] as Map<String, dynamic>) : null,
      sourceMaterialState: json['sourceMaterialState'] != null ? CodeableConcept.fromJson(json['sourceMaterialState'] as Map<String, dynamic>) : null,
      sourceMaterialType: json['sourceMaterialType'] != null ? CodeableConcept.fromJson(json['sourceMaterialType'] as Map<String, dynamic>) : null,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'contained': contained?.map((e) => e.toJson()).toList(),
      'countryOfOrigin': countryOfOrigin?.map((e) => e.toJson()).toList(),
      'developmentStage': developmentStage?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'fractionDescription': fractionDescription?.map((e) => e.toJson()).toList(),
      'geographicalLocation': geographicalLocation?.map((e) => e).toList(),
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'organism': organism?.toJson(),
      'organismId': organismId?.toJson(),
      'organismName': organismName,
      'parentSubstanceId': parentSubstanceId?.map((e) => e.toJson()).toList(),
      'parentSubstanceName': parentSubstanceName?.map((e) => e).toList(),
      'partDescription': partDescription?.map((e) => e.toJson()).toList(),
      'sourceMaterialClass': sourceMaterialClass?.toJson(),
      'sourceMaterialState': sourceMaterialState?.toJson(),
      'sourceMaterialType': sourceMaterialType?.toJson(),
      'text': text?.toJson(),
    };
  
  @override
  SubstanceSourceMaterial copyWith({
    List<Resource>? contained,
    List<CodeableConcept>? countryOfOrigin,
    CodeableConcept? developmentStage,
    List<Extension>? fhirExtension,
    List<SubstanceSourceMaterialFractionDescription>? fractionDescription,
    List<String>? geographicalLocation,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    SubstanceSourceMaterialOrganism? organism,
    Identifier? organismId,
    String? organismName,
    List<Identifier>? parentSubstanceId,
    List<String>? parentSubstanceName,
    List<SubstanceSourceMaterialPartDescription>? partDescription,
    CodeableConcept? sourceMaterialClass,
    CodeableConcept? sourceMaterialState,
    CodeableConcept? sourceMaterialType,
    Narrative? text,
  }) {
    return SubstanceSourceMaterial(
      contained: contained ?? this.contained,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
      developmentStage: developmentStage ?? this.developmentStage,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fractionDescription: fractionDescription ?? this.fractionDescription,
      geographicalLocation: geographicalLocation ?? this.geographicalLocation,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organism: organism ?? this.organism,
      organismId: organismId ?? this.organismId,
      organismName: organismName ?? this.organismName,
      parentSubstanceId: parentSubstanceId ?? this.parentSubstanceId,
      parentSubstanceName: parentSubstanceName ?? this.parentSubstanceName,
      partDescription: partDescription ?? this.partDescription,
      sourceMaterialClass: sourceMaterialClass ?? this.sourceMaterialClass,
      sourceMaterialState: sourceMaterialState ?? this.sourceMaterialState,
      sourceMaterialType: sourceMaterialType ?? this.sourceMaterialType,
      text: text ?? this.text,
    );
  }
}
