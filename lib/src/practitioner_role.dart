part of '../fhir_dart.dart';

 /// A specific set of Roles/Locations/specialties/services that a practitioner may perform at an organization for a period of time.
 /// Need to track services that a healthcare provider is able to provide at an organization's location, and the services that they can perform there.
class PractitionerRole extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'PractitionerRole';
   /// Whether this practitioner role record is in active use.
   /// If this value is false, you may refer to the period to see when the role was in active use. If there is no period specified, no inference can be made about when it was active.
  final bool? active;
   /// Description of availability exceptions
   /// A description of site availability exceptions, e.g. public holiday availability. Succinctly describing all possible exceptions to normal site availability as details in the available Times and not available Times.
  final String? availabilityExceptions;
   /// Times the Service Site is available
   /// A collection of times the practitioner is available or performing this role at the location and/or healthcareservice.
   /// More detailed availability information may be provided in associated Schedule/Slot resources.
  final List<PractitionerRoleAvailableTime>? availableTime;
   /// Roles which this practitioner may perform
   /// Roles which this practitioner is authorized to perform for the organization.
   /// A person may have more than one role.
  final List<CodeableConcept>? code;
   /// Technical endpoints providing access to services operated for the practitioner with this role.
  final List<Reference>? endpoint;
   /// The list of healthcare services that this worker provides for this role's Organization/Location(s).
  final List<Reference>? healthcareService;
   /// Business Identifiers that are specific to a role/location.
  final List<Identifier>? identifier;
   /// The location(s) at which this practitioner provides care.
  final List<Reference>? location;
   /// Not available during this time due to provided reason
   /// The practitioner is not available or performing this role during this period of time due to the provided reason.
  final List<PractitionerRoleNotAvailable>? notAvailable;
   /// Organization where the roles are available
   /// The organization where the Practitioner performs the roles associated.
  final Reference? organization;
   /// The period during which the practitioner is authorized to perform in these role(s)
   /// The period during which the person is authorized to act as a practitioner in these role(s) for the organization.
  final Period? period;
   /// Practitioner that is able to provide the defined services for the organization.
  final Reference? practitioner;
   /// Specific specialty of the practitioner.
  final List<CodeableConcept>? specialty;
   /// Contact details that are specific to the role/location/service.
  final List<ContactPoint>? telecom;
  PractitionerRole({
    this.active,
    this.availabilityExceptions,
    this.availableTime,
    this.code,
    super.contained,
    this.endpoint,
    super.fhirExtension,
    this.healthcareService,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.location,
    super.meta,
    super.modifierExtension,
    this.notAvailable,
    this.organization,
    this.period,
    this.practitioner,
    this.specialty,
    this.telecom,
    super.text,
  });
  
  @override
  factory PractitionerRole.fromJson(Map<String, dynamic> json) {
    return PractitionerRole(
      active: json['active'] as bool?,
      availabilityExceptions: json['availabilityExceptions'] as String?,
      availableTime: (json['availableTime'] as List<dynamic>?)?.map((e) => PractitionerRoleAvailableTime.fromJson(e as Map<String, dynamic>)).toList(),
      code: (json['code'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      healthcareService: (json['healthcareService'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      location: (json['location'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      notAvailable: (json['notAvailable'] as List<dynamic>?)?.map((e) => PractitionerRoleNotAvailable.fromJson(e as Map<String, dynamic>)).toList(),
      organization: json['organization'] != null ? Reference.fromJson(json['organization'] as Map<String, dynamic>) : null,
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      practitioner: json['practitioner'] != null ? Reference.fromJson(json['practitioner'] as Map<String, dynamic>) : null,
      specialty: (json['specialty'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      telecom: (json['telecom'] as List<dynamic>?)?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'active': active,
      'availabilityExceptions': availabilityExceptions,
      'availableTime': availableTime?.map((e) => e.toJson()).toList(),
      'code': code?.map((e) => e.toJson()).toList(),
      'contained': contained?.map((e) => e.toJson()).toList(),
      'endpoint': endpoint?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'healthcareService': healthcareService?.map((e) => e.toJson()).toList(),
      'id': id,
      'identifier': identifier?.map((e) => e.toJson()).toList(),
      'implicitRules': implicitRules,
      'language': language,
      'location': location?.map((e) => e.toJson()).toList(),
      'meta': meta?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'notAvailable': notAvailable?.map((e) => e.toJson()).toList(),
      'organization': organization?.toJson(),
      'period': period?.toJson(),
      'practitioner': practitioner?.toJson(),
      'specialty': specialty?.map((e) => e.toJson()).toList(),
      'telecom': telecom?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  PractitionerRole copyWith({
    bool? active,
    String? availabilityExceptions,
    List<PractitionerRoleAvailableTime>? availableTime,
    List<CodeableConcept>? code,
    List<Resource>? contained,
    List<Reference>? endpoint,
    List<Extension>? fhirExtension,
    List<Reference>? healthcareService,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<Reference>? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<PractitionerRoleNotAvailable>? notAvailable,
    Reference? organization,
    Period? period,
    Reference? practitioner,
    List<CodeableConcept>? specialty,
    List<ContactPoint>? telecom,
    Narrative? text,
  }) {
    return PractitionerRole(
      active: active ?? this.active,
      availabilityExceptions: availabilityExceptions ?? this.availabilityExceptions,
      availableTime: availableTime ?? this.availableTime,
      code: code ?? this.code,
      contained: contained ?? this.contained,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      healthcareService: healthcareService ?? this.healthcareService,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      notAvailable: notAvailable ?? this.notAvailable,
      organization: organization ?? this.organization,
      period: period ?? this.period,
      practitioner: practitioner ?? this.practitioner,
      specialty: specialty ?? this.specialty,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
    );
  }
}
