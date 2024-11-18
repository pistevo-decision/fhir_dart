part of '../fhir_dart.dart';

/// The details of a healthcare service available at a location.
class HealthcareService extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'HealthcareService';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Whether this HealthcareService record is in active use
  /// This flag is used to mark the record to not be used. This is not used when a center is closed for maintenance, or for holidays, the notAvailable period is to be used for this.
  /// This element is labeled as a modifier because it may be used to mark that the resource was created in error.
  final bool? active;

  /// If an appointment is required for access to this service
  /// Indicates whether or not a prospective consumer will require an appointment for a particular service at a site to be provided by the Organization. Indicates if an appointment is required for access to this service.
  final bool? appointmentRequired;

  /// Description of availability exceptions
  /// A description of site availability exceptions, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as details in the available Times and not available Times.
  final String? availabilityExceptions;

  /// Times the Service Site is available
  /// A collection of times that the Service Site is available.
  /// More detailed availability information may be provided in associated Schedule/Slot resources.
  final List<HealthcareServiceAvailableTime>? availableTime;

  /// Broad category of service being performed or delivered
  /// Identifies the broad category of service being performed or delivered.
  /// Selecting a Service Category then determines the list of relevant service types that can be selected in the primary service type.
  final List<CodeableConcept>? category;

  /// Collection of characteristics (attributes).
  /// These could be such things as is wheelchair accessible.
  final List<CodeableConcept>? characteristic;

  /// Additional description and/or any specific issues not covered elsewhere
  /// Any additional description of the service and/or any specific issues not covered by the other attributes, which can be displayed as further detail under the serviceName.
  /// Would expect that a user would not see this information on a search results, and it would only be available when viewing the complete details of the service.
  final String? comment;

  /// The language that this service is offered in
  /// Some services are specifically made available in multiple languages, this property permits a directory to declare the languages this is offered in. Typically this is only provided where a service operates in communities with mixed languages used.
  /// When using this property it indicates that the service is available with this language, it is not derived from the practitioners, and not all are required to use this language, just that this language is available while scheduling.
  final List<CodeableConcept>? communication;

  /// Location(s) service is intended for/available to
  /// The location(s) that this service is available to (not where the service is provided).
  /// The locations referenced by the coverage area can include both specific locations, including areas, and also conceptual domains too (mode = kind), such as a physical area (tri-state area) and some other attribute (covered by Example Care Organization). These types of Locations are often not managed by any specific organization. This could also include generic locations such as "in-home".
  final List<Reference>? coverageArea;

  /// Specific eligibility requirements required to use the service
  /// Does this service have specific eligibility requirements that need to be met in order to use the service?
  final List<HealthcareServiceEligibility>? eligibility;

  /// Technical endpoints providing access to electronic services operated for the healthcare service
  /// Technical endpoints providing access to services operated for the specific healthcare services defined at this resource.
  final List<Reference>? endpoint;

  /// Extra details about the service that can't be placed in the other fields.
  final String? extraDetails;

  /// External identifiers for this item.
  final List<Identifier>? identifier;

  /// Location(s) where service may be provided
  /// The location(s) where this healthcare service may be provided.
  final List<Reference>? location;

  /// Description of service as presented to a consumer while searching
  /// Further description of the service as it would be presented to a consumer while searching.
  final String? name;

  /// Not available during this time due to provided reason
  /// The HealthcareService is not available during this period of time due to the provided reason.
  final List<HealthcareServiceNotAvailable>? notAvailable;

  /// Facilitates quick identification of the service
  /// If there is a photo/symbol associated with this HealthcareService, it may be included here to facilitate quick identification of the service in a list.
  final Attachment? photo;

  /// Programs that this service is applicable to.
  /// Programs are often defined externally to an Organization, commonly by governments; e.g. Home and Community Care Programs, Homeless Program, ….
  final List<CodeableConcept>? program;

  /// Organization that provides this service
  /// The organization that provides this healthcare service.
  /// This property is recommended to be the same as the Location's managingOrganization, and if not provided should be interpreted as such. If the Location does not have a managing Organization, then this property should be populated.
  final Reference? providedBy;

  /// Ways that the service accepts referrals, if this is not provided then it is implied that no referral is required.
  final List<CodeableConcept>? referralMethod;

  /// Conditions under which service is available/offered
  /// The code(s) that detail the conditions under which the healthcare service is available/offered.
  /// The provision means being commissioned by, contractually obliged or financially sourced. Types of costings that may apply to this healthcare service, such if the service may be available for free, some discounts available, or fees apply.
  final List<CodeableConcept>? serviceProvisionCode;

  /// Specialties handled by the HealthcareService
  /// Collection of specialties handled by the service site. This is more of a medical term.
  final List<CodeableConcept>? specialty;

  /// Contacts related to the healthcare service
  /// List of contacts related to this specific healthcare service.
  /// If this is empty, then refer to the location's contacts.
  final List<ContactPoint>? telecom;

  /// Type of service that may be delivered or performed
  /// The specific type of service that may be delivered or performed.
  final List<CodeableConcept>? type;
  HealthcareService({
    this.active,
    this.appointmentRequired,
    this.availabilityExceptions,
    this.availableTime,
    this.category,
    this.characteristic,
    this.comment,
    this.communication,
    super.contained,
    this.coverageArea,
    this.eligibility,
    this.endpoint,
    super.fhirExtension,
    this.extraDetails,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.location,
    super.meta,
    super.modifierExtension,
    this.name,
    this.notAvailable,
    this.photo,
    this.program,
    this.providedBy,
    this.referralMethod,
    this.serviceProvisionCode,
    this.specialty,
    this.telecom,
    super.text,
    this.type,
  });

  @override
  factory HealthcareService.fromJson(Map<String, dynamic> json) {
    return HealthcareService(
      active: json['active'] as bool?,
      appointmentRequired: json['appointmentRequired'] as bool?,
      availabilityExceptions: json['availabilityExceptions'] as String?,
      availableTime: (json['availableTime'] as List<dynamic>?)
          ?.map((e) => HealthcareServiceAvailableTime.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      characteristic: (json['characteristic'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      comment: json['comment'] as String?,
      communication: (json['communication'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      coverageArea: (json['coverageArea'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      eligibility: (json['eligibility'] as List<dynamic>?)
          ?.map((e) => HealthcareServiceEligibility.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      extraDetails: json['extraDetails'] as String?,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      notAvailable: (json['notAvailable'] as List<dynamic>?)
          ?.map((e) => HealthcareServiceNotAvailable.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      photo: json['photo'] != null
          ? Attachment.fromJson((json['photo'] as Map).cast<String, dynamic>())
          : null,
      program: (json['program'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      providedBy: json['providedBy'] != null
          ? Reference.fromJson(
              (json['providedBy'] as Map).cast<String, dynamic>())
          : null,
      referralMethod: (json['referralMethod'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      serviceProvisionCode: (json['serviceProvisionCode'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map(
              (e) => ContactPoint.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      type: (json['type'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'active': active,
        'appointmentRequired': appointmentRequired,
        'availabilityExceptions': availabilityExceptions,
        'availableTime': availableTime?.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'characteristic': characteristic?.map((e) => e.toJson()).toList(),
        'comment': comment,
        'communication': communication?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'coverageArea': coverageArea?.map((e) => e.toJson()).toList(),
        'eligibility': eligibility?.map((e) => e.toJson()).toList(),
        'endpoint': endpoint?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'extraDetails': extraDetails,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'location': location?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'notAvailable': notAvailable?.map((e) => e.toJson()).toList(),
        'photo': photo?.toJson(),
        'program': program?.map((e) => e.toJson()).toList(),
        'providedBy': providedBy?.toJson(),
        'referralMethod': referralMethod?.map((e) => e.toJson()).toList(),
        'serviceProvisionCode':
            serviceProvisionCode?.map((e) => e.toJson()).toList(),
        'specialty': specialty?.map((e) => e.toJson()).toList(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  HealthcareService copyWith({
    bool? active,
    bool? appointmentRequired,
    String? availabilityExceptions,
    List<HealthcareServiceAvailableTime>? availableTime,
    List<CodeableConcept>? category,
    List<CodeableConcept>? characteristic,
    String? comment,
    List<CodeableConcept>? communication,
    List<Resource>? contained,
    List<Reference>? coverageArea,
    List<HealthcareServiceEligibility>? eligibility,
    List<Reference>? endpoint,
    List<Extension>? fhirExtension,
    String? extraDetails,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<Reference>? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<HealthcareServiceNotAvailable>? notAvailable,
    Attachment? photo,
    List<CodeableConcept>? program,
    Reference? providedBy,
    List<CodeableConcept>? referralMethod,
    List<CodeableConcept>? serviceProvisionCode,
    List<CodeableConcept>? specialty,
    List<ContactPoint>? telecom,
    Narrative? text,
    List<CodeableConcept>? type,
  }) {
    return HealthcareService(
      active: active ?? this.active,
      appointmentRequired: appointmentRequired ?? this.appointmentRequired,
      availabilityExceptions:
          availabilityExceptions ?? this.availabilityExceptions,
      availableTime: availableTime ?? this.availableTime,
      category: category ?? this.category,
      characteristic: characteristic ?? this.characteristic,
      comment: comment ?? this.comment,
      communication: communication ?? this.communication,
      contained: contained ?? this.contained,
      coverageArea: coverageArea ?? this.coverageArea,
      eligibility: eligibility ?? this.eligibility,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      extraDetails: extraDetails ?? this.extraDetails,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      notAvailable: notAvailable ?? this.notAvailable,
      photo: photo ?? this.photo,
      program: program ?? this.program,
      providedBy: providedBy ?? this.providedBy,
      referralMethod: referralMethod ?? this.referralMethod,
      serviceProvisionCode: serviceProvisionCode ?? this.serviceProvisionCode,
      specialty: specialty ?? this.specialty,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
