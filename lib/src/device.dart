part of '../fhir_dart.dart';

/// A type of a manufactured item that is used in the provision of healthcare without being substantially changed through that activity. The device may be a medical or non-medical device.
/// Allows institutions to track their devices.
class Device extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Device';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Details for human/organization for support
  /// Contact details for an organization or a particular human that is responsible for the device.
  /// used for troubleshooting etc.
  final List<ContactPoint>? contact;

  /// The reference to the definition for the device.
  final Reference? definition;

  /// The name of the device as given by the manufacturer
  /// This represents the manufacturer's name of the device as provided by the device, from a UDI label, or by a person describing the Device.  This typically would be used when a person provides the name(s) or when the device represents one of the names available from DeviceDefinition.
  final List<DeviceDeviceName>? deviceName;

  /// The distinct identification string as required by regulation for a human cell, tissue, or cellular and tissue-based product.
  /// For example, this applies to devices in the United States regulated under *Code of Federal Regulation 21CFR§1271.290(c)*.
  final String? distinctIdentifier;

  /// Date and time of expiry of this device (if applicable)
  /// The date and time beyond which this device is no longer valid or should not be used (if applicable).
  final String? expirationDate;

  /// Instance identifier
  /// Unique instance identifiers assigned to a device by manufacturers other organizations or owners.
  /// The barcode string from a barcode present on a device label or package may identify the instance, include names given to the device in local usage, or may identify the type of device. If the identifier identifies the type of device, Device.type element should be used.
  final List<Identifier>? identifier;

  /// Where the device is found
  /// The place where the device can be found.
  final Reference? location;

  /// Lot number of manufacture
  /// Lot number assigned by the manufacturer.
  final String? lotNumber;

  /// Date when the device was made
  /// The date and time when the device was manufactured.
  final String? manufactureDate;

  /// Name of device manufacturer
  /// A name of the manufacturer.
  final String? manufacturer;

  /// The model number for the device.
  final String? modelNumber;

  /// Device notes and comments
  /// Descriptive information, usage information or implantation information that is not captured in an existing element.
  final List<Annotation>? note;

  /// Organization responsible for device
  /// An organization that is responsible for the provision and ongoing maintenance of the device.
  final Reference? owner;

  /// The parent device.
  final Reference? parent;

  /// The part number of the device.
  /// Alphanumeric Maximum 20.
  final String? partNumber;

  /// Patient to whom Device is affixed
  /// Patient information, If the device is affixed to a person.
  final Reference? patient;

  /// The actual configuration settings of a device as it actually operates, e.g., regulation status, time properties.
  final List<DeviceProperty>? property;

  /// Safety Characteristics of Device
  /// Provides additional safety characteristics about a medical device.  For example devices containing latex.
  final List<CodeableConcept>? safety;

  /// Serial number assigned by the manufacturer
  /// The serial number assigned by the organization when the device was manufactured.
  /// Alphanumeric Maximum 20.
  final String? serialNumber;

  /// The capabilities supported on a  device, the standards to which the device conforms for a particular purpose, and used for the communication.
  final List<DeviceSpecialization>? specialization;

  /// Status of the Device availability.
  /// This element is labeled as a modifier because the status contains the codes inactive and entered-in-error that mark the device (record)as not currently valid.
  final String?
      status; // Possible values: 'active', 'inactive', 'entered-in-error', 'unknown'
  /// online | paused | standby | offline | not-ready | transduc-discon | hw-discon | off
  /// Reason for the dtatus of the Device availability.
  final List<CodeableConcept>? statusReason;

  /// The kind or type of device.
  final CodeableConcept? type;

  /// Unique Device Identifier (UDI) Barcode string
  /// Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions it could have been sold.
  /// UDI may identify an unique instance of a device, or it may only identify the type of the device.  See [UDI mappings](device-mappings.html#udi) for a complete mapping of UDI parts to Device.
  final List<DeviceUdiCarrier>? udiCarrier;

  /// Network address to contact device
  /// A network address on which the device may be contacted directly.
  /// If the device is running a FHIR server, the network address should  be the Base URL from which a conformance statement may be retrieved.
  final String? url;

  /// The actual design of the device or software version running on the device.
  final List<DeviceVersion>? version;
  Device({
    this.contact,
    super.contained,
    this.definition,
    this.deviceName,
    this.distinctIdentifier,
    this.expirationDate,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.location,
    this.lotNumber,
    this.manufactureDate,
    this.manufacturer,
    super.meta,
    this.modelNumber,
    super.modifierExtension,
    this.note,
    this.owner,
    this.parent,
    this.partNumber,
    this.patient,
    this.property,
    this.safety,
    this.serialNumber,
    this.specialization,
    this.status,
    this.statusReason,
    super.text,
    this.type,
    this.udiCarrier,
    this.url,
    this.version,
  });

  @override
  factory Device.fromJson(Map<String, dynamic> json) {
    return Device(
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactPoint.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      definition: json['definition'] != null
          ? Reference.fromJson(
              (json['definition'] as Map).cast<String, dynamic>())
          : null,
      deviceName: (json['deviceName'] as List<dynamic>?)
          ?.map((e) =>
              DeviceDeviceName.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      distinctIdentifier: json['distinctIdentifier'] as String?,
      expirationDate: json['expirationDate'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      location: json['location'] != null
          ? Reference.fromJson(
              (json['location'] as Map).cast<String, dynamic>())
          : null,
      lotNumber: json['lotNumber'] as String?,
      manufactureDate: json['manufactureDate'] as String?,
      manufacturer: json['manufacturer'] as String?,
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
      owner: json['owner'] != null
          ? Reference.fromJson((json['owner'] as Map).cast<String, dynamic>())
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson((json['parent'] as Map).cast<String, dynamic>())
          : null,
      partNumber: json['partNumber'] as String?,
      patient: json['patient'] != null
          ? Reference.fromJson((json['patient'] as Map).cast<String, dynamic>())
          : null,
      property: (json['property'] as List<dynamic>?)
          ?.map((e) =>
              DeviceProperty.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      safety: (json['safety'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      serialNumber: json['serialNumber'] as String?,
      specialization: (json['specialization'] as List<dynamic>?)
          ?.map((e) =>
              DeviceSpecialization.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      status: json['status'] as String?,
      statusReason: (json['statusReason'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              (json['type'] as Map).cast<String, dynamic>())
          : null,
      udiCarrier: (json['udiCarrier'] as List<dynamic>?)
          ?.map((e) =>
              DeviceUdiCarrier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      url: json['url'] as String?,
      version: (json['version'] as List<dynamic>?)
          ?.map(
              (e) => DeviceVersion.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'definition': definition?.toJson(),
        'deviceName': deviceName?.map((e) => e.toJson()).toList(),
        'distinctIdentifier': distinctIdentifier,
        'expirationDate': expirationDate,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'location': location?.toJson(),
        'lotNumber': lotNumber,
        'manufactureDate': manufactureDate,
        'manufacturer': manufacturer,
        'meta': meta?.toJson(),
        'modelNumber': modelNumber,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'owner': owner?.toJson(),
        'parent': parent?.toJson(),
        'partNumber': partNumber,
        'patient': patient?.toJson(),
        'property': property?.map((e) => e.toJson()).toList(),
        'safety': safety?.map((e) => e.toJson()).toList(),
        'serialNumber': serialNumber,
        'specialization': specialization?.map((e) => e.toJson()).toList(),
        'status': status,
        'statusReason': statusReason?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'type': type?.toJson(),
        'udiCarrier': udiCarrier?.map((e) => e.toJson()).toList(),
        'url': url,
        'version': version?.map((e) => e.toJson()).toList(),
      };

  @override
  Device copyWith({
    List<ContactPoint>? contact,
    List<Resource>? contained,
    Reference? definition,
    List<DeviceDeviceName>? deviceName,
    String? distinctIdentifier,
    String? expirationDate,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Reference? location,
    String? lotNumber,
    String? manufactureDate,
    String? manufacturer,
    Meta? meta,
    String? modelNumber,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    Reference? owner,
    Reference? parent,
    String? partNumber,
    Reference? patient,
    List<DeviceProperty>? property,
    List<CodeableConcept>? safety,
    String? serialNumber,
    List<DeviceSpecialization>? specialization,
    String? status,
    List<CodeableConcept>? statusReason,
    Narrative? text,
    CodeableConcept? type,
    List<DeviceUdiCarrier>? udiCarrier,
    String? url,
    List<DeviceVersion>? version,
  }) {
    return Device(
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      definition: definition ?? this.definition,
      deviceName: deviceName ?? this.deviceName,
      distinctIdentifier: distinctIdentifier ?? this.distinctIdentifier,
      expirationDate: expirationDate ?? this.expirationDate,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      location: location ?? this.location,
      lotNumber: lotNumber ?? this.lotNumber,
      manufactureDate: manufactureDate ?? this.manufactureDate,
      manufacturer: manufacturer ?? this.manufacturer,
      meta: meta ?? this.meta,
      modelNumber: modelNumber ?? this.modelNumber,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      owner: owner ?? this.owner,
      parent: parent ?? this.parent,
      partNumber: partNumber ?? this.partNumber,
      patient: patient ?? this.patient,
      property: property ?? this.property,
      safety: safety ?? this.safety,
      serialNumber: serialNumber ?? this.serialNumber,
      specialization: specialization ?? this.specialization,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      text: text ?? this.text,
      type: type ?? this.type,
      udiCarrier: udiCarrier ?? this.udiCarrier,
      url: url ?? this.url,
      version: version ?? this.version,
    );
  }
}
