part of '../fhir_dart.dart';

/// Include / Exclude group members by Trait
/// Identifies traits whose presence r absence is shared by members of the group.
/// All the identified characteristics must be true for an entity to a member of the group.
class GroupCharacteristic extends BackboneElement implements FhirResource {
  /// Kind of characteristic
  /// A code that identifies the kind of trait being asserted.
  final CodeableConcept code;

  /// Group includes or excludes
  /// If true, indicates the characteristic is one that is NOT held by members of the group.
  /// This is labeled as "Is Modifier" because applications cannot wrongly include excluded members as included or vice versa.
  final bool exclude;

  /// Period over which characteristic is tested
  /// The period over which the characteristic is tested; e.g. the patient had an operation during the month of June.
  final Period? period;

  /// Value held by characteristic
  /// The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
  /// For Range, it means members of the group have a value that falls somewhere within the specified range.
  final bool? valueBoolean;

  /// Value held by characteristic
  /// The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
  /// For Range, it means members of the group have a value that falls somewhere within the specified range.
  final CodeableConcept? valueCodeableConcept;

  /// Value held by characteristic
  /// The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
  /// For Range, it means members of the group have a value that falls somewhere within the specified range.
  final Quantity? valueQuantity;

  /// Value held by characteristic
  /// The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
  /// For Range, it means members of the group have a value that falls somewhere within the specified range.
  final Range? valueRange;

  /// Value held by characteristic
  /// The value of the trait that holds (or does not hold - see 'exclude') for members of the group.
  /// For Range, it means members of the group have a value that falls somewhere within the specified range.
  final Reference? valueReference;
  GroupCharacteristic({
    required this.code,
    required this.exclude,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.period,
    this.valueBoolean,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
  });

  @override
  factory GroupCharacteristic.fromJson(Map<String, dynamic> json) {
    return GroupCharacteristic(
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      exclude: json['exclude'] as bool,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      valueBoolean: json['valueBoolean'] as bool?,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['valueCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              (json['valueQuantity'] as Map).cast<String, dynamic>())
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson((json['valueRange'] as Map).cast<String, dynamic>())
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(
              (json['valueReference'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code.toJson(),
        'exclude': exclude,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'valueBoolean': valueBoolean,
        'valueCodeableConcept': valueCodeableConcept?.toJson(),
        'valueQuantity': valueQuantity?.toJson(),
        'valueRange': valueRange?.toJson(),
        'valueReference': valueReference?.toJson(),
      };

  @override
  GroupCharacteristic copyWith({
    CodeableConcept? code,
    bool? exclude,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    bool? valueBoolean,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
  }) {
    return GroupCharacteristic(
      code: code ?? this.code,
      exclude: exclude ?? this.exclude,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueReference: valueReference ?? this.valueReference,
    );
  }
}
