part of '../fhir_dart.dart';

/// Need to make sure we encompass public health studies.
/// A process where a researcher or organization plans and then executes a series of steps intended to increase the field of healthcare-related knowledge.  This includes studies of safety, efficacy, comparative effectiveness and other information about medications, devices, therapies and other interventional and investigative techniques.  A ResearchStudy involves the gathering of information about human or animal subjects.
class ResearchStudy extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'ResearchStudy';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// Defined path through the study for a subject
  /// Describes an expected sequence of events for one of the participants of a study.  E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out, follow-up.
  final List<ResearchStudyArm>? arm;

  /// Classifications for the study
  /// Codes categorizing the type of study such as investigational vs. observational, type of blinding, type of randomization, safety vs. efficacy, etc.
  final List<CodeableConcept>? category;

  /// Condition being studied
  /// The condition that is the focus of the study.  For example, In a study to examine risk factors for Lupus, might have as an inclusion criterion "healthy volunteer", but the target condition code would be a Lupus SNOMED code.
  final List<CodeableConcept>? condition;

  /// Contact details for the study
  /// Contact details to assist a user in learning more about or engaging with the study.
  final List<ContactDetail>? contact;

  /// What this is study doing
  /// A full description of how the study is being conducted.
  final String? description;

  /// Inclusion & exclusion criteria
  /// Reference to a Group that defines the criteria for and quantity of subjects participating in the study.  E.g. " 200 female Europeans between the ages of 20 and 45 with early onset diabetes".
  /// The Group referenced should not generally enumerate specific subjects.  Subjects will be linked to the study using the ResearchSubject resource.
  final List<Reference>? enrollment;

  /// Drugs, devices, etc. under study
  /// The medication(s), food(s), therapy(ies), device(s) or other concerns or interventions that the study is seeking to gain more information about.
  final List<CodeableConcept>? focus;

  /// Business Identifier for study
  /// Identifiers assigned to this research study by the sponsor or other systems.
  final List<Identifier>? identifier;

  /// Used to search for the study
  /// Key terms to aid in searching for or filtering the study.
  final List<CodeableConcept>? keyword;

  /// Geographic region(s) for study
  /// Indicates a country, state or other region where the study is taking place.
  final List<CodeableConcept>? location;

  /// Comments made about the study by the performer, subject or other participants.
  final List<Annotation>? note;

  /// A goal for the study
  /// A goal that the study is aiming to achieve in terms of a scientific question to be answered by the analysis of data collected during the study.
  final List<ResearchStudyObjective>? objective;

  /// Part of larger study
  /// A larger research study of which this particular study is a component or step.
  final List<Reference>? partOf;

  /// When the study began and ended
  /// Identifies the start date and the expected (or actual, depending on status) end date for the study.
  final Period? period;

  /// n-a | early-phase-1 | phase-1 | phase-1-phase-2 | phase-2 | phase-2-phase-3 | phase-3 | phase-4
  /// The stage in the progression of a therapy from initial experimental use in humans in clinical trials to post-market evaluation.
  final CodeableConcept? phase;

  /// treatment | prevention | diagnostic | supportive-care | screening | health-services-research | basic-science | device-feasibility
  /// The type of study based upon the intent of the study's activities. A classification of the intent of the study.
  final CodeableConcept? primaryPurposeType;

  /// Researcher who oversees multiple aspects of the study
  /// A researcher in a study who oversees multiple aspects of the study, such as concept development, protocol writing, protocol submission for IRB approval, participant recruitment, informed consent, data collection, analysis, interpretation and presentation.
  final Reference? principalInvestigator;

  /// Steps followed in executing study
  /// The set of steps expected to be performed as part of the execution of the study.
  final List<Reference>? protocol;

  /// accrual-goal-met | closed-due-to-toxicity | closed-due-to-lack-of-study-progress | temporarily-closed-per-study-design
  /// A description and/or code explaining the premature termination of the study.
  final CodeableConcept? reasonStopped;

  /// References and dependencies
  /// Citations, references and other related documents.
  final List<RelatedArtifact>? relatedArtifact;

  /// Facility where study activities are conducted
  /// A facility in which study activities are conducted.
  final List<Reference>? site;

  /// Organization that initiates and is legally responsible for the study
  /// An organization that initiates the investigation and is legally responsible for the study.
  final Reference? sponsor;

  /// The current state of the study.
  final String
      status; // Possible values: 'active', 'administratively-completed', 'approved', 'closed-to-accrual', 'closed-to-accrual-and-intervention', 'completed', 'disapproved', 'in-review', 'temporarily-closed-to-accrual', 'temporarily-closed-to-accrual-and-intervention', 'withdrawn'
  /// Name for this study
  /// A short, descriptive user-friendly label for the study.
  final String? title;
  ResearchStudy({
    this.arm,
    this.category,
    this.condition,
    this.contact,
    super.contained,
    this.description,
    this.enrollment,
    super.fhirExtension,
    this.focus,
    super.id,
    this.identifier,
    super.implicitRules,
    this.keyword,
    super.language,
    this.location,
    super.meta,
    super.modifierExtension,
    this.note,
    this.objective,
    this.partOf,
    this.period,
    this.phase,
    this.primaryPurposeType,
    this.principalInvestigator,
    this.protocol,
    this.reasonStopped,
    this.relatedArtifact,
    this.site,
    this.sponsor,
    required this.status,
    super.text,
    this.title,
  });

  @override
  factory ResearchStudy.fromJson(Map<String, dynamic> json) {
    return ResearchStudy(
      arm: (json['arm'] as List<dynamic>?)
          ?.map((e) =>
              ResearchStudyArm.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contact: (json['contact'] as List<dynamic>?)
          ?.map(
              (e) => ContactDetail.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      description: json['description'] as String?,
      enrollment: (json['enrollment'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      focus: (json['focus'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      keyword: (json['keyword'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      language: json['language'] as String?,
      location: (json['location'] as List<dynamic>?)
          ?.map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      objective: (json['objective'] as List<dynamic>?)
          ?.map((e) => ResearchStudyObjective.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson((json['period'] as Map).cast<String, dynamic>())
          : null,
      phase: json['phase'] != null
          ? CodeableConcept.fromJson(
              (json['phase'] as Map).cast<String, dynamic>())
          : null,
      primaryPurposeType: json['primaryPurposeType'] != null
          ? CodeableConcept.fromJson(
              (json['primaryPurposeType'] as Map).cast<String, dynamic>())
          : null,
      principalInvestigator: json['principalInvestigator'] != null
          ? Reference.fromJson(
              (json['principalInvestigator'] as Map).cast<String, dynamic>())
          : null,
      protocol: (json['protocol'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      reasonStopped: json['reasonStopped'] != null
          ? CodeableConcept.fromJson(
              (json['reasonStopped'] as Map).cast<String, dynamic>())
          : null,
      relatedArtifact: (json['relatedArtifact'] as List<dynamic>?)
          ?.map((e) =>
              RelatedArtifact.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      site: (json['site'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      sponsor: json['sponsor'] != null
          ? Reference.fromJson((json['sponsor'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'arm': arm?.map((e) => e.toJson()).toList(),
        'category': category?.map((e) => e.toJson()).toList(),
        'condition': condition?.map((e) => e.toJson()).toList(),
        'contact': contact?.map((e) => e.toJson()).toList(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'description': description,
        'enrollment': enrollment?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'focus': focus?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'keyword': keyword?.map((e) => e.toJson()).toList(),
        'language': language,
        'location': location?.map((e) => e.toJson()).toList(),
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'objective': objective?.map((e) => e.toJson()).toList(),
        'partOf': partOf?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'phase': phase?.toJson(),
        'primaryPurposeType': primaryPurposeType?.toJson(),
        'principalInvestigator': principalInvestigator?.toJson(),
        'protocol': protocol?.map((e) => e.toJson()).toList(),
        'reasonStopped': reasonStopped?.toJson(),
        'relatedArtifact': relatedArtifact?.map((e) => e.toJson()).toList(),
        'site': site?.map((e) => e.toJson()).toList(),
        'sponsor': sponsor?.toJson(),
        'status': status,
        'text': text?.toJson(),
        'title': title,
      };

  @override
  ResearchStudy copyWith({
    List<ResearchStudyArm>? arm,
    List<CodeableConcept>? category,
    List<CodeableConcept>? condition,
    List<ContactDetail>? contact,
    List<Resource>? contained,
    String? description,
    List<Reference>? enrollment,
    List<Extension>? fhirExtension,
    List<CodeableConcept>? focus,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    List<CodeableConcept>? keyword,
    String? language,
    List<CodeableConcept>? location,
    Meta? meta,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    List<ResearchStudyObjective>? objective,
    List<Reference>? partOf,
    Period? period,
    CodeableConcept? phase,
    CodeableConcept? primaryPurposeType,
    Reference? principalInvestigator,
    List<Reference>? protocol,
    CodeableConcept? reasonStopped,
    List<RelatedArtifact>? relatedArtifact,
    List<Reference>? site,
    Reference? sponsor,
    String? status,
    Narrative? text,
    String? title,
  }) {
    return ResearchStudy(
      arm: arm ?? this.arm,
      category: category ?? this.category,
      condition: condition ?? this.condition,
      contact: contact ?? this.contact,
      contained: contained ?? this.contained,
      description: description ?? this.description,
      enrollment: enrollment ?? this.enrollment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focus: focus ?? this.focus,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      keyword: keyword ?? this.keyword,
      language: language ?? this.language,
      location: location ?? this.location,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      objective: objective ?? this.objective,
      partOf: partOf ?? this.partOf,
      period: period ?? this.period,
      phase: phase ?? this.phase,
      primaryPurposeType: primaryPurposeType ?? this.primaryPurposeType,
      principalInvestigator:
          principalInvestigator ?? this.principalInvestigator,
      protocol: protocol ?? this.protocol,
      reasonStopped: reasonStopped ?? this.reasonStopped,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      site: site ?? this.site,
      sponsor: sponsor ?? this.sponsor,
      status: status ?? this.status,
      text: text ?? this.text,
      title: title ?? this.title,
    );
  }
}
