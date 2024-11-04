part of '../fhir_dart.dart';

/// Catalog entries are wrappers that contextualize items included in a catalog.
class CatalogEntry extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'CatalogEntry';

  /// Additional characteristics of the catalog entry
  /// Used for examplefor Out of Formulary, or any specifics.
  final List<CodeableConcept>? additionalCharacteristic;

  /// Additional classification of the catalog entry
  /// User for example for ATC classification, or.
  final List<CodeableConcept>? additionalClassification;

  /// Any additional identifier(s) for the catalog item, in the same granularity or concept
  /// Used in supporting related concepts, e.g. NDC to RxNorm.
  final List<Identifier>? additionalIdentifier;

  /// Classification (category or class) of the item entry
  /// Classes of devices, or ATC for medication.
  final List<CodeableConcept>? classification;

  /// Unique identifier of the catalog item
  /// Used in supporting different identifiers for the same product, e.g. manufacturer code and retailer code.
  final List<Identifier>? identifier;

  /// When was this catalog last updated
  /// Typically date of issue is different from the beginning of the validity. This can be used to see when an item was last updated.
  /// Perhaps not needed - if we use fhir resource metadata.
  final String? lastUpdated;

  /// Whether the entry represents an orderable item.
  final bool orderable;

  /// The item that is being defined
  /// The item in a catalog or definition.
  final Reference referencedItem;

  /// An item that this catalog entry is related to
  /// Used for example, to point to a substance, or to a device used to administer a medication.
  final List<CatalogEntryRelatedEntry>? relatedEntry;

  /// Used to support catalog exchange even for unsupported products, e.g. getting list of medications even if not prescribable.
  final String?
      status; // Possible values: 'draft', 'active', 'retired', 'unknown'
  /// The type of item - medication, device, service, protocol or other.
  final CodeableConcept? type;

  /// The time period in which this catalog entry is expected to be active.
  final Period? validityPeriod;

  /// The date until which this catalog entry is expected to be active.
  final String? validTo;
  CatalogEntry({
    this.additionalCharacteristic,
    this.additionalClassification,
    this.additionalIdentifier,
    this.classification,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.lastUpdated,
    super.meta,
    super.modifierExtension,
    required this.orderable,
    required this.referencedItem,
    this.relatedEntry,
    this.status,
    super.text,
    this.type,
    this.validityPeriod,
    this.validTo,
  });

  @override
  factory CatalogEntry.fromJson(Map<String, dynamic> json) {
    return CatalogEntry(
      additionalCharacteristic:
          (json['additionalCharacteristic'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
      additionalClassification:
          (json['additionalClassification'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
      additionalIdentifier: (json['additionalIdentifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      classification: (json['classification'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderable: json['orderable'] as bool,
      referencedItem:
          Reference.fromJson(json['referencedItem'] as Map<String, dynamic>),
      relatedEntry: (json['relatedEntry'] as List<dynamic>?)
          ?.map((e) =>
              CatalogEntryRelatedEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      validityPeriod: json['validityPeriod'] != null
          ? Period.fromJson(json['validityPeriod'] as Map<String, dynamic>)
          : null,
      validTo: json['validTo'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'additionalCharacteristic':
            additionalCharacteristic?.map((e) => e.toJson()).toList(),
        'additionalClassification':
            additionalClassification?.map((e) => e.toJson()).toList(),
        'additionalIdentifier':
            additionalIdentifier?.map((e) => e.toJson()).toList(),
        'classification': classification?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'lastUpdated': lastUpdated,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'orderable': orderable,
        'referencedItem': referencedItem.toJson(),
        'relatedEntry': relatedEntry?.map((e) => e.toJson()).toList(),
        'status': status,
        'text': text?.toJson(),
        'type': type?.toJson(),
        'validityPeriod': validityPeriod?.toJson(),
        'validTo': validTo,
      };

  @override
  CatalogEntry copyWith({
    List<CodeableConcept>? additionalCharacteristic,
    List<CodeableConcept>? additionalClassification,
    List<Identifier>? additionalIdentifier,
    List<CodeableConcept>? classification,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    String? lastUpdated,
    Meta? meta,
    List<Extension>? modifierExtension,
    bool? orderable,
    Reference? referencedItem,
    List<CatalogEntryRelatedEntry>? relatedEntry,
    String? status,
    Narrative? text,
    CodeableConcept? type,
    Period? validityPeriod,
    String? validTo,
  }) {
    return CatalogEntry(
      additionalCharacteristic:
          additionalCharacteristic ?? this.additionalCharacteristic,
      additionalClassification:
          additionalClassification ?? this.additionalClassification,
      additionalIdentifier: additionalIdentifier ?? this.additionalIdentifier,
      classification: classification ?? this.classification,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      orderable: orderable ?? this.orderable,
      referencedItem: referencedItem ?? this.referencedItem,
      relatedEntry: relatedEntry ?? this.relatedEntry,
      status: status ?? this.status,
      text: text ?? this.text,
      type: type ?? this.type,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      validTo: validTo ?? this.validTo,
    );
  }
}
