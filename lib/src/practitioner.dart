part of '../fhir_dart.dart';

/// A person who is directly or indirectly involved in the provisioning of healthcare.
/// Need to track doctors, staff, locums etc. for both healthcare practitioners, funders, etc.
class Practitioner extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Practitioner';

  /// Whether this practitioner's record is in active use.
  /// If the practitioner is not in use by one organization, then it should mark the period on the PractitonerRole with an end date (even if they are active) as they may be active in another role.
  final bool? active;

  /// Address(es) of the practitioner that are not role specific (typically home address).
  /// Work addresses are not typically entered in this property as they are usually role dependent.
  /// The PractitionerRole does not have an address value on it, as it is expected that the location property be used for this purpose (which has an address).
  final List<Address>? address;

  /// The date  on which the practitioner was born
  /// The date of birth for the practitioner.
  final String? birthDate;

  /// A language the practitioner can use in patient communication.
  /// The structure aa-BB with this exact casing is one the most widely used notations for locale. However not all systems code this but instead have it as free text. Hence CodeableConcept instead of code as the data type.
  final List<CodeableConcept>? communication;

  /// Administrative Gender - the gender that the person is considered to have for administration and record keeping purposes.
  final String? gender; // Possible values: 'male', 'female', 'other', 'unknown'
  /// An identifier for the person as this agent
  /// An identifier that applies to this person in this role.
  final List<Identifier>? identifier;

  /// The name(s) associated with the practitioner.
  /// The selection of the use property should ensure that there is a single usual name specified, and others use the nickname (alias), old, or other values as appropriate.
  /// In general, select the value to be used in the ResourceReference.display based on this:
  /// 1. There is more than 1 name
  /// 2. Use = usual
  /// 3. Period is current to the date of the usage
  /// 4. Use = official
  /// 5. Other order as decided by internal business rules.
  final List<HumanName>? name;

  /// Image of the person.
  final List<Attachment>? photo;

  /// Certification, licenses, or training pertaining to the provision of care
  /// The official certifications, training, and licenses that authorize or otherwise pertain to the provision of care by the practitioner.  For example, a medical license issued by a medical board authorizing the practitioner to practice medicine within a certian locality.
  final List<PractitionerQualification>? qualification;

  /// A contact detail for the practitioner (that apply to all roles)
  /// A contact detail for the practitioner, e.g. a telephone number or an email address.
  /// Person may have multiple ways to be contacted with different uses or applicable periods.  May need to have options for contacting the person urgently and to help with identification.  These typically will have home numbers, or mobile numbers that are not role specific.
  final List<ContactPoint>? telecom;
  Practitioner({
    this.active,
    this.address,
    this.birthDate,
    this.communication,
    super.contained,
    super.fhirExtension,
    this.gender,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.photo,
    this.qualification,
    this.telecom,
    super.text,
  });

  @override
  factory Practitioner.fromJson(Map<String, dynamic> json) {
    return Practitioner(
      active: json['active'] as bool?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      birthDate: json['birthDate'] as String?,
      communication: (json['communication'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
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
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map((e) => HumanName.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      qualification: (json['qualification'] as List<dynamic>?)
          ?.map((e) => PractitionerQualification.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
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
        'active': active,
        'address': address?.map((e) => e.toJson()).toList(),
        'birthDate': birthDate,
        'communication': communication?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'gender': gender,
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name?.map((e) => e.toJson()).toList(),
        'photo': photo?.map((e) => e.toJson()).toList(),
        'qualification': qualification?.map((e) => e.toJson()).toList(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Practitioner copyWith({
    bool? active,
    List<Address>? address,
    String? birthDate,
    List<CodeableConcept>? communication,
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? gender,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<HumanName>? name,
    List<Attachment>? photo,
    List<PractitionerQualification>? qualification,
    List<ContactPoint>? telecom,
    Narrative? text,
  }) {
    return Practitioner(
      active: active ?? this.active,
      address: address ?? this.address,
      birthDate: birthDate ?? this.birthDate,
      communication: communication ?? this.communication,
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      photo: photo ?? this.photo,
      qualification: qualification ?? this.qualification,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
    );
  }
}
