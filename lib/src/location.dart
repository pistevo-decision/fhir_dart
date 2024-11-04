part of '../fhir_dart.dart';

 /// Details and position information for a physical place where services are provided and resources and participants may be stored, found, contained, or accommodated.
class Location extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Location';
   /// Physical location.
   /// Additional addresses should be recorded using another instance of the Location resource, or via the Organization.
  final Address? address;
   /// A list of alternate names that the location is known as, or was known as, in the past.
   /// There are no dates associated with the alias/historic names, as this is not intended to track when names were used, but to assist in searching so that older names can still result in identifying the location.
  final List<String>? alias;
   /// Description of availability exceptions
   /// A description of when the locations opening ours are different to normal, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as detailed in the opening hours Times.
  final String? availabilityExceptions;
   /// Additional details about the location that could be displayed as further information to identify the location beyond its name
   /// Description of the Location, which helps in finding or referencing the place.
  final String? description;
   /// Technical endpoints providing access to services operated for the location.
  final List<Reference>? endpoint;
   /// What days/times during a week is this location usually open.
   /// This type of information is commonly found published in directories and on websites informing customers when the facility is available.
   /// Specific services within the location may have their own hours which could be shorter (or longer) than the locations hours.
  final List<LocationHoursOfOperation>? hoursOfOperation;
   /// Unique code or number identifying the location to its users.
  final List<Identifier>? identifier;
   /// Organization responsible for provisioning and upkeep
   /// The organization responsible for the provisioning and upkeep of the location.
   /// This can also be used as the part of the organization hierarchy where this location provides services. These services can be defined through the HealthcareService resource.
  final Reference? managingOrganization;
   /// instance | kind
   /// Indicates whether a resource instance represents a specific location or a class of locations.
   /// This is labeled as a modifier because whether or not the location is a class of locations changes how it can be used and understood.
  final String? mode; // Possible values: 'instance', 'kind'
   /// Name of the location as used by humans. Does not need to be unique.
   /// If the name of a location changes, consider putting the old name in the alias column so that it can still be located through searches.
  final String? name;
   /// The operational status of the location (typically only for a bed/room)
   /// The operational status covers operation values most relevant to beds (but can also apply to rooms/units/chairs/etc. such as an isolation unit/dialysis chair). This typically covers concepts such as contamination, housekeeping, and other activities like maintenance.
  final Coding? operationalStatus;
   /// Another Location this one is physically a part of
   /// Another Location of which this Location is physically a part of.
  final Reference? partOf;
   /// Physical form of the location, e.g. building, room, vehicle, road.
  final CodeableConcept? physicalType;
   /// The absolute geographic location of the Location, expressed using the WGS84 datum (This is the same co-ordinate system used in KML).
  final LocationPosition? position;
   /// The status property covers the general availability of the resource, not the current value which may be covered by the operationStatus, or by a schedule/slots if they are configured for the location.
  final String? status; // Possible values: 'active', 'suspended', 'inactive'
   /// Contact details of the location
   /// The contact details of communication devices available at the location. This can include phone numbers, fax numbers, mobile numbers, email addresses and web sites.
  final List<ContactPoint>? telecom;
   /// Type of function performed
   /// Indicates the type of function performed at the location.
  final List<CodeableConcept>? type;
  Location({
    this.address,
    this.alias,
    this.availabilityExceptions,
    super.contained,
    this.description,
    this.endpoint,
    super.fhirExtension,
    this.hoursOfOperation,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.managingOrganization,
    super.meta,
    this.mode,
    super.modifierExtension,
    this.name,
    this.operationalStatus,
    this.partOf,
    this.physicalType,
    this.position,
    this.status,
    this.telecom,
    super.text,
    this.type,
  });
  
  @override
  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      address: json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null,
      alias: (json['alias'] as List<dynamic>?)?.map((e) => e as String).toList(),
      availabilityExceptions: json['availabilityExceptions'] as String?,
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      description: json['description'] as String?,
      endpoint: (json['endpoint'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      hoursOfOperation: (json['hoursOfOperation'] as List<dynamic>?)?.map((e) => LocationHoursOfOperation.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      managingOrganization: json['managingOrganization'] != null ? Reference.fromJson(json['managingOrganization'] as Map<String, dynamic>) : null,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      mode: json['mode'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
      operationalStatus: json['operationalStatus'] != null ? Coding.fromJson(json['operationalStatus'] as Map<String, dynamic>) : null,
      partOf: json['partOf'] != null ? Reference.fromJson(json['partOf'] as Map<String, dynamic>) : null,
      physicalType: json['physicalType'] != null ? CodeableConcept.fromJson(json['physicalType'] as Map<String, dynamic>) : null,
      position: json['position'] != null ? LocationPosition.fromJson(json['position'] as Map<String, dynamic>) : null,
      status: json['status'] as String?,
      telecom: (json['telecom'] as List<dynamic>?)?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
      type: (json['type'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'address': address?.toJson(),
      'alias': alias?.map((e) => e).toList(),
      'availabilityExceptions': availabilityExceptions,
      'contained': contained?.map((e) => e.toJson()).toList(),
      'description': description,
      'endpoint': endpoint?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'hoursOfOperation': hoursOfOperation?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'managingOrganization': managingOrganization?.toJson(),
      'meta': meta?.toJson(),
      'mode': mode,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'operationalStatus': operationalStatus?.toJson(),
      'partOf': partOf?.toJson(),
      'physicalType': physicalType?.toJson(),
      'position': position?.toJson(),
      'status': status,
      'telecom': telecom?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
      'type': type?.map((e) => e.toJson()).toList(),
    };
  
  @override
  Location copyWith({
    Address? address,
    List<String>? alias,
    String? availabilityExceptions,
    List<Resource>? contained,
    String? description,
    List<Reference>? endpoint,
    List<Extension>? fhirExtension,
    List<LocationHoursOfOperation>? hoursOfOperation,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Reference? managingOrganization,
    Meta? meta,
    String? mode,
    List<Extension>? modifierExtension,
    String? name,
    Coding? operationalStatus,
    Reference? partOf,
    CodeableConcept? physicalType,
    LocationPosition? position,
    String? status,
    List<ContactPoint>? telecom,
    Narrative? text,
    List<CodeableConcept>? type,
  }) {
    return Location(
      address: address ?? this.address,
      alias: alias ?? this.alias,
      availabilityExceptions: availabilityExceptions ?? this.availabilityExceptions,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      hoursOfOperation: hoursOfOperation ?? this.hoursOfOperation,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      meta: meta ?? this.meta,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      operationalStatus: operationalStatus ?? this.operationalStatus,
      partOf: partOf ?? this.partOf,
      physicalType: physicalType ?? this.physicalType,
      position: position ?? this.position,
      status: status ?? this.status,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
