part of '../fhir_dart.dart';

 /// Defines an affiliation/assotiation/relationship between 2 distinct oganizations, that is not a part-of relationship/sub-division relationship.
 /// Need to define relationships between organizations that are not sub-divisions of the same organization (part-of relationships).
class OrganizationAffiliation extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'OrganizationAffiliation';
   /// Whether this organization affiliation record is in active use.
   /// If this value is false, you may refer to the period to see when the role was in active use. If there is no period specified, no inference can be made about when it was active.
  final bool? active;
   /// Definition of the role the participatingOrganization plays in the association.
  final List<CodeableConcept>? code;
   /// Technical endpoints providing access to services operated for this role.
  final List<Reference>? endpoint;
   /// Healthcare services provided through the role.
  final List<Reference>? healthcareService;
   /// Business identifiers that are specific to this role.
  final List<Identifier>? identifier;
   /// The location(s) at which the role occurs.
  final List<Reference>? location;
   /// Health insurance provider network in which the participatingOrganization provides the role's services (if defined) at the indicated locations (if defined).
  final List<Reference>? network;
   /// Organization where the role is available (primary organization/has members).
  final Reference? organization;
   /// Organization that provides/performs the role (e.g. providing services or is a member of)
   /// The Participating Organization provides/performs the role(s) defined by the code to the Primary Organization (e.g. providing services or is a member of).
  final Reference? participatingOrganization;
   /// The period during which the participatingOrganization is affiliated with the primary organization.
  final Period? period;
   /// Specific specialty of the participatingOrganization in the context of the role.
  final List<CodeableConcept>? specialty;
   /// Contact details at the participatingOrganization relevant to this Affiliation.
  final List<ContactPoint>? telecom;
  OrganizationAffiliation({
    this.active,
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
    this.network,
    this.organization,
    this.participatingOrganization,
    this.period,
    this.specialty,
    this.telecom,
    super.text,
  });
  
  @override
  factory OrganizationAffiliation.fromJson(Map<String, dynamic> json) {
    return OrganizationAffiliation(
      active: json['active'] as bool?,
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
      network: (json['network'] as List<dynamic>?)?.map((e) => Reference.fromJson(e as Map<String, dynamic>)).toList(),
      organization: json['organization'] != null ? Reference.fromJson(json['organization'] as Map<String, dynamic>) : null,
      participatingOrganization: json['participatingOrganization'] != null ? Reference.fromJson(json['participatingOrganization'] as Map<String, dynamic>) : null,
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      specialty: (json['specialty'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      telecom: (json['telecom'] as List<dynamic>?)?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'active': active,
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
      'network': network?.map((e) => e.toJson()).toList(),
      'organization': organization?.toJson(),
      'participatingOrganization': participatingOrganization?.toJson(),
      'period': period?.toJson(),
      'specialty': specialty?.map((e) => e.toJson()).toList(),
      'telecom': telecom?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  OrganizationAffiliation copyWith({
    bool? active,
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
    List<Reference>? network,
    Reference? organization,
    Reference? participatingOrganization,
    Period? period,
    List<CodeableConcept>? specialty,
    List<ContactPoint>? telecom,
    Narrative? text,
  }) {
    return OrganizationAffiliation(
      active: active ?? this.active,
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
      network: network ?? this.network,
      organization: organization ?? this.organization,
      participatingOrganization: participatingOrganization ?? this.participatingOrganization,
      period: period ?? this.period,
      specialty: specialty ?? this.specialty,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
    );
  }
}
