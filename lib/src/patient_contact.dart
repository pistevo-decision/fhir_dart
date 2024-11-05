part of '../fhir_dart.dart';

/// A contact party (e.g. guardian, partner, friend) for the patient.
/// Contact covers all kinds of contact parties: family members, business contacts, guardians, caregivers. Not applicable to register pedigree and family ties beyond use of having contact.
class PatientContact extends BackboneElement implements FhirResource {
  /// Address for the contact person.
  final Address? address;

  /// Administrative Gender - the gender that the contact person is considered to have for administration and record keeping purposes.
  final String? gender; // Possible values: 'male', 'female', 'other', 'unknown'
  /// A name associated with the contact person.
  final HumanName? name;

  /// Organization that is associated with the contact
  /// Organization on behalf of which the contact is acting or for which the contact is working.
  final Reference? organization;

  /// The period during which this contact person or organization is valid to be contacted relating to this patient.
  final Period? period;

  /// The kind of relationship
  /// The nature of the relationship between the patient and the contact person.
  final List<CodeableConcept>? relationship;

  /// A contact detail for the person, e.g. a telephone number or an email address.
  /// Contact may have multiple ways to be contacted with different uses or applicable periods.  May need to have options for contacting the person urgently, and also to help with identification.
  final List<ContactPoint>? telecom;
  PatientContact({
    this.address,
    super.fhirExtension,
    this.gender,
    super.id,
    super.modifierExtension,
    this.name,
    this.organization,
    this.period,
    this.relationship,
    this.telecom,
  });

  @override
  factory PatientContact.fromJson(Map<String, dynamic> json) {
    return PatientContact(
      address: json['address'] != null
          ? Address.fromJson((json['address'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      gender: json['gender'] as String?,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] != null
          ? HumanName.fromJson((json['name'] as Map).cast<String, dynamic>())
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(
              (json['organization'] as Map).cast<String, dynamic>())
          : null,
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map(
              (e) => ContactPoint.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'address': address?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'gender': gender,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name?.toJson(),
        'organization': organization?.toJson(),
        'period': period?.toJson(),
        'relationship': relationship?.map((e) => e.toJson()).toList(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
      };

  @override
  PatientContact copyWith({
    Address? address,
    List<Extension>? fhirExtension,
    String? gender,
    String? id,
    List<Extension>? modifierExtension,
    HumanName? name,
    Reference? organization,
    Period? period,
    List<CodeableConcept>? relationship,
    List<ContactPoint>? telecom,
  }) {
    return PatientContact(
      address: address ?? this.address,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      organization: organization ?? this.organization,
      period: period ?? this.period,
      relationship: relationship ?? this.relationship,
      telecom: telecom ?? this.telecom,
    );
  }
}
