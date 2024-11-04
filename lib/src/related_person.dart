part of '../fhir_dart.dart';

 /// Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has a formal responsibility in the care process.
 /// Need to track persons related to the patient or the healthcare process.
class RelatedPerson extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'RelatedPerson';
   /// Whether this related person's record is in active use
   /// Whether this related person record is in active use.
   /// This element is labeled as a modifier because it may be used to mark that the resource was created in error.
  final bool? active;
   /// Address where the related person can be contacted or visited.
  final List<Address>? address;
   /// The date on which the related person was born.
  final String? birthDate;
   /// A language which may be used to communicate with about the patient's health.
   /// If no language is specified, this *implies* that the default local language is spoken.  If you need to convey proficiency for multiple modes, then you need multiple RelatedPerson.Communication associations.   If the RelatedPerson does not speak the default local language, then the Interpreter Required Standard can be used to explicitly declare that an interpreter is required.
  final List<RelatedPersonCommunication>? communication;
   /// Administrative Gender - the gender that the person is considered to have for administration and record keeping purposes.
  final String? gender; // Possible values: 'male', 'female', 'other', 'unknown'
   /// A human identifier for this person
   /// Identifier for a person within a particular scope.
  final List<Identifier>? identifier;
   /// A name associated with the person.
  final List<HumanName>? name;
   /// The patient this person is related to.
  final Reference patient;
   /// Period of time that this relationship is considered valid
   /// The period of time during which this relationship is or was active. If there are no dates defined, then the interval is unknown.
  final Period? period;
   /// Image of the person.
  final List<Attachment>? photo;
   /// The nature of the relationship between a patient and the related person.
  final List<CodeableConcept>? relationship;
   /// A contact detail for the person, e.g. a telephone number or an email address.
   /// Person may have multiple ways to be contacted with different uses or applicable periods.  May need to have options for contacting the person urgently, and also to help with identification.
  final List<ContactPoint>? telecom;
  RelatedPerson({
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
    required this.patient,
    this.period,
    this.photo,
    this.relationship,
    this.telecom,
    super.text,
  });
  
  @override
  factory RelatedPerson.fromJson(Map<String, dynamic> json) {
    return RelatedPerson(
      active: json['active'] as bool?,
      address: (json['address'] as List<dynamic>?)?.map((e) => Address.fromJson(e as Map<String, dynamic>)).toList(),
      birthDate: json['birthDate'] as String?,
      communication: (json['communication'] as List<dynamic>?)?.map((e) => RelatedPersonCommunication.fromJson(e as Map<String, dynamic>)).toList(),
      contained: (json['contained'] as List<dynamic>?)?.map((e) => Resource.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      gender: json['gender'] as String?,
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)?.map((e) => Identifier.fromJson(e as Map<String, dynamic>)).toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: (json['name'] as List<dynamic>?)?.map((e) => HumanName.fromJson(e as Map<String, dynamic>)).toList(),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      photo: (json['photo'] as List<dynamic>?)?.map((e) => Attachment.fromJson(e as Map<String, dynamic>)).toList(),
      relationship: (json['relationship'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      telecom: (json['telecom'] as List<dynamic>?)?.map((e) => ContactPoint.fromJson(e as Map<String, dynamic>)).toList(),
      text: json['text'] != null ? Narrative.fromJson(json['text'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
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
      'patient': patient.toJson(),
      'period': period?.toJson(),
      'photo': photo?.map((e) => e.toJson()).toList(),
      'relationship': relationship?.map((e) => e.toJson()).toList(),
      'telecom': telecom?.map((e) => e.toJson()).toList(),
      'text': text?.toJson(),
    };
  
  @override
  RelatedPerson copyWith({
    bool? active,
    List<Address>? address,
    String? birthDate,
    List<RelatedPersonCommunication>? communication,
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
    Reference? patient,
    Period? period,
    List<Attachment>? photo,
    List<CodeableConcept>? relationship,
    List<ContactPoint>? telecom,
    Narrative? text,
  }) {
    return RelatedPerson(
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
      patient: patient ?? this.patient,
      period: period ?? this.period,
      photo: photo ?? this.photo,
      relationship: relationship ?? this.relationship,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
    );
  }
}
