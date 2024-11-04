part of '../fhir_dart.dart';

/// Unique Device Identifier (UDI) Barcode string
/// Unique device identifier (UDI) assigned to device label or package.  Note that the Device may include multiple udiCarriers as it either may include just the udiCarrier for the jurisdiction it is sold, or for multiple jurisdictions it could have been sold.
/// UDI may identify an unique instance of a device, or it may only identify the type of the device.  See [UDI mappings](device-mappings.html#udi) for a complete mapping of UDI parts to Device.
class DeviceUdiCarrier extends BackboneElement implements FhirResource {
  /// UDI Machine Readable Barcode String
  /// The full UDI carrier of the Automatic Identification and Data Capture (AIDC) technology representation of the barcode string as printed on the packaging of the device - e.g., a barcode or RFID.   Because of limitations on character sets in XML and the need to round-trip JSON data through XML, AIDC Formats *SHALL* be base64 encoded.
  /// The AIDC form of UDIs should be scanned or otherwise used for the identification of the device whenever possible to minimize errors in records resulting from manual transcriptions. If separate barcodes for DI and PI are present, concatenate the string with DI first and in order of human readable expression on label.
  final String? carrierAIDC;

  /// UDI Human Readable Barcode String
  /// The full UDI carrier as the human readable form (HRF) representation of the barcode string as printed on the packaging of the device.
  /// If separate barcodes for DI and PI are present, concatenate the string with DI first and in order of human readable expression on label.
  final String? carrierHRF;

  /// Mandatory fixed portion of UDI
  /// The device identifier (DI) is a mandatory, fixed portion of a UDI that identifies the labeler and the specific version or model of a device.
  final String? deviceIdentifier;

  /// A coded entry to indicate how the data was entered.
  final String?
      entryType; // Possible values: 'barcode', 'rfid', 'manual', 'card', 'self-reported', 'unknown'
  /// UDI Issuing Organization
  /// Organization that is charged with issuing UDIs for devices.  For example, the US FDA issuers include :
  /// 1) GS1:
  /// http://hl7.org/fhir/NamingSystem/gs1-di,
  /// 2) HIBCC:
  /// http://hl7.org/fhir/NamingSystem/hibcc-dI,
  /// 3) ICCBBA for blood containers:
  /// http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
  /// 4) ICCBA for other devices:
  /// http://hl7.org/fhir/NamingSystem/iccbba-other-di.
  final String? issuer;

  /// Regional UDI authority
  /// The identity of the authoritative source for UDI generation within a  jurisdiction.  All UDIs are globally unique within a single namespace with the appropriate repository uri as the system.  For example,  UDIs of devices managed in the U.S. by the FDA, the value is  http://hl7.org/fhir/NamingSystem/fda-udi.
  final String? jurisdiction;
  DeviceUdiCarrier({
    this.carrierAIDC,
    this.carrierHRF,
    this.deviceIdentifier,
    this.entryType,
    super.fhirExtension,
    super.id,
    this.issuer,
    this.jurisdiction,
    super.modifierExtension,
  });

  @override
  factory DeviceUdiCarrier.fromJson(Map<String, dynamic> json) {
    return DeviceUdiCarrier(
      carrierAIDC: json['carrierAIDC'] as String?,
      carrierHRF: json['carrierHRF'] as String?,
      deviceIdentifier: json['deviceIdentifier'] as String?,
      entryType: json['entryType'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      issuer: json['issuer'] as String?,
      jurisdiction: json['jurisdiction'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'carrierAIDC': carrierAIDC,
        'carrierHRF': carrierHRF,
        'deviceIdentifier': deviceIdentifier,
        'entryType': entryType,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'issuer': issuer,
        'jurisdiction': jurisdiction,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  DeviceUdiCarrier copyWith({
    String? carrierAIDC,
    String? carrierHRF,
    String? deviceIdentifier,
    String? entryType,
    List<Extension>? fhirExtension,
    String? id,
    String? issuer,
    String? jurisdiction,
    List<Extension>? modifierExtension,
  }) {
    return DeviceUdiCarrier(
      carrierAIDC: carrierAIDC ?? this.carrierAIDC,
      carrierHRF: carrierHRF ?? this.carrierHRF,
      deviceIdentifier: deviceIdentifier ?? this.deviceIdentifier,
      entryType: entryType ?? this.entryType,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      issuer: issuer ?? this.issuer,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
