part of '../fhir_dart.dart';

/// Todo.
class SubstancePolymer extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'SubstancePolymer';

  /// Todo.
  final CodeableConcept? fhirClass;

  /// Todo.
  final List<CodeableConcept>? copolymerConnectivity;

  /// Todo.
  final CodeableConcept? geometry;

  /// Todo.
  final List<String>? modification;

  /// Todo.
  final List<SubstancePolymerMonomerSet>? monomerSet;

  /// Todo.
  final List<SubstancePolymerRepeat>? repeat;
  SubstancePolymer({
    this.fhirClass,
    super.contained,
    this.copolymerConnectivity,
    super.fhirExtension,
    this.geometry,
    super.id,
    super.implicitRules,
    super.language,
    super.meta,
    this.modification,
    super.modifierExtension,
    this.monomerSet,
    this.repeat,
    super.text,
  });

  @override
  factory SubstancePolymer.fromJson(Map<String, dynamic> json) {
    return SubstancePolymer(
      fhirClass: json['class'] != null
          ? CodeableConcept.fromJson(
              (json['class'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      copolymerConnectivity: (json['copolymerConnectivity'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      geometry: json['geometry'] != null
          ? CodeableConcept.fromJson(
              (json['geometry'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modification: (json['modification'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      monomerSet: (json['monomerSet'] as List<dynamic>?)
          ?.map((e) => SubstancePolymerMonomerSet.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      repeat: (json['repeat'] as List<dynamic>?)
          ?.map((e) => SubstancePolymerRepeat.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'class': fhirClass?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'copolymerConnectivity':
            copolymerConnectivity?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'geometry': geometry?.toJson(),
        'id': id,
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modification': modification?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'monomerSet': monomerSet?.map((e) => e.toJson()).toList(),
        'repeat': repeat?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  SubstancePolymer copyWith({
    CodeableConcept? fhirClass,
    List<Resource>? contained,
    List<CodeableConcept>? copolymerConnectivity,
    List<Extension>? fhirExtension,
    CodeableConcept? geometry,
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<String>? modification,
    List<Extension>? modifierExtension,
    List<SubstancePolymerMonomerSet>? monomerSet,
    List<SubstancePolymerRepeat>? repeat,
    Narrative? text,
  }) {
    return SubstancePolymer(
      fhirClass: fhirClass ?? this.fhirClass,
      contained: contained ?? this.contained,
      copolymerConnectivity:
          copolymerConnectivity ?? this.copolymerConnectivity,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      geometry: geometry ?? this.geometry,
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modification: modification ?? this.modification,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      monomerSet: monomerSet ?? this.monomerSet,
      repeat: repeat ?? this.repeat,
      text: text ?? this.text,
    );
  }
}
