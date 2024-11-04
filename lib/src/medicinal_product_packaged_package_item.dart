part of '../fhir_dart.dart';

 /// A packaging item, as a contained for medicine, possibly with other packaging items within.
class MedicinalProductPackagedPackageItem extends BackboneElement implements FhirResource {
   /// A possible alternate material for the packaging.
  final List<CodeableConcept>? alternateMaterial;
   /// A device accompanying a medicinal product.
  final List<Reference>? device;
   /// Including possibly Data Carrier Identifier.
  final List<Identifier>? identifier;
   /// The manufactured item as contained in the packaged medicinal product.
  final List<Reference>? manufacturedItem;
   /// Manufacturer of this Package Item.
  final List<Reference>? manufacturer;
   /// Material type of the package item.
  final List<CodeableConcept>? material;
   /// Other codeable characteristics.
  final List<CodeableConcept>? otherCharacteristics;
   /// Allows containers within containers.
  final List<MedicinalProductPackagedPackageItem>? packageItem;
   /// Dimensions, color etc.
  final ProdCharacteristic? physicalCharacteristics;
   /// The quantity of this package in the medicinal product, at the current level of packaging. The outermost is always 1.
  final Quantity quantity;
   /// Shelf Life and storage information.
  final List<ProductShelfLife>? shelfLifeStorage;
   /// The physical type of the container of the medicine.
  final CodeableConcept type;
  MedicinalProductPackagedPackageItem({
    this.alternateMaterial,
    this.device,
    super.fhirExtension,
    super.id,
    this.identifier,
    this.manufacturedItem,
    this.manufacturer,
    this.material,
    super.modifierExtension,
    this.otherCharacteristics,
    this.packageItem,
    this.physicalCharacteristics,
    required this.quantity,
    this.shelfLifeStorage,
    required this.type,
  });
  
  @override
  factory MedicinalProductPackagedPackageItem.fromJson(Map<String, dynamic> json) {
    return MedicinalProductPackagedPackageItem(
      alternateMaterial: (json['alternateMaterial'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      device: (json['device'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      manufacturedItem: (json['manufacturedItem'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      material: (json['material'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      otherCharacteristics: (json['otherCharacteristics'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      packageItem: (json['packageItem'] as List<dynamic>?)?.map((e) => MedicinalProductPackagedPackageItem.fromJson(e as Map<String, dynamic>)).toList(),
      physicalCharacteristics: json['physicalCharacteristics'] != null ? ProdCharacteristic.fromJson(json['physicalCharacteristics'] as Map<String, dynamic>) : null,
      quantity: Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)?.map((e) => ProductShelfLife.fromJson(e as Map<String, dynamic>)).toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'alternateMaterial': alternateMaterial?.map((e) => e.toJson()).toList(),
      'device': device?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'manufacturedItem': manufacturedItem?.map((e) => e.toJson()).toList(),
      'manufacturer': manufacturer?.map((e) => e.toJson()).toList(),
      'material': material?.map((e) => e.toJson()).toList(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'otherCharacteristics': otherCharacteristics?.map((e) => e.toJson()).toList(),
      'packageItem': packageItem?.map((e) => e.toJson()).toList(),
      'physicalCharacteristics': physicalCharacteristics?.toJson(),
      'quantity': quantity.toJson(),
      'shelfLifeStorage': shelfLifeStorage?.map((e) => e.toJson()).toList(),
      'type': type.toJson(),
    };
  
  @override
  MedicinalProductPackagedPackageItem copyWith({
    List<CodeableConcept>? alternateMaterial,
    List<Reference>? device,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    List<Reference>? manufacturedItem,
    List<Reference>? manufacturer,
    List<CodeableConcept>? material,
    List<Extension>? modifierExtension,
    List<CodeableConcept>? otherCharacteristics,
    List<MedicinalProductPackagedPackageItem>? packageItem,
    ProdCharacteristic? physicalCharacteristics,
    Quantity? quantity,
    List<ProductShelfLife>? shelfLifeStorage,
    CodeableConcept? type,
  }) {
    return MedicinalProductPackagedPackageItem(
      alternateMaterial: alternateMaterial ?? this.alternateMaterial,
      device: device ?? this.device,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      manufacturedItem: manufacturedItem ?? this.manufacturedItem,
      manufacturer: manufacturer ?? this.manufacturer,
      material: material ?? this.material,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      otherCharacteristics: otherCharacteristics ?? this.otherCharacteristics,
      packageItem: packageItem ?? this.packageItem,
      physicalCharacteristics: physicalCharacteristics ?? this.physicalCharacteristics,
      quantity: quantity ?? this.quantity,
      shelfLifeStorage: shelfLifeStorage ?? this.shelfLifeStorage,
      type: type ?? this.type,
    );
  }
}
