part of '../fhir_dart.dart';

 /// A kind of specimen with associated set of requirements.
class SpecimenDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'SpecimenDefinition';
   /// Specimen collection procedure
   /// The action to be performed for collecting the specimen.
  final List<CodeableConcept>? collection;
   /// Business identifier of a kind of specimen
   /// A business identifier associated with the kind of specimen.
  final Identifier? identifier;
   /// Patient preparation for collection
   /// Preparation of the patient for specimen collection.
  final List<CodeableConcept>? patientPreparation;
   /// Time aspect for collection
   /// Time aspect of specimen collection (duration or offset).
  final String? timeAspect;
   /// Kind of material to collect
   /// The kind of material to be collected.
  final CodeableConcept? typeCollected;
   /// Specimen in container intended for testing by lab
   /// Specimen conditioned in a container as expected by the testing laboratory.
  final List<SpecimenDefinitionTypeTested>? typeTested;
  SpecimenDefinition({
    this.collection,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.patientPreparation,
    super.text,
    this.timeAspect,
    this.typeCollected,
    this.typeTested,
  });
  
  @override
  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinition(
      collection: (json['collection'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>) : null,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      patientPreparation: (json['patientPreparation'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      timeAspect: json['timeAspect'] as String?,
      typeCollected: json['typeCollected'] != null ? CodeableConcept.fromJson(json['typeCollected'] as Map<String, dynamic>) : null,
      typeTested: (json['typeTested'] as List<dynamic>?)?.map((e) => SpecimenDefinitionTypeTested.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'collection': collection?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.toJson(),
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'patientPreparation': patientPreparation?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
      'timeAspect': timeAspect,
      'typeCollected': typeCollected?.toJson(),
      'typeTested': typeTested?.map((e) => e.toJson()).toList(),
    };
  
  @override
  SpecimenDefinition copyWith({
    List<CodeableConcept>? collection,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? patientPreparation,
    Narrative? text,
    String? timeAspect,
    CodeableConcept? typeCollected,
    List<SpecimenDefinitionTypeTested>? typeTested,
  }) {
    return SpecimenDefinition(
      collection: collection ?? this.collection,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patientPreparation: patientPreparation ?? this.patientPreparation,
      text: text ?? this.text,
      timeAspect: timeAspect ?? this.timeAspect,
      typeCollected: typeCollected ?? this.typeCollected,
      typeTested: typeTested ?? this.typeTested,
    );
  }
}
