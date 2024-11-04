part of '../fhir_dart.dart';

/// Clinical context of document
/// The clinical context in which the document was prepared.
/// These values are primarily added to help with searching for interesting/relevant documents.
class DocumentReferenceContext extends BackboneElement implements FhirResource {
  /// Context of the document  content
  /// Describes the clinical encounter or type of care that the document content is associated with.
  final List<Reference>? encounter;

  /// Main clinical acts documented
  /// This list of codes represents the main clinical acts, such as a colonoscopy or an appendectomy, being documented. In some cases, the event is inherent in the type Code, such as a "History and Physical Report" in which the procedure being documented is necessarily a "History and Physical" act.
  /// An event can further specialize the act inherent in the type, such as  where it is simply "Procedure Report" and the procedure was a "colonoscopy". If one or more event codes are included, they shall not conflict with the values inherent in the class or type elements as such a conflict would create an ambiguous situation.
  final List<CodeableConcept>? event;

  /// Kind of facility where patient was seen
  /// The kind of facility where the patient was seen.
  final CodeableConcept? facilityType;

  /// Time of service that is being documented
  /// The time period over which the service that is described by the document was provided.
  final Period? period;

  /// Additional details about where the content was created (e.g. clinical specialty)
  /// This property may convey specifics about the practice setting where the content was created, often reflecting the clinical specialty.
  /// This element should be based on a coarse classification system for the class of specialty practice. Recommend the use of the classification system for Practice Setting, such as that described by the Subject Matter Domain in LOINC.
  final CodeableConcept? practiceSetting;

  /// Related identifiers or resources associated with the DocumentReference.
  /// May be identifiers or resources that caused the DocumentReference or referenced Document to be created.
  final List<Reference>? related;

  /// Patient demographics from source
  /// The Patient Information as known when the document was published. May be a reference to a version specific, or contained.
  final Reference? sourcePatientInfo;
  DocumentReferenceContext({
    this.encounter,
    this.event,
    super.fhirExtension,
    this.facilityType,
    super.id,
    super.modifierExtension,
    this.period,
    this.practiceSetting,
    this.related,
    this.sourcePatientInfo,
  });

  @override
  factory DocumentReferenceContext.fromJson(Map<String, dynamic> json) {
    return DocumentReferenceContext(
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      facilityType: json['facilityType'] != null
          ? CodeableConcept.fromJson(
              json['facilityType'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      practiceSetting: json['practiceSetting'] != null
          ? CodeableConcept.fromJson(
              json['practiceSetting'] as Map<String, dynamic>)
          : null,
      related: (json['related'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      sourcePatientInfo: json['sourcePatientInfo'] != null
          ? Reference.fromJson(
              json['sourcePatientInfo'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'encounter': encounter?.map((e) => e.toJson()).toList(),
        'event': event?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'facilityType': facilityType?.toJson(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'period': period?.toJson(),
        'practiceSetting': practiceSetting?.toJson(),
        'related': related?.map((e) => e.toJson()).toList(),
        'sourcePatientInfo': sourcePatientInfo?.toJson(),
      };

  @override
  DocumentReferenceContext copyWith({
    List<Reference>? encounter,
    List<CodeableConcept>? event,
    List<Extension>? fhirExtension,
    CodeableConcept? facilityType,
    String? id,
    List<Extension>? modifierExtension,
    Period? period,
    CodeableConcept? practiceSetting,
    List<Reference>? related,
    Reference? sourcePatientInfo,
  }) {
    return DocumentReferenceContext(
      encounter: encounter ?? this.encounter,
      event: event ?? this.event,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      facilityType: facilityType ?? this.facilityType,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      practiceSetting: practiceSetting ?? this.practiceSetting,
      related: related ?? this.related,
      sourcePatientInfo: sourcePatientInfo ?? this.sourcePatientInfo,
    );
  }
}
