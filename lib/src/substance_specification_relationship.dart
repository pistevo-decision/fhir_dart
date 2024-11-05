part of '../fhir_dart.dart';

/// A link between this substance and another, with details of the relationship.
class SubstanceSpecificationRelationship extends BackboneElement
    implements FhirResource {
  /// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
  final Quantity? amountQuantity;

  /// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
  final Range? amountRange;

  /// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
  final Ratio? amountRatio;

  /// A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.
  final String? amountString;

  /// For use when the numeric.
  final Ratio? amountRatioLowLimit;

  /// An operator for the amount, for example "average", "approximately", "less than".
  final CodeableConcept? amountType;

  /// For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.
  final bool? isDefining;

  /// For example "salt to parent", "active moiety", "starting material".
  final CodeableConcept? relationship;

  /// Supporting literature.
  final List<Reference>? source;

  /// A pointer to another substance, as a resource or just a representational code.
  final CodeableConcept? substanceCodeableConcept;

  /// A pointer to another substance, as a resource or just a representational code.
  final Reference? substanceReference;
  SubstanceSpecificationRelationship({
    this.amountQuantity,
    this.amountRange,
    this.amountRatio,
    this.amountString,
    this.amountRatioLowLimit,
    this.amountType,
    super.fhirExtension,
    super.id,
    this.isDefining,
    super.modifierExtension,
    this.relationship,
    this.source,
    this.substanceCodeableConcept,
    this.substanceReference,
  });

  @override
  factory SubstanceSpecificationRelationship.fromJson(
      Map<String, dynamic> json) {
    return SubstanceSpecificationRelationship(
      amountQuantity: json['amountQuantity'] != null
          ? Quantity.fromJson(
              (json['amountQuantity'] as Map).cast<String, dynamic>())
          : null,
      amountRange: json['amountRange'] != null
          ? Range.fromJson((json['amountRange'] as Map).cast<String, dynamic>())
          : null,
      amountRatio: json['amountRatio'] != null
          ? Ratio.fromJson((json['amountRatio'] as Map).cast<String, dynamic>())
          : null,
      amountString: json['amountString'] as String?,
      amountRatioLowLimit: json['amountRatioLowLimit'] != null
          ? Ratio.fromJson(
              (json['amountRatioLowLimit'] as Map).cast<String, dynamic>())
          : null,
      amountType: json['amountType'] != null
          ? CodeableConcept.fromJson(
              (json['amountType'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      isDefining: json['isDefining'] as bool?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      relationship: json['relationship'] != null
          ? CodeableConcept.fromJson(
              (json['relationship'] as Map).cast<String, dynamic>())
          : null,
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      substanceCodeableConcept: json['substanceCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              (json['substanceCodeableConcept'] as Map).cast<String, dynamic>())
          : null,
      substanceReference: json['substanceReference'] != null
          ? Reference.fromJson(
              (json['substanceReference'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'amountQuantity': amountQuantity?.toJson(),
        'amountRange': amountRange?.toJson(),
        'amountRatio': amountRatio?.toJson(),
        'amountString': amountString,
        'amountRatioLowLimit': amountRatioLowLimit?.toJson(),
        'amountType': amountType?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'isDefining': isDefining,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'relationship': relationship?.toJson(),
        'source': source?.map((e) => e.toJson()).toList(),
        'substanceCodeableConcept': substanceCodeableConcept?.toJson(),
        'substanceReference': substanceReference?.toJson(),
      };

  @override
  SubstanceSpecificationRelationship copyWith({
    Quantity? amountQuantity,
    Range? amountRange,
    Ratio? amountRatio,
    String? amountString,
    Ratio? amountRatioLowLimit,
    CodeableConcept? amountType,
    List<Extension>? fhirExtension,
    String? id,
    bool? isDefining,
    List<Extension>? modifierExtension,
    CodeableConcept? relationship,
    List<Reference>? source,
    CodeableConcept? substanceCodeableConcept,
    Reference? substanceReference,
  }) {
    return SubstanceSpecificationRelationship(
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountRange: amountRange ?? this.amountRange,
      amountRatio: amountRatio ?? this.amountRatio,
      amountString: amountString ?? this.amountString,
      amountRatioLowLimit: amountRatioLowLimit ?? this.amountRatioLowLimit,
      amountType: amountType ?? this.amountType,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      isDefining: isDefining ?? this.isDefining,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationship: relationship ?? this.relationship,
      source: source ?? this.source,
      substanceCodeableConcept:
          substanceCodeableConcept ?? this.substanceCodeableConcept,
      substanceReference: substanceReference ?? this.substanceReference,
    );
  }
}
