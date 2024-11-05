part of '../fhir_dart.dart';

/// A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action.  Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.
class Organization extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Organization';

  /// Whether the organization's record is still in active use.
  /// This active flag is not intended to be used to mark an organization as temporarily closed or under construction. Instead the Location(s) within the Organization should have the suspended status. If further details of the reason for the suspension are required, then an extension on this element should be used.
  /// This element is labeled as a modifier because it may be used to mark that the resource was created in error.
  final bool? active;

  /// An address for the organization.
  /// Organization may have multiple addresses with different uses or applicable periods. The use code 'home' is not to be used.
  final List<Address>? address;

  /// A list of alternate names that the organization is known as, or was known as in the past.
  /// There are no dates associated with the alias/historic names, as this is not intended to track when names were used, but to assist in searching so that older names can still result in identifying the organization.
  final List<String>? alias;

  /// Contact for the organization for a certain purpose.
  /// Where multiple contacts for the same purpose are provided there is a standard extension that can be used to determine which one is the preferred contact to use.
  final List<OrganizationContact>? contact;

  /// Technical endpoints providing access to services operated for the organization.
  final List<Reference>? endpoint;

  /// Identifies this organization  across multiple systems
  /// Identifier for the organization that is used to identify the organization across multiple disparate systems.
  final List<Identifier>? identifier;

  /// Name used for the organization
  /// A name associated with the organization.
  /// If the name of an organization changes, consider putting the old name in the alias column so that it can still be located through searches.
  final String? name;

  /// The organization of which this organization forms a part.
  final Reference? partOf;

  /// A contact detail for the organization.
  /// The use code 'home' is not to be used. Note that these contacts are not the contact details of people who are employed by or represent the organization, but official contacts for the organization itself.
  final List<ContactPoint>? telecom;

  /// Kind of organization
  /// The kind(s) of organization that this is.
  /// Organizations can be corporations, wards, sections, clinical teams, government departments, etc. Note that code is generally a classifier of the type of organization; in many applications, codes are used to identity a particular organization (say, ward) as opposed to another of the same type - these are identifiers, not codes
  /// When considering if multiple types are appropriate, you should evaluate if child organizations would be a more appropriate use of the concept, as different types likely are in different sub-areas of the organization. This is most likely to be used where type values have orthogonal values, such as a religious, academic and medical center.
  /// We expect that some jurisdictions will profile this optionality to be a single cardinality.
  final List<CodeableConcept>? type;
  Organization({
    this.active,
    this.address,
    this.alias,
    this.contact,
    super.contained,
    this.endpoint,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.partOf,
    this.telecom,
    super.text,
    this.type,
  });

  @override
  factory Organization.fromJson(Map<String, dynamic> json) {
    return Organization(
      active: json['active'] as bool?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      alias:
          (json['alias'] as List<dynamic>?)?.map((e) => e as String).toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) =>
              OrganizationContact.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
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
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      partOf: json['partOf'] != null
          ? Reference.fromJson((json['partOf'] as Map).cast<String, dynamic>())
          : null,
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
        'active': active,
        'address': address?.map((e) => e.toJson()).toList(),
        'alias': alias?.map((e) => e).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'endpoint': endpoint?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'partOf': partOf?.toJson(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'type': type?.map((e) => e.toJson()).toList(),
      };

  @override
  Organization copyWith({
    bool? active,
    List<Address>? address,
    List<String>? alias,
    List<OrganizationContact>? contact,
    List<Resource>? contained,
    List<Reference>? endpoint,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    Reference? partOf,
    List<ContactPoint>? telecom,
    Narrative? text,
    List<CodeableConcept>? type,
  }) {
    return Organization(
      active: active ?? this.active,
      address: address ?? this.address,
      alias: alias ?? this.alias,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      endpoint: endpoint ?? this.endpoint,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      partOf: partOf ?? this.partOf,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
