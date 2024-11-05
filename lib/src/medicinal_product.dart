part of '../fhir_dart.dart';

/// Detailed definition of a medicinal product, typically for uses other than direct patient care (e.g. regulatory use).
class MedicinalProduct extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'MedicinalProduct';

  /// Whether the Medicinal Product is subject to additional monitoring for regulatory reasons.
  final CodeableConcept? additionalMonitoringIndicator;

  /// Supporting documentation, typically for regulatory submission.
  final List<Reference>? attachedDocument;

  /// Clinical trials or studies that this product is involved in.
  final List<Reference>? clinicalTrial;

  /// The dose form for a single part product, or combined form of a multiple part product.
  final CodeableConcept? combinedPharmaceuticalDoseForm;

  /// A product specific contact, person (in a role), or an organization.
  final List<Reference>? contact;

  /// Reference to another product, e.g. for linking authorised to investigational product.
  final List<Identifier>? crossReference;

  /// If this medicine applies to human or veterinary uses.
  final Coding? domain;

  /// Business identifier for this product. Could be an MPID.
  final List<Identifier>? identifier;

  /// The legal status of supply of the medicinal product as classified by the regulator.
  final CodeableConcept? legalStatusOfSupply;

  /// An operation applied to the product, for manufacturing or adminsitrative purpose.
  final List<MedicinalProductManufacturingBusinessOperation>?
      manufacturingBusinessOperation;

  /// Marketing status of the medicinal product, in contrast to marketing authorizaton.
  final List<MarketingStatus>? marketingStatus;

  /// A master file for to the medicinal product (e.g. Pharmacovigilance System Master File).
  final List<Reference>? masterFile;

  /// The product's name, including full name and possibly coded parts.
  final List<MedicinalProductName> name;

  /// Package representation for the product.
  final List<Reference>? packagedMedicinalProduct;

  /// If authorised for use in children.
  final CodeableConcept? paediatricUseIndicator;

  /// Pharmaceutical aspects of product.
  final List<Reference>? pharmaceuticalProduct;

  /// Allows the product to be classified by various systems.
  final List<CodeableConcept>? productClassification;

  /// Indicates if the medicinal product has an orphan designation for the treatment of a rare disease.
  final List<MedicinalProductSpecialDesignation>? specialDesignation;

  /// Whether the Medicinal Product is subject to special measures for regulatory reasons.
  final List<String>? specialMeasures;

  /// Regulatory type, e.g. Investigational or Authorized.
  final CodeableConcept? type;
  MedicinalProduct({
    this.additionalMonitoringIndicator,
    this.attachedDocument,
    this.clinicalTrial,
    this.combinedPharmaceuticalDoseForm,
    this.contact,
    super.contained,
    this.crossReference,
    this.domain,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.legalStatusOfSupply,
    this.manufacturingBusinessOperation,
    this.marketingStatus,
    this.masterFile,
    super.meta,
    super.modifierExtension,
    required this.name,
    this.packagedMedicinalProduct,
    this.paediatricUseIndicator,
    this.pharmaceuticalProduct,
    this.productClassification,
    this.specialDesignation,
    this.specialMeasures,
    super.text,
    this.type,
  });

  @override
  factory MedicinalProduct.fromJson(Map<String, dynamic> json) {
    return MedicinalProduct(
      additionalMonitoringIndicator:
          json['additionalMonitoringIndicator'] != null
              ? CodeableConcept.fromJson(
                  (json['additionalMonitoringIndicator'] as Map)
                      .cast<String, dynamic>())
              : null,
      attachedDocument: (json['attachedDocument'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      clinicalTrial: (json['clinicalTrial'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      combinedPharmaceuticalDoseForm:
          json['combinedPharmaceuticalDoseForm'] != null
              ? CodeableConcept.fromJson(
                  (json['combinedPharmaceuticalDoseForm'] as Map)
                      .cast<String, dynamic>())
              : null,
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      crossReference: (json['crossReference'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      domain: json['domain'] != null
          ? Coding.fromJson((json['domain'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      legalStatusOfSupply: json['legalStatusOfSupply'] != null
          ? CodeableConcept.fromJson(
              (json['legalStatusOfSupply'] as Map).cast<String, dynamic>())
          : null,
      manufacturingBusinessOperation: (json['manufacturingBusinessOperation']
              as List<dynamic>?)
          ?.map((e) => MedicinalProductManufacturingBusinessOperation.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      marketingStatus: (json['marketingStatus'] as List<dynamic>?)
          ?.map((e) =>
              MarketingStatus.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      masterFile: (json['masterFile'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: (json['name'] as List<dynamic>)
          .map((e) =>
              MedicinalProductName.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      packagedMedicinalProduct: (json['packagedMedicinalProduct']
              as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      paediatricUseIndicator: json['paediatricUseIndicator'] != null
          ? CodeableConcept.fromJson(
              (json['paediatricUseIndicator'] as Map).cast<String, dynamic>())
          : null,
      pharmaceuticalProduct: (json['pharmaceuticalProduct'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      productClassification: (json['productClassification'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      specialDesignation: (json['specialDesignation'] as List<dynamic>?)
          ?.map((e) => MedicinalProductSpecialDesignation.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      specialMeasures: (json['specialMeasures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'additionalMonitoringIndicator':
            additionalMonitoringIndicator?.toJson(),
        'attachedDocument': attachedDocument?.map((e) => e.toJson()).toList(),
        'clinicalTrial': clinicalTrial?.map((e) => e.toJson()).toList(),
        'combinedPharmaceuticalDoseForm':
            combinedPharmaceuticalDoseForm?.toJson(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'crossReference': crossReference?.map((e) => e.toJson()).toList(),
        'domain': domain?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'legalStatusOfSupply': legalStatusOfSupply?.toJson(),
        'manufacturingBusinessOperation':
            manufacturingBusinessOperation?.map((e) => e.toJson()).toList(),
        'marketingStatus': marketingStatus?.map((e) => e.toJson()).toList(),
        'masterFile': masterFile?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name.map((e) => e.toJson()).toList(),
        'packagedMedicinalProduct':
            packagedMedicinalProduct?.map((e) => e.toJson()).toList(),
        'paediatricUseIndicator': paediatricUseIndicator?.toJson(),
        'pharmaceuticalProduct':
            pharmaceuticalProduct?.map((e) => e.toJson()).toList(),
        'productClassification':
            productClassification?.map((e) => e.toJson()).toList(),
        'specialDesignation':
            specialDesignation?.map((e) => e.toJson()).toList(),
        'specialMeasures': specialMeasures?.map((e) => e).toList(),
        'text': text?.toJson(),
        'type': type?.toJson(),
      };

  @override
  MedicinalProduct copyWith({
    CodeableConcept? additionalMonitoringIndicator,
    List<Reference>? attachedDocument,
    List<Reference>? clinicalTrial,
    CodeableConcept? combinedPharmaceuticalDoseForm,
    List<Reference>? contact,
    List<Resource>? contained,
    List<Identifier>? crossReference,
    Coding? domain,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    CodeableConcept? legalStatusOfSupply,
    List<MedicinalProductManufacturingBusinessOperation>?
        manufacturingBusinessOperation,
    List<MarketingStatus>? marketingStatus,
    List<Reference>? masterFile,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<MedicinalProductName>? name,
    List<Reference>? packagedMedicinalProduct,
    CodeableConcept? paediatricUseIndicator,
    List<Reference>? pharmaceuticalProduct,
    List<CodeableConcept>? productClassification,
    List<MedicinalProductSpecialDesignation>? specialDesignation,
    List<String>? specialMeasures,
    Narrative? text,
    CodeableConcept? type,
  }) {
    return MedicinalProduct(
      additionalMonitoringIndicator:
          additionalMonitoringIndicator ?? this.additionalMonitoringIndicator,
      attachedDocument: attachedDocument ?? this.attachedDocument,
      clinicalTrial: clinicalTrial ?? this.clinicalTrial,
      combinedPharmaceuticalDoseForm:
          combinedPharmaceuticalDoseForm ?? this.combinedPharmaceuticalDoseForm,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      crossReference: crossReference ?? this.crossReference,
      domain: domain ?? this.domain,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      legalStatusOfSupply: legalStatusOfSupply ?? this.legalStatusOfSupply,
      manufacturingBusinessOperation:
          manufacturingBusinessOperation ?? this.manufacturingBusinessOperation,
      marketingStatus: marketingStatus ?? this.marketingStatus,
      masterFile: masterFile ?? this.masterFile,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      packagedMedicinalProduct:
          packagedMedicinalProduct ?? this.packagedMedicinalProduct,
      paediatricUseIndicator:
          paediatricUseIndicator ?? this.paediatricUseIndicator,
      pharmaceuticalProduct:
          pharmaceuticalProduct ?? this.pharmaceuticalProduct,
      productClassification:
          productClassification ?? this.productClassification,
      specialDesignation: specialDesignation ?? this.specialDesignation,
      specialMeasures: specialMeasures ?? this.specialMeasures,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
