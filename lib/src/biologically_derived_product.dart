part of '../fhir_dart.dart';

 /// Substances include, but are not limited to: whole blood, bone marrow, organs, and manipulated blood cells.
 /// A material substance originating from a biological entity intended to be transplanted or infused
 /// into another (possibly the same) biological entity.
class BiologicallyDerivedProduct extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'BiologicallyDerivedProduct';
   /// How this product was collected.
  final BiologicallyDerivedProductCollection? collection;
   /// External ids for this item
   /// This records identifiers associated with this biologically derived product instance that are defined by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate (e.g. in CDA documents, or in written / printed documentation).
  final List<Identifier>? identifier;
   /// Any manipulation of product post-collection that is intended to alter the product.  For example a buffy-coat enrichment or CD8 reduction of Peripheral Blood Stem Cells to make it more suitable for infusion.
  final BiologicallyDerivedProductManipulation? manipulation;
   /// BiologicallyDerivedProduct parent
   /// Parent product (if any).
   /// For products that have multiple collections. For example Peripheral Blood Stem Cells may be collected over several days from a single donor and the donation split into in multiple containers which must be linked to the parent donation.
  final List<Reference>? parent;
   /// Any processing of the product during collection that does not change the fundamental nature of the product. For example adding anti-coagulants during the collection of Peripheral Blood Stem Cells.
  final List<BiologicallyDerivedProductProcessing>? processing;
   /// Broad category of this product.
  final String? productCategory; // Possible values: 'organ', 'tissue', 'fluid', 'cells', 'biologicalAgent'
   /// What this biologically derived product is
   /// A code that identifies the kind of this biologically derived product (SNOMED Ctcode).
  final CodeableConcept? productCode;
   /// The amount of this biologically derived product
   /// Number of discrete units within this product.
  final int? quantity;
   /// Procedure request to obtain this biologically derived product.
  final List<Reference>? request;
   /// available | unavailable
   /// Whether the product is currently available.
  final String? status; // Possible values: 'available', 'unavailable'
   /// Product storage.
  final List<BiologicallyDerivedProductStorage>? storage;
  BiologicallyDerivedProduct({
    this.collection,
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.manipulation,
    super.meta,
    super.modifierExtension,
    this.parent,
    this.processing,
    this.productCategory,
    this.productCode,
    this.quantity,
    this.request,
    this.status,
    this.storage,
    super.text,
  });
  
  @override
  factory BiologicallyDerivedProduct.fromJson(Map<String, dynamic> json) {
    return BiologicallyDerivedProduct(
      collection: json['collection'] != null ? BiologicallyDerivedProductCollection.fromJson(json['collection'] as Map<String, dynamic>) : null,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      manipulation: json['manipulation'] != null ? BiologicallyDerivedProductManipulation.fromJson(json['manipulation'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      parent: (json['parent'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      processing: (json['processing'] as List<dynamic>?)?.map((e) => BiologicallyDerivedProductProcessing.fromJson(e as Map<String, dynamic>)).toList(),
      productCategory: json['productCategory'] as String?,
      productCode: json['productCode'] != null ? CodeableConcept.fromJson(json['productCode'] as Map<String, dynamic>) : null,
      quantity: json['quantity'] as int?,
      request: (json['request'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      status: json['status'] as String?,
      storage: (json['storage'] as List<dynamic>?)?.map((e) => BiologicallyDerivedProductStorage.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'collection': collection?.toJson(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'manipulation': manipulation?.toJson(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'parent': parent?.map((e) => e.toJson()).toList(),
      'processing': processing?.map((e) => e.toJson()).toList(),
      'productCategory': productCategory,
      'productCode': productCode?.toJson(),
      'quantity': quantity,
      'request': request?.map((e) => e.toJson()).toList(),
      'status': status,
      'storage': storage?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  BiologicallyDerivedProduct copyWith({
    BiologicallyDerivedProductCollection? collection,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    BiologicallyDerivedProductManipulation? manipulation,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Reference>? parent,
    List<BiologicallyDerivedProductProcessing>? processing,
    String? productCategory,
    CodeableConcept? productCode,
    int? quantity,
    List<Reference>? request,
    String? status,
    List<BiologicallyDerivedProductStorage>? storage,
    Narrative? text,
  }) {
    return BiologicallyDerivedProduct(
      collection: collection ?? this.collection,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      manipulation: manipulation ?? this.manipulation,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      parent: parent ?? this.parent,
      processing: processing ?? this.processing,
      productCategory: productCategory ?? this.productCategory,
      productCode: productCode ?? this.productCode,
      quantity: quantity ?? this.quantity,
      request: request ?? this.request,
      status: status ?? this.status,
      storage: storage ?? this.storage,
      text: text ?? this.text,
    );
  }
}
