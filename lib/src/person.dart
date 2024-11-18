part of '../fhir_dart.dart';

/// The Person resource does justice to person registries that keep track of persons regardless of their role. The Person resource is also a primary resource to point to for people acting in a particular role such as SubjectofCare, Practitioner, and Agent. Very few attributes are specific to any role and so Person is kept lean. Most attributes are expected to be tied to the role the Person plays rather than the Person himself. Examples of that are Guardian (SubjectofCare), ContactParty (SubjectOfCare, Practitioner), and multipleBirthInd (SubjectofCare).
/// Demographics and administrative information about a person independent of a specific health-related context.
/// Need to track persons potentially across multiple roles.
class Person extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'Person';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// This person's record is in active use
  /// Whether this person's record is in active use.
  final bool? active;

  /// One or more addresses for the person.
  /// Person may have multiple addresses with different uses or applicable periods.
  final List<Address>? address;

  /// The date on which the person was born
  /// The birth date for the person.
  /// At least an estimated year should be provided as a guess if the real DOB is unknown.
  final String? birthDate;

  /// Administrative Gender.
  /// The gender might not match the biological sex as determined by genetics, or the individual's preferred identification. Note that for both humans and particularly animals, there are other legitimate possibilities than M and F, though a clear majority of systems and contexts only support M and F.
  final String? gender; // Possible values: 'male', 'female', 'other', 'unknown'
  /// A human identifier for this person
  /// Identifier for a person within a particular scope.
  final List<Identifier>? identifier;

  /// Link to a resource that concerns the same actual person.
  final List<PersonLink>? link;

  /// The organization that is the custodian of the person record.
  final Reference? managingOrganization;

  /// A name associated with the person.
  /// Person may have multiple names with different uses or applicable periods.
  final List<HumanName>? name;

  /// Image of the person
  /// An image that can be displayed as a thumbnail of the person to enhance the identification of the individual.
  final Attachment? photo;

  /// A contact detail for the person, e.g. a telephone number or an email address.
  /// Person may have multiple ways to be contacted with different uses or applicable periods.  May need to have options for contacting the person urgently and also to help with identification.
  final List<ContactPoint>? telecom;
  Person({
    this.active,
    this.address,
    this.birthDate,
    super.contained,
    super.fhirExtension,
    this.gender,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.link,
    this.managingOrganization,
    super.meta,
    super.modifierExtension,
    this.name,
    this.photo,
    this.telecom,
    super.text,
  });

  @override
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      active: json['active'] as bool?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      birthDate: json['birthDate'] as String?,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      gender: json['gender'] as String?,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      link: (json['link'] as List<dynamic>?)
          ?.map((e) => PersonLink.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      name: (json['name'] as List<dynamic>?)
          ?.map((e) => HumanName.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      photo: json['photo'] != null
          ? Attachment.fromJson((json['photo'] as Map).cast<String, dynamic>())
          : null,
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map(
              (e) => ContactPoint.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'active': active,
        'address': address?.map((e) => e.toJson()).toList(),
        'birthDate': birthDate,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'gender': gender,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'link': link?.map((e) => e.toJson()).toList(),
        'managingOrganization': managingOrganization?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name?.map((e) => e.toJson()).toList(),
        'photo': photo?.toJson(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Person copyWith({
    bool? active,
    List<Address>? address,
    String? birthDate,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? gender,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<PersonLink>? link,
    Reference? managingOrganization,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<HumanName>? name,
    Attachment? photo,
    List<ContactPoint>? telecom,
    Narrative? text,
  }) {
    return Person(
      active: active ?? this.active,
      address: address ?? this.address,
      birthDate: birthDate ?? this.birthDate,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      link: link ?? this.link,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      photo: photo ?? this.photo,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
    );
  }
}
