part of '../fhir_dart.dart';

/// Specifies descriptive properties of the medicine, such as color, shape, imprints, etc.
class MedicationKnowledgeDrugCharacteristic extends BackboneElement
    implements FhirResource {
  /// Code specifying the type of characteristic of medication
  /// A code specifying which characteristic of the medicine is being described (for example, colour, shape, imprint).
  final CodeableConcept? type;

  /// Description of the characteristic.
  /// The description should be provided as a CodeableConcept, SimpleQuantity or an image.  The description can be a string only when these others are not available.
  final String? valueBase64Binary;

  /// Description of the characteristic.
  /// The description should be provided as a CodeableConcept, SimpleQuantity or an image.  The description can be a string only when these others are not available.
  final CodeableConcept? valueCodeableConcept;

  /// Description of the characteristic.
  /// The description should be provided as a CodeableConcept, SimpleQuantity or an image.  The description can be a string only when these others are not available.
  final Quantity? valueQuantity;

  /// Description of the characteristic.
  /// The description should be provided as a CodeableConcept, SimpleQuantity or an image.  The description can be a string only when these others are not available.
  final String? valueString;
  MedicationKnowledgeDrugCharacteristic({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.type,
    this.valueBase64Binary,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueString,
  });

  @override
  factory MedicationKnowledgeDrugCharacteristic.fromJson(
      Map<String, dynamic> json) {
    return MedicationKnowledgeDrugCharacteristic(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      valueBase64Binary: json['valueBase64Binary'] as String?,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['valueCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              (json['valueQuantity'] as Map).cast<String, dynamic>())
          : null,
      valueString: json['valueString'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'type': type?.toJson(),
        'valueBase64Binary': valueBase64Binary,
        'valueCodeableConcept': valueCodeableConcept?.toJson(),
        'valueQuantity': valueQuantity?.toJson(),
        'valueString': valueString,
      };

  @override
  MedicationKnowledgeDrugCharacteristic copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    CodeableConcept? type,
    String? valueBase64Binary,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    String? valueString,
  }) {
    return MedicationKnowledgeDrugCharacteristic(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueString: valueString ?? this.valueString,
    );
  }
}
