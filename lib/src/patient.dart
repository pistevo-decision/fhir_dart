part of '../fhir_dart.dart';

/// Demographics and other administrative information about an individual or animal receiving care or other health-related services.
/// Tracking patient is the center of the healthcare process.
class Patient extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const resourceType = 'Patient';

  /// Whether this patient's record is in active use
  /// Whether this patient record is in active use.
  /// Many systems use this property to mark as non-current patients, such as those that have not been seen for a period of time based on an organization's business rules.
  /// It is often used to filter patient lists to exclude inactive patients
  /// Deceased patients may also be marked as inactive for the same reasons, but may be active for some time after death.
  /// If a record is inactive, and linked to an active record, then future patient/record updates should occur on the other patient.
  final bool? active;

  /// An address for the individual.
  /// Patient may have multiple addresses with different uses or applicable periods.
  final List<Address>? address;

  /// The date of birth for the individual.
  /// At least an estimated year should be provided as a guess if the real DOB is unknown  There is a standard extension "patient-birthTime" available that should be used where Time is required (such as in maternity/infant care systems).
  final String? birthDate;

  /// A language which may be used to communicate with the patient about his or her health.
  /// If no language is specified, this *implies* that the default local language is spoken.  If you need to convey proficiency for multiple modes, then you need multiple Patient.Communication associations.   For animals, language is not a relevant field, and should be absent from the instance. If the Patient does not speak the default local language, then the Interpreter Required Standard can be used to explicitly declare that an interpreter is required.
  final List<PatientCommunication>? communication;

  /// A contact party (e.g. guardian, partner, friend) for the patient.
  /// Contact covers all kinds of contact parties: family members, business contacts, guardians, caregivers. Not applicable to register pedigree and family ties beyond use of having contact.
  final List<PatientContact>? contact;

  /// Indicates if the individual is deceased or not.
  /// If there's no value in the instance, it means there is no statement on whether or not the individual is deceased. Most systems will interpret the absence of a value as a sign of the person being alive.
  final bool? deceasedBoolean;

  /// Indicates if the individual is deceased or not.
  /// If there's no value in the instance, it means there is no statement on whether or not the individual is deceased. Most systems will interpret the absence of a value as a sign of the person being alive.
  final String? deceasedDateTime;

  /// Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes.
  /// The gender might not match the biological sex as determined by genetics or the individual's preferred identification. Note that for both humans and particularly animals, there are other legitimate possibilities than male and female, though the vast majority of systems and contexts only support male and female.  Systems providing decision support or enforcing business rules should ideally do this on the basis of Observations dealing with the specific sex or gender aspect of interest (anatomical, chromosomal, social, etc.)  However, because these observations are infrequently recorded, defaulting to the administrative gender is common practice.  Where such defaulting occurs, rule enforcement should allow for the variation between administrative and biological, chromosomal and other gender aspects.  For example, an alert about a hysterectomy on a male should be handled as a warning or overridable error, not a "hard" error.  See the Patient Gender and Sex section for additional information about communicating patient gender and sex.
  final String? gender; // Possible values: 'male', 'female', 'other', 'unknown'
  /// Patient's nominated primary care provider
  /// Patient's nominated care provider.
  /// This may be the primary care provider (in a GP context), or it may be a patient nominated care manager in a community/disability setting, or even organization that will provide people to perform the care provider roles.  It is not to be used to record Care Teams, these should be in a CareTeam resource that may be linked to the CarePlan or EpisodeOfCare resources.
  /// Multiple GPs may be recorded against the patient for various reasons, such as a student that has his home GP listed along with the GP at university during the school semesters, or a "fly-in/fly-out" worker that has the onsite GP also included with his home GP to remain aware of medical issues.
  /// Jurisdictions may decide that they can profile this down to 1 if desired, or 1 per type.
  final List<Reference>? generalPractitioner;

  /// An identifier for this patient.
  final List<Identifier>? identifier;

  /// Link to another patient resource that concerns the same actual person
  /// Link to another patient resource that concerns the same actual patient.
  /// There is no assumption that linked patient records have mutual links.
  final List<PatientLink>? link;

  /// Organization that is the custodian of the patient record.
  /// There is only one managing organization for a specific patient record. Other organizations will have their own Patient record, and may use the Link property to join the records together (or a Person resource which can include confidence ratings for the association).
  final Reference? managingOrganization;

  /// Marital (civil) status of a patient
  /// This field contains a patient's most recent marital (civil) status.
  final CodeableConcept? maritalStatus;

  /// Whether patient is part of a multiple birth
  /// Indicates whether the patient is part of a multiple (boolean) or indicates the actual birth order (integer).
  /// Where the valueInteger is provided, the number is the birth number in the sequence. E.g. The middle birth in triplets would be valueInteger=2 and the third born would have valueInteger=3 If a boolean value was provided for this triplets example, then all 3 patient records would have valueBoolean=true (the ordering is not indicated).
  final bool? multipleBirthBoolean;

  /// Whether patient is part of a multiple birth
  /// Indicates whether the patient is part of a multiple (boolean) or indicates the actual birth order (integer).
  /// Where the valueInteger is provided, the number is the birth number in the sequence. E.g. The middle birth in triplets would be valueInteger=2 and the third born would have valueInteger=3 If a boolean value was provided for this triplets example, then all 3 patient records would have valueBoolean=true (the ordering is not indicated).
  final int? multipleBirthInteger;

  /// A name associated with the patient
  /// A name associated with the individual.
  /// A patient may have multiple names with different uses or applicable periods. For animals, the name is a "HumanName" in the sense that is assigned and used by humans and has the same patterns.
  final List<HumanName>? name;

  /// Image of the patient.
  /// Guidelines:
  /// * Use id photos, not clinical photos.
  /// * Limit dimensions to thumbnail.
  /// * Keep byte count low to ease resource updates.
  final List<Attachment>? photo;

  /// A contact detail for the individual
  /// A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted.
  /// A Patient may have multiple ways to be contacted with different uses or applicable periods.  May need to have options for contacting the person urgently and also to help with identification. The address might not go directly to the individual, but may reach another party that is able to proxy for the patient (i.e. home phone, or pet owner's phone).
  final List<ContactPoint>? telecom;
  Patient({
    this.active,
    this.address,
    this.birthDate,
    this.communication,
    this.contact,
    super.contained,
    this.deceasedBoolean,
    this.deceasedDateTime,
    super.fhirExtension,
    this.gender,
    this.generalPractitioner,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    this.link,
    this.managingOrganization,
    this.maritalStatus,
    super.meta,
    super.modifierExtension,
    this.multipleBirthBoolean,
    this.multipleBirthInteger,
    this.name,
    this.photo,
    this.telecom,
    super.text,
  });

  @override
  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      active: json['active'] as bool?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) => Address.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      birthDate: json['birthDate'] as String?,
      communication: (json['communication'] as List<dynamic>?)
          ?.map((e) =>
              PatientCommunication.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map((e) =>
              PatientContact.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      deceasedBoolean: json['deceasedBoolean'] as bool?,
      deceasedDateTime: json['deceasedDateTime'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      gender: json['gender'] as String?,
      generalPractitioner: (json['generalPractitioner'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      link: (json['link'] as List<dynamic>?)
          ?.map((e) => PatientLink.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      managingOrganization: json['managingOrganization'] != null
          ? Reference.fromJson(
              (json['managingOrganization'] as Map).cast<String, dynamic>())
          : null,
      maritalStatus: json['maritalStatus'] != null
          ? CodeableConcept.fromJson(
              (json['maritalStatus'] as Map).cast<String, dynamic>())
          : null,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      multipleBirthBoolean: json['multipleBirthBoolean'] as bool?,
      multipleBirthInteger: json['multipleBirthInteger'] as int?,
      name: (json['name'] as List<dynamic>?)
          ?.map((e) => HumanName.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => Attachment.fromJson((e as Map).cast<String, dynamic>()))
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
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'deceasedBoolean': deceasedBoolean,
        'deceasedDateTime': deceasedDateTime,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'gender': gender,
        'generalPractitioner':
            generalPractitioner?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'link': link?.map((e) => e.toJson()).toList(),
        'managingOrganization': managingOrganization?.toJson(),
        'maritalStatus': maritalStatus?.toJson(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'multipleBirthBoolean': multipleBirthBoolean,
        'multipleBirthInteger': multipleBirthInteger,
        'name': name?.map((e) => e.toJson()).toList(),
        'photo': photo?.map((e) => e.toJson()).toList(),
        'telecom': telecom?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
      };

  @override
  Patient copyWith({
    bool? active,
    List<Address>? address,
    String? birthDate,
    List<PatientCommunication>? communication,
    List<PatientContact>? contact,
    List<Resource>? contained,
    bool? deceasedBoolean,
    String? deceasedDateTime,
    List<Extension>? fhirExtension,
    String? gender,
    List<Reference>? generalPractitioner,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    List<PatientLink>? link,
    Reference? managingOrganization,
    CodeableConcept? maritalStatus,
    Meta? meta,
    List<Extension>? modifierExtension,
    bool? multipleBirthBoolean,
    int? multipleBirthInteger,
    List<HumanName>? name,
    List<Attachment>? photo,
    List<ContactPoint>? telecom,
    Narrative? text,
  }) {
    return Patient(
      active: active ?? this.active,
      address: address ?? this.address,
      birthDate: birthDate ?? this.birthDate,
      communication: communication ?? this.communication,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      deceasedBoolean: deceasedBoolean ?? this.deceasedBoolean,
      deceasedDateTime: deceasedDateTime ?? this.deceasedDateTime,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      gender: gender ?? this.gender,
      generalPractitioner: generalPractitioner ?? this.generalPractitioner,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      link: link ?? this.link,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      multipleBirthBoolean: multipleBirthBoolean ?? this.multipleBirthBoolean,
      multipleBirthInteger: multipleBirthInteger ?? this.multipleBirthInteger,
      name: name ?? this.name,
      photo: photo ?? this.photo,
      telecom: telecom ?? this.telecom,
      text: text ?? this.text,
    );
  }
}
