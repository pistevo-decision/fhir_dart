part of '../fhir_dart.dart';

/// Adverse Reaction Events linked to exposure to substance
/// Details about each adverse reaction event linked to exposure to the identified substance.
class AllergyIntoleranceReaction extends BackboneElement
    implements FhirResource {
  /// Description of the event as a whole
  /// Text description about the reaction as a whole, including details of the manifestation if required.
  /// Use the description to provide any details of a particular event of the occurred reaction such as circumstances, reaction specifics, what happened before/after. Information, related to the event, but not describing a particular care should be captured in the comment field. For example: at the age of four, the patient was given penicillin for strep throat and subsequently developed severe hives.
  final String? description;

  /// How the subject was exposed to the substance
  /// Identification of the route by which the subject was exposed to the substance.
  /// Coding of the route of exposure with a terminology should be used wherever possible.
  final CodeableConcept? exposureRoute;

  /// Clinical symptoms/signs associated with the Event
  /// Clinical symptoms and/or signs that are observed or associated with the adverse reaction event.
  /// Manifestation can be expressed as a single word, phrase or brief description. For example: nausea, rash or no reaction. It is preferable that manifestation should be coded with a terminology, where possible. The values entered here may be used to display on an application screen as part of a list of adverse reactions, as recommended in the UK NHS CUI guidelines.  Terminologies commonly used include, but are not limited to, SNOMED CT or ICD10.
  final List<CodeableConcept> manifestation;

  /// Text about event not captured in other fields
  /// Additional text about the adverse reaction event not captured in other fields.
  /// Use this field to record information indirectly related to a particular event and not captured in the description. For example: Clinical records are no longer available, recorded based on information provided to the patient by her mother and her mother is deceased.
  final List<Annotation>? note;

  /// Date(/time) when manifestations showed
  /// Record of the date and/or time of the onset of the Reaction.
  final String? onset;

  /// Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations.
  /// It is acknowledged that this assessment is very subjective. There may be some specific practice domains where objective scales have been applied. Objective scales can be included in this model as extensions.
  final String? severity; // Possible values: 'mild', 'moderate', 'severe'
  /// Specific substance or pharmaceutical product considered to be responsible for event
  /// Identification of the specific substance (or pharmaceutical product) considered to be responsible for the Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'.  If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.
  /// Coding of the specific substance (or pharmaceutical product) with a terminology capable of triggering decision support should be used wherever possible.  The 'code' element allows for the use of a specific substance or pharmaceutical product, or a group or class of substances. In the case of an allergy or intolerance to a class of substances, (for example, "penicillins"), the 'reaction.substance' element could be used to code the specific substance that was identified as having caused the reaction (for example, "amoxycillin"). Duplication of the value in the 'code' and 'reaction.substance' elements is acceptable when a specific substance has been recorded in 'code'.
  final CodeableConcept? substance;
  AllergyIntoleranceReaction({
    this.description,
    this.exposureRoute,
    super.fhirExtension,
    super.id,
    required this.manifestation,
    super.modifierExtension,
    this.note,
    this.onset,
    this.severity,
    this.substance,
  });

  @override
  factory AllergyIntoleranceReaction.fromJson(Map<String, dynamic> json) {
    return AllergyIntoleranceReaction(
      description: json['description'] as String?,
      exposureRoute: json['exposureRoute'] != null
          ? CodeableConcept.fromJson(
              (json['exposureRoute'] as Map).cast<String, dynamic>())
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      manifestation: (json['manifestation'] as List<dynamic>)
          .map((e) =>
              CodeableConcept.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      onset: json['onset'] as String?,
      severity: json['severity'] as String?,
      substance: json['substance'] != null
          ? CodeableConcept.fromJson(
              (json['substance'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'exposureRoute': exposureRoute?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'manifestation': manifestation.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'onset': onset,
        'severity': severity,
        'substance': substance?.toJson(),
      };

  @override
  AllergyIntoleranceReaction copyWith({
    String? description,
    CodeableConcept? exposureRoute,
    List<Extension>? fhirExtension,
    String? id,
    List<CodeableConcept>? manifestation,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    String? onset,
    String? severity,
    CodeableConcept? substance,
  }) {
    return AllergyIntoleranceReaction(
      description: description ?? this.description,
      exposureRoute: exposureRoute ?? this.exposureRoute,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      manifestation: manifestation ?? this.manifestation,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      onset: onset ?? this.onset,
      severity: severity ?? this.severity,
      substance: substance ?? this.substance,
    );
  }
}
