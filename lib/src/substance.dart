part of '../fhir_dart.dart';

 /// A homogeneous material with a definite composition.
class Substance extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Substance';
   /// What class/type of substance this is
   /// A code that classifies the general type of substance.  This is used  for searching, sorting and display purposes.
   /// The level of granularity is defined by the category concepts in the value set.   More fine-grained filtering can be performed using the metadata and/or terminology hierarchy in Substance.code.
  final List<CodeableConcept>? category;
   /// What substance this is
   /// A code (or set of codes) that identify this substance.
   /// This could be a reference to an externally defined code.  It could also be a locally assigned code (e.g. a formulary),  optionally with translations to the standard drug codes.
  final CodeableConcept code;
   /// Textual description of the substance, comments
   /// A description of the substance - its appearance, handling requirements, and other usage notes.
  final String? description;
   /// Unique identifier for the substance.
   /// This identifier is associated with the kind of substance in contrast to the  Substance.instance.identifier which is associated with the package/container.
  final List<Identifier>? identifier;
   /// Composition information about the substance
   /// A substance can be composed of other substances.
  final List<SubstanceIngredient>? ingredient;
   /// If this describes a specific package/container of the substance
   /// Substance may be used to describe a kind of substance, or a specific package/container of the substance: an instance.
  final List<SubstanceInstance>? instance;
   /// A code to indicate if the substance is actively used.
  final String? status; // Possible values: 'active', 'inactive', 'entered-in-error'
  Substance({
    this.category,
    required this.code,
    super.contained,
    this.description,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.ingredient,
    this.instance,
    super.language,
    super.meta,
    super.modifierExtension,
    this.status,
    super.text,
  });
  
  @override
  factory Substance.fromJson(Map<String, dynamic> json) {
    return Substance(
      category: (json['category'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      ingredient: (json['ingredient'] as List<dynamic>?)?.map((e) => SubstanceIngredient.fromJson(e as Map<String, dynamic>)).toList(),
      instance: (json['instance'] as List<dynamic>?)?.map((e) => SubstanceInstance.fromJson(e as Map<String, dynamic>)).toList(),
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      status: json['status'] as String?,
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'category': category?.map((e) => e.toJson()).toList(),
      'code': code.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'ingredient': ingredient?.map((e) => e.toJson()).toList(),
      'instance': instance?.map((e) => e.toJson()).toList(),
      'language': language,
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'status': status,
      'text': text?.toJson(),
    };
  
  @override
  Substance copyWith({
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Resource>? contained,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<SubstanceIngredient>? ingredient,
    List<SubstanceInstance>? instance,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? status,
    Narrative? text,
  }) {
    return Substance(
      category: category ?? this.category,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      ingredient: ingredient ?? this.ingredient,
      instance: instance ?? this.instance,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
