part of '../fhir_dart.dart';

/// The technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information.
class Endpoint extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Endpoint';

  /// The technical base address for connecting to this endpoint
  /// The uri that describes the actual end-point to connect to.
  /// For rest-hook, and websocket, the end-point must be an http: or https: URL; for email, a mailto: url, for sms, a tel: url, and for message the endpoint can be in any form of url the server understands (usually, http: or mllp:). The URI is allowed to be relative; in which case, it is relative to the server end-point (since there may be more than one, clients should avoid using relative URIs)
  /// This address will be to the service base, without any parameters, or sub-services or resources tacked on.
  /// E.g. for a WADO-RS endpoint, the url should be "https://pacs.hospital.org/wado-rs"
  /// and not "https://pacs.hospital.org/wado-rs/studies/1.2.250.1.59.40211.12345678.678910/series/1.2.250.1.59.40211.789001276.14556172.67789/instances/...".
  final String address;

  /// Protocol/Profile/Standard to be used with this endpoint connection
  /// A coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook).
  /// For additional connectivity details for the protocol, extensions will be used at this point, as in the XDS example.
  final Coding connectionType;

  /// Contact details for source (e.g. troubleshooting)
  /// Contact details for a human to contact about the subscription. The primary use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;

  /// Usage depends on the channel type
  /// Additional headers / information to send as part of the notification.
  /// Exactly what these mean depends on the channel type. The can convey additional information to the recipient and/or meet security requirements.
  final List<String>? header;

  /// Identifies this endpoint across multiple systems
  /// Identifier for the organization that is used to identify the endpoint across multiple disparate systems.
  final List<Identifier>? identifier;

  /// Organization that manages this endpoint (might not be the organization that exposes the endpoint)
  /// The organization that manages this endpoint (even if technically another organization is hosting this in the cloud, it is the organization associated with the data).
  /// This property is not typically used when searching for Endpoint resources for usage. The typical usage is via the reference from an applicable Organization/Location/Practitioner resource, which is where the context is provided. Multiple Locations may reference a single endpoint, and don't have to be within the same organization resource, but most likely within the same organizational hierarchy.
  final Reference? managingOrganization;

  /// A name that this endpoint can be identified by
  /// A friendly name that this endpoint can be referred to with.
  final String? name;

  /// Mimetype to send. If not specified, the content could be anything (including no payload, if the connectionType defined this)
  /// The mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. If the mime type is not specified, then the sender could send any content (including no content depending on the connectionType).
  /// Sending the payload has obvious security consequences. The server is responsible for ensuring that the content is appropriately secured.
  final List<String>? payloadMimeType;

  /// The type of content that may be used at this endpoint (e.g. XDS Discharge summaries)
  /// The payload type describes the acceptable content that can be communicated on the endpoint.
  /// The payloadFormat describes the serialization format of the data, where the payloadType indicates the specific document/schema that is being transferred; e.g. DischargeSummary or CarePlan.
  final List<CodeableConcept> payloadType;

  /// Interval the endpoint is expected to be operational
  /// The interval during which the endpoint is expected to be operational.
  final Period? period;

  /// active | suspended | error | off | test.
  /// This element is labeled as a modifier because the status contains codes that mark the endpoint as not currently valid.
  final String
      status; // Possible values: 'active', 'suspended', 'error', 'off', 'entered-in-error', 'test'
  Endpoint({
    required this.address,
    required this.connectionType,
    this.contact,
    super.contained,
    super.fhirExtension,
    this.header,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.managingOrganization,
    super.meta,
    super.modifierExtension,
    this.name,
    this.payloadMimeType,
    required this.payloadType,
    this.period,
    required this.status,
    super.text,
  });

  @override
  factory Endpoint.fromJson(Map<String, dynamic> json) {
    return Endpoint(
      address: json['address'] as String,
      connectionType: Coding.fromJson(
          (json['connectionType'] as Map).cast<String, dynamic>()),
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactPoint.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      header:
          (json['header'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              (json['managingOrganization'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      payloadMimeType: (json['payloadMimeType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      payloadType: (json['payloadType'] as List<dynamic>)
          .map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'address': address,
        'connectionType': connectionType.toJson(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'header': header?.map((e) => e).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'managingOrganization': managingOrganization?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'payloadMimeType': payloadMimeType?.map((e) => e).toList(),
        'payloadType': payloadType.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'status': status,
        'text': text?.toJson(),
      };

  @override
  Endpoint copyWith({
    String? address,
    Coding? connectionType,
    List<ContactPoint>? contact,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    List<String>? header,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Reference? managingOrganization,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<String>? payloadMimeType,
    List<CodeableConcept>? payloadType,
    Period? period,
    String? status,
    Narrative? text,
  }) {
    return Endpoint(
      address: address ?? this.address,
      connectionType: connectionType ?? this.connectionType,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      header: header ?? this.header,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      payloadMimeType: payloadMimeType ?? this.payloadMimeType,
      payloadType: payloadType ?? this.payloadType,
      period: period ?? this.period,
      status: status ?? this.status,
      text: text ?? this.text,
    );
  }
}
