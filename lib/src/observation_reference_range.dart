part of '../fhir_dart.dart';

/// Provides guide for interpretation
/// Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are interpreted as an "OR".   In other words, to represent two distinct target populations, two `referenceRange` elements would be used.
/// Most observations only have one generic reference range. Systems MAY choose to restrict to only supplying the relevant reference range based on knowledge about the patient (e.g., specific to the patient's age, gender, weight and other factors), but this might not be possible or appropriate. Whenever more than one reference range is supplied, the differences between them SHOULD be provided in the reference range and/or age properties.
class ObservationReferenceRange extends BackboneElement
    implements FhirResource {
  /// Applicable age range, if relevant
  /// The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so.
  final Range? age;

  /// Reference range population
  /// Codes to indicate the target population this reference range applies to.  For example, a reference range may be based on the normal population or a particular sex or race.  Multiple `appliesTo`  are interpreted as an "AND" of the target populations.  For example, to represent a target population of African American females, both a code of female and a code for African American would be used.
  /// This SHOULD be populated if there is more than one range.  If this element is not present then the normal population is assumed.
  final List<CodeableConcept>? appliesTo;

  /// High Range, if relevant
  /// The value of the high bound of the reference range.  The high bound of the reference range endpoint is inclusive of the value (e.g.  reference range is >=5 - <=9). If the high bound is omitted,  it is assumed to be meaningless (e.g. reference range is >= 2.3).
  final Quantity? high;

  /// Low Range, if relevant
  /// The value of the low bound of the reference range.  The low bound of the reference range endpoint is inclusive of the value (e.g.  reference range is >=5 - <=9). If the low bound is omitted,  it is assumed to be meaningless (e.g. reference range is <=2.3).
  final Quantity? low;

  /// Text based reference range in an observation which may be used when a quantitative range is not appropriate for an observation.  An example would be a reference value of "Negative" or a list or table of "normals".
  final String? text;

  /// Reference range qualifier
  /// Codes to indicate the what part of the targeted reference population it applies to. For example, the normal or therapeutic range.
  /// This SHOULD be populated if there is more than one range.  If this element is not present then the normal range is assumed.
  final CodeableConcept? type;
  ObservationReferenceRange({
    this.age,
    this.appliesTo,
    super.fhirExtension,
    this.high,
    super.id,
    this.low,
    super.modifierExtension,
    this.text,
    this.type,
  });

  @override
  factory ObservationReferenceRange.fromJson(Map<String, dynamic> json) {
    return ObservationReferenceRange(
      age: json['age'] != null
          ? Range.fromJson(json['age'] as Map<String, dynamic>)
          : null,
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      high: json['high'] != null
          ? Quantity.fromJson(json['high'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      low: json['low'] != null
          ? Quantity.fromJson(json['low'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'age': age?.toJson(),
        'appliesTo': appliesTo?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'high': high?.toJson(),
        'id': id,
        'low': low?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'text': text,
        'type': type?.toJson(),
      };

  @override
  ObservationReferenceRange copyWith({
    Range? age,
    List<CodeableConcept>? appliesTo,
    List<Extension>? fhirExtension,
    Quantity? high,
    String? id,
    Quantity? low,
    List<Extension>? modifierExtension,
    String? text,
    CodeableConcept? type,
  }) {
    return ObservationReferenceRange(
      age: age ?? this.age,
      appliesTo: appliesTo ?? this.appliesTo,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      high: high ?? this.high,
      id: id ?? this.id,
      low: low ?? this.low,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
