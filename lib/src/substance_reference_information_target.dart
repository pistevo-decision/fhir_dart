part of '../fhir_dart.dart';

/// Todo.
class SubstanceReferenceInformationTarget extends BackboneElement
    implements FhirResource {
  /// Todo.
  final Quantity? amountQuantity;

  /// Todo.
  final Range? amountRange;

  /// Todo.
  final String? amountString;

  /// Todo.
  final CodeableConcept? amountType;

  /// Todo.
  final CodeableConcept? interaction;

  /// Todo.
  final CodeableConcept? organism;

  /// Todo.
  final CodeableConcept? organismType;

  /// Todo.
  final List<Reference>? source;

  /// Todo.
  final Identifier? target;

  /// Todo.
  final CodeableConcept? type;
  SubstanceReferenceInformationTarget({
    this.amountQuantity,
    this.amountRange,
    this.amountString,
    this.amountType,
    super.fhirExtension,
    super.id,
    this.interaction,
    super.modifierExtension,
    this.organism,
    this.organismType,
    this.source,
    this.target,
    this.type,
  });

  @override
  factory SubstanceReferenceInformationTarget.fromJson(
      Map<String, dynamic> json) {
    return SubstanceReferenceInformationTarget(
      amountQuantity: json['amountQuantity'] != null
          ? Quantity.fromJson(json['amountQuantity'] as Map<String, dynamic>)
          : null,
      amountRange: json['amountRange'] != null
          ? Range.fromJson(json['amountRange'] as Map<String, dynamic>)
          : null,
      amountString: json['amountString'] as String?,
      amountType: json['amountType'] != null
          ? CodeableConcept.fromJson(json['amountType'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      interaction: json['interaction'] != null
          ? CodeableConcept.fromJson(
              json['interaction'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      organism: json['organism'] != null
          ? CodeableConcept.fromJson(json['organism'] as Map<String, dynamic>)
          : null,
      organismType: json['organismType'] != null
          ? CodeableConcept.fromJson(
              json['organismType'] as Map<String, dynamic>)
          : null,
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      target: json['target'] != null
          ? Identifier.fromJson(json['target'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amountQuantity': amountQuantity?.toJson(),
        'amountRange': amountRange?.toJson(),
        'amountString': amountString,
        'amountType': amountType?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'interaction': interaction?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'organism': organism?.toJson(),
        'organismType': organismType?.toJson(),
        'source': source?.map((e) => e.toJson()).toList(),
        'target': target?.toJson(),
        'type': type?.toJson(),
      };

  @override
  SubstanceReferenceInformationTarget copyWith({
    Quantity? amountQuantity,
    Range? amountRange,
    String? amountString,
    CodeableConcept? amountType,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? interaction,
    List<Extension>? modifierExtension,
    CodeableConcept? organism,
    CodeableConcept? organismType,
    List<Reference>? source,
    Identifier? target,
    CodeableConcept? type,
  }) {
    return SubstanceReferenceInformationTarget(
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountRange: amountRange ?? this.amountRange,
      amountString: amountString ?? this.amountString,
      amountType: amountType ?? this.amountType,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      interaction: interaction ?? this.interaction,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      organism: organism ?? this.organism,
      organismType: organismType ?? this.organismType,
      source: source ?? this.source,
      target: target ?? this.target,
      type: type ?? this.type,
    );
  }
}
