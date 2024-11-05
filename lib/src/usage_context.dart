part of '../fhir_dart.dart';

/// Base StructureDefinition for UsageContext Type: Specifies clinical/business/etc. metadata that can be used to retrieve, index and/or categorize an artifact. This metadata can either be specific to the applicable population (e.g., age category, DRG) or the specific context of care (e.g., venue, care setting, provider of care).
/// Consumers of the resource must be able to determine the intended applicability for the resource. Ideally, this information would be used programmatically to determine when and how it should be incorporated or exposed.
class UsageContext extends Element implements FhirResource {
  /// Type of context being specified
  /// A code that identifies the type of context being specified by this usage context.
  final Coding code;

  /// Value that defines the context
  /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
  final CodeableConcept? valueCodeableConcept;

  /// Value that defines the context
  /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
  final Quantity? valueQuantity;

  /// Value that defines the context
  /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
  final Range? valueRange;

  /// Value that defines the context
  /// A value that defines the context specified in this context of use. The interpretation of the value is defined by the code.
  final Reference? valueReference;
  UsageContext({
    required this.code,
    super.fhirExtension,
    super.id,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
  });

  @override
  factory UsageContext.fromJson(Map<String, dynamic> json) {
    return UsageContext(
      code: Coding.fromJson((json['code'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
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
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'valueCodeableConcept': valueCodeableConcept?.toJson(),
        'valueQuantity': valueQuantity?.toJson(),
        'valueRange': valueRange?.toJson(),
        'valueReference': valueReference?.toJson(),
      };

  @override
  UsageContext copyWith({
    Coding? code,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    Reference? valueReference,
  }) {
    return UsageContext(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueReference: valueReference ?? this.valueReference,
    );
  }
}
