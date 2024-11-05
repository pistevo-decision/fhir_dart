part of '../fhir_dart.dart';

/// Qualified range for continuous and ordinal observation results
/// Multiple  ranges of results qualified by different contexts for ordinal or continuous observations conforming to this ObservationDefinition.
class ObservationDefinitionQualifiedInterval extends BackboneElement
    implements FhirResource {
  /// Applicable age range, if relevant
  /// The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so.
  /// Some analytes vary greatly over age.
  final Range? age;

  /// Targetted population of the range
  /// Codes to indicate the target population this reference range applies to.
  /// If this element is not present then the global population is assumed.
  final List<CodeableConcept>? appliesTo;

  /// The category of interval of values for continuous or ordinal observations conforming to this ObservationDefinition.
  final String?
      category; // Possible values: 'reference', 'critical', 'absolute'
  /// Condition associated with the reference range
  /// Text based condition for which the reference range is valid.
  final String? condition;

  /// Range context qualifier
  /// Codes to indicate the health context the range applies to. For example, the normal or therapeutic range.
  final CodeableConcept? context;

  /// Sex of the population the range applies to.
  final String? gender; // Possible values: 'male', 'female', 'other', 'unknown'
  /// Applicable gestational age range, if relevant
  /// The gestational age to which this reference range is applicable, in the context of pregnancy.
  final Range? gestationalAge;

  /// The interval itself, for continuous or ordinal observations
  /// The low and high values determining the interval. There may be only one of the two.
  final Range? range;
  ObservationDefinitionQualifiedInterval({
    this.age,
    this.appliesTo,
    this.category,
    this.condition,
    this.context,
    super.fhirExtension,
    this.gender,
    this.gestationalAge,
    super.id,
    super.modifierExtension,
    this.range,
  });

  @override
  factory ObservationDefinitionQualifiedInterval.fromJson(
      Map<String, dynamic> json) {
    return ObservationDefinitionQualifiedInterval(
      age: json['age'] != null
          ? Range.fromJson((json['age'] as Map).cast<String, dynamic>())
          : null,
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: json['category'] as String?,
      condition: json['condition'] as String?,
      context: json['context'] != null
          ? CodeableConcept.fromJson(
              (json['context'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      gender: json['gender'] as String?,
      gestationalAge: json['gestationalAge'] != null
          ? Range.fromJson(
              (json['gestationalAge'] as Map).cast<String, dynamic>())
          : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      range: json['range'] != null
          ? Range.fromJson((json['range'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'age': age?.toJson(),
        'appliesTo': appliesTo?.map((e) => e.toJson()).toList(),
        'category': category,
        'condition': condition,
        'context': context?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'gender': gender,
        'gestationalAge': gestationalAge?.toJson(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'range': range?.toJson(),
      };

  @override
  ObservationDefinitionQualifiedInterval copyWith({
    Range? age,
    List<CodeableConcept>? appliesTo,
    String? category,
    String? condition,
    CodeableConcept? context,
    List<Extension>? fhirExtension,
    String? gender,
    Range? gestationalAge,
    String? id,
    List<Extension>? modifierExtension,
    Range? range,
  }) {
    return ObservationDefinitionQualifiedInterval(
      age: age ?? this.age,
      appliesTo: appliesTo ?? this.appliesTo,
      category: category ?? this.category,
      condition: condition ?? this.condition,
      context: context ?? this.context,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gender: gender ?? this.gender,
      gestationalAge: gestationalAge ?? this.gestationalAge,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      range: range ?? this.range,
    );
  }
}
