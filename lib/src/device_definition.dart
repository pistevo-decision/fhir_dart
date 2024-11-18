part of '../fhir_dart.dart';

/// For the initial scope, this DeviceDefinition resource is only applicable to describe a single node in the containment tree that is produced by the context scanner in any medical device that implements or derives from the ISO/IEEE 11073 standard and that does not represent a metric. Examples for such a node are MDS, VMD, or Channel.
/// The characteristics, operational status and capabilities of a medical-related component of a medical device.
class DeviceDefinition extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'DeviceDefinition';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Device capabilities.
  final List<DeviceDefinitionCapability>? capability;

  /// Details for human/organization for support
  /// Contact details for an organization or a particular human that is responsible for the device.
  /// used for troubleshooting etc.
  final List<ContactPoint>? contact;

  /// A name given to the device to identify it.
  final List<DeviceDefinitionDeviceName>? deviceName;

  /// Instance identifier
  /// Unique instance identifiers assigned to a device by the software, manufacturers, other organizations or owners. For example: handle ID.
  final List<Identifier>? identifier;

  /// Language code for the human-readable text strings produced by the device (all supported).
  final List<CodeableConcept>? languageCode;

  /// Name of device manufacturer
  /// A name of the manufacturer.
  final Reference? manufacturerReference;

  /// Name of device manufacturer
  /// A name of the manufacturer.
  final String? manufacturerString;

  /// A substance used to create the material(s) of which the device is made.
  final List<DeviceDefinitionMaterial>? material;

  /// The model number for the device.
  final String? modelNumber;

  /// Device notes and comments
  /// Descriptive information, usage information or implantation information that is not captured in an existing element.
  final List<Annotation>? note;

  /// Access to on-line information about the device.
  final String? onlineInformation;

  /// Organization responsible for device
  /// An organization that is responsible for the provision and ongoing maintenance of the device.
  final Reference? owner;

  /// The parent device it can be part of.
  final Reference? parentDevice;

  /// Dimensions, color etc.
  final ProdCharacteristic? physicalCharacteristics;

  /// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
  final List<DeviceDefinitionProperty>? property;

  /// The quantity of the device present in the packaging (e.g. the number of devices present in a pack, or the number of devices in the same package of the medicinal product).
  final Quantity? quantity;

  /// Safety characteristics of the device.
  final List<CodeableConcept>? safety;

  /// Shelf Life and storage information.
  final List<ProductShelfLife>? shelfLifeStorage;

  /// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication.
  final List<DeviceDefinitionSpecialization>? specialization;

  /// What kind of device or device system this is.
  final CodeableConcept? type;

  /// Unique Device Identifier (UDI) Barcode string
  /// Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions it could have been sold.
  final List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier;

  /// Network address to contact device
  /// A network address on which the device may be contacted directly.
  /// If the device is running a FHIR server, the network address should  be the Base URL from which a conformance statement may be retrieved.
  final String? url;

  /// Available versions
  /// The available versions of the device, e.g., software versions.
  final List<String>? version;
  DeviceDefinition({
    this.capability,
    this.contact,
    super.contained,
    this.deviceName,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.languageCode,
    this.manufacturerReference,
    this.manufacturerString,
    this.material,
    super.meta,
    this.modelNumber,
    super.modifierExtension,
    this.note,
    this.onlineInformation,
    this.owner,
    this.parentDevice,
    this.physicalCharacteristics,
    this.property,
    this.quantity,
    this.safety,
    this.shelfLifeStorage,
    this.specialization,
    super.text,
    this.type,
    this.udiDeviceIdentifier,
    this.url,
    this.version,
  });

  @override
  factory DeviceDefinition.fromJson(Map<String, dynamic> json) {
    return DeviceDefinition(
      capability: (json['capability'] as List<dynamic>?)
          ?.map((e) => DeviceDefinitionCapability.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactPoint.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map((e) => DeviceDefinitionDeviceName.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      languageCode: (json['languageCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      manufacturerReference: json['manufacturerReference'] != null
          ? Reference.fromJson(
              (json['manufacturerReference'] as Map).cast<String, dynamic>())
          : null,
      manufacturerString: json['manufacturerString'] as String?,
      material: (json['material'] as List<dynamic>?)
          ?.map((e) => DeviceDefinitionMaterial.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modelNumber: json['modelNumber'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      onlineInformation: json['onlineInformation'] as String?,
      owner: json['owner'] != null
          ? Reference.fromJson((json['owner'] as Map).cast<String, dynamic>())
          : null,
      parentDevice: json['parentDevice'] != null
          ? Reference.fromJson(
              (json['parentDevice'] as Map).cast<String, dynamic>())
          : null,
      physicalCharacteristics: json['physicalCharacteristics'] != null
          ? ProdCharacteristic.fromJson(
              (json['physicalCharacteristics'] as Map).cast<String, dynamic>())
          : null,
      property: (json['property'] as List<dynamic>?)
          ?.map((e) => DeviceDefinitionProperty.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      quantity: json['quantity'] != null
          ? Quantity.fromJson((json['quantity'] as Map).cast<String, dynamic>())
          : null,
      safety: (json['safety'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      shelfLifeStorage: (json['shelfLifeStorage'] as List<dynamic>?)
          ?.map((e) =>
              ProductShelfLife.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      specialization: (json['specialization'] as List<dynamic>?)
          ?.map((e) => DeviceDefinitionSpecialization.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      udiDeviceIdentifier: (json['udiDeviceIdentifier'] as List<dynamic>?)
          ?.map((e) => DeviceDefinitionUdiDeviceIdentifier.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      url: json['url'] as String?,
      version:
          (json['version'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'capability': capability?.map((e) => e.toJson()).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'deviceName': deviceName?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'languageCode': languageCode?.map((e) => e.toJson()).toList(),
        'manufacturerReference': manufacturerReference?.toJson(),
        'manufacturerString': manufacturerString,
        'material': material?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modelNumber': modelNumber,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'onlineInformation': onlineInformation,
        'owner': owner?.toJson(),
        'parentDevice': parentDevice?.toJson(),
        'physicalCharacteristics': physicalCharacteristics?.toJson(),
        'property': property?.map((e) => e.toJson()).toList(),
        'quantity': quantity?.toJson(),
        'safety': safety?.map((e) => e.toJson()).toList(),
        'shelfLifeStorage': shelfLifeStorage?.map((e) => e.toJson()).toList(),
        'specialization': specialization?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'type': type?.toJson(),
        'udiDeviceIdentifier':
            udiDeviceIdentifier?.map((e) => e.toJson()).toList(),
        'url': url,
        'version': version?.map((e) => e).toList(),
      };

  @override
  DeviceDefinition copyWith({
    List<DeviceDefinitionCapability>? capability,
    List<ContactPoint>? contact,
    List<Resource>? contained,
    List<DeviceDefinitionDeviceName>? deviceName,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<CodeableConcept>? languageCode,
    Reference? manufacturerReference,
    String? manufacturerString,
    List<DeviceDefinitionMaterial>? material,
    Meta? meta,
    String? modelNumber,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? onlineInformation,
    Reference? owner,
    Reference? parentDevice,
    ProdCharacteristic? physicalCharacteristics,
    List<DeviceDefinitionProperty>? property,
    Quantity? quantity,
    List<CodeableConcept>? safety,
    List<ProductShelfLife>? shelfLifeStorage,
    List<DeviceDefinitionSpecialization>? specialization,
    Narrative? text,
    CodeableConcept? type,
    List<DeviceDefinitionUdiDeviceIdentifier>? udiDeviceIdentifier,
    String? url,
    List<String>? version,
  }) {
    return DeviceDefinition(
      capability: capability ?? this.capability,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      deviceName: deviceName ?? this.deviceName,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      languageCode: languageCode ?? this.languageCode,
      manufacturerReference:
          manufacturerReference ?? this.manufacturerReference,
      manufacturerString: manufacturerString ?? this.manufacturerString,
      material: material ?? this.material,
      meta: meta ?? this.meta,
      modelNumber: modelNumber ?? this.modelNumber,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      onlineInformation: onlineInformation ?? this.onlineInformation,
      owner: owner ?? this.owner,
      parentDevice: parentDevice ?? this.parentDevice,
      physicalCharacteristics:
          physicalCharacteristics ?? this.physicalCharacteristics,
      property: property ?? this.property,
      quantity: quantity ?? this.quantity,
      safety: safety ?? this.safety,
      shelfLifeStorage: shelfLifeStorage ?? this.shelfLifeStorage,
      specialization: specialization ?? this.specialization,
      text: text ?? this.text,
      type: type ?? this.type,
      udiDeviceIdentifier: udiDeviceIdentifier ?? this.udiDeviceIdentifier,
      url: url ?? this.url,
      version: version ?? this.version,
    );
  }
}
