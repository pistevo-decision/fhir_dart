part of '../fhir_dart.dart';

/// Ordered item details
/// Specific parameters for the ordered item.  For example, the size of the indicated item.
class SupplyRequestParameter extends BackboneElement implements FhirResource {
  /// Item detail
  /// A code or string that identifies the device detail being asserted.
  final CodeableConcept? code;

  /// Value of detail
  /// The value of the device detail.
  /// Range means device should have a value that falls somewhere within the specified range.
  final bool? valueBoolean;

  /// Value of detail
  /// The value of the device detail.
  /// Range means device should have a value that falls somewhere within the specified range.
  final CodeableConcept? valueCodeableConcept;

  /// Value of detail
  /// The value of the device detail.
  /// Range means device should have a value that falls somewhere within the specified range.
  final Quantity? valueQuantity;

  /// Value of detail
  /// The value of the device detail.
  /// Range means device should have a value that falls somewhere within the specified range.
  final Range? valueRange;
  SupplyRequestParameter({
    this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.valueBoolean,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
  });

  @override
  factory SupplyRequestParameter.fromJson(Map<String, dynamic> json) {
    return SupplyRequestParameter(
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      valueBoolean: json['valueBoolean'] as bool?,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'valueBoolean': valueBoolean,
        'valueCodeableConcept': valueCodeableConcept?.toJson(),
        'valueQuantity': valueQuantity?.toJson(),
        'valueRange': valueRange?.toJson(),
      };

  @override
  SupplyRequestParameter copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    bool? valueBoolean,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
  }) {
    return SupplyRequestParameter(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
    );
  }
}
