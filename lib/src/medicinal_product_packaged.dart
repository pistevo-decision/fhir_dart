part of '../fhir_dart.dart';

/// A medicinal product in a container or package.
class MedicinalProductPackaged extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicinalProductPackaged';

  /// Batch numbering.
  final List<MedicinalProductPackagedBatchIdentifier>? batchIdentifier;

  /// Textual description.
  final String? description;

  /// Unique identifier.
  final List<Identifier>? identifier;

  /// The legal status of supply of the medicinal product as classified by the regulator.
  final CodeableConcept? legalStatusOfSupply;

  /// Manufacturer of this Package Item.
  final List<Reference>? manufacturer;

  /// Manufacturer of this Package Item.
  final Reference? marketingAuthorization;

  /// Marketing information.
  final List<MarketingStatus>? marketingStatus;

  /// A packaging item, as a contained for medicine, possibly with other packaging items within.
  final List<MedicinalProductPackagedPackageItem> packageItem;

  /// The product with this is a pack for.
  final List<Reference>? subject;
  MedicinalProductPackaged({
    this.batchIdentifier,
    super.contained,
    this.description,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.legalStatusOfSupply,
    this.manufacturer,
    this.marketingAuthorization,
    this.marketingStatus,
    super.meta,
    super.modifierExtension,
    required this.packageItem,
    this.subject,
    super.text,
  });

  @override
  factory MedicinalProductPackaged.fromJson(Map<String, dynamic> json) {
    return MedicinalProductPackaged(
      batchIdentifier: (json['batchIdentifier'] as List<dynamic>?)
          ?.map((e) => MedicinalProductPackagedBatchIdentifier.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      legalStatusOfSupply: json['legalStatusOfSupply'] != null
          ? CodeableConcept.fromJson(
              json['legalStatusOfSupply'] as Map<String, dynamic>)
          : null,
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      marketingAuthorization: json['marketingAuthorization'] != null
          ? Reference.fromJson(
              json['marketingAuthorization'] as Map<String, dynamic>)
          : null,
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map((e) => MarketingStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      packageItem: (json['packageItem'] as List<dynamic>)
          .map((e) => MedicinalProductPackagedPackageItem.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      subject: (json['subject'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'batchIdentifier': batchIdentifier?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'legalStatusOfSupply': legalStatusOfSupply?.toJson(),
        'manufacturer': manufacturer?.map((e) => e.toJson()).toList(),
        'marketingAuthorization': marketingAuthorization?.toJson(),
        'marketingStatus': marketingStatus?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'packageItem': packageItem.map((e) => e.toJson()).toList(),
        'subject': subject?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  MedicinalProductPackaged copyWith({
    List<MedicinalProductPackagedBatchIdentifier>? batchIdentifier,
    List<Resource>? contained,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    CodeableConcept? legalStatusOfSupply,
    List<Reference>? manufacturer,
    Reference? marketingAuthorization,
    List<MarketingStatus>? marketingStatus,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<MedicinalProductPackagedPackageItem>? packageItem,
    List<Reference>? subject,
    Narrative? text,
  }) {
    return MedicinalProductPackaged(
      batchIdentifier: batchIdentifier ?? this.batchIdentifier,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      legalStatusOfSupply: legalStatusOfSupply ?? this.legalStatusOfSupply,
      manufacturer: manufacturer ?? this.manufacturer,
      marketingAuthorization:
          marketingAuthorization ?? this.marketingAuthorization,
      marketingStatus: marketingStatus ?? this.marketingStatus,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      packageItem: packageItem ?? this.packageItem,
      subject: subject ?? this.subject,
      text: text ?? this.text,
    );
  }
}
