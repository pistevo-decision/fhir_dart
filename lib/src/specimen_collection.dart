part of '../fhir_dart.dart';

 /// Collection details
 /// Details concerning the specimen collection.
class SpecimenCollection extends BackboneElement implements FhirResource {
   /// Anatomical collection site
   /// Anatomical location from which the specimen was collected (if subject is a patient). This is the target site.  This element is not used for environmental specimens.
   /// If the use case requires  BodySite to be handled as a separate resource instead of an inline coded element (e.g. to identify and track separately)  then use the standard extension [bodySite](extension-bodysite.html).
  final CodeableConcept? bodySite;
   /// Collection time
   /// Time when specimen was collected from subject - the physiologically relevant time.
  final String? collectedDateTime;
   /// Collection time
   /// Time when specimen was collected from subject - the physiologically relevant time.
  final Period? collectedPeriod;
   /// Who collected the specimen
   /// Person who collected the specimen.
  final Reference? collector;
   /// How long it took to collect specimen
   /// The span of time over which the collection of a specimen occurred.
  final Duration? duration;
   /// Whether or how long patient abstained from food and/or drink
   /// Abstinence or reduction from some or all food, drink, or both, for a period of time prior to sample collection.
   /// Representing fasting status using this element is preferred to representing it with an observation using a 'pre-coordinated code'  such as  LOINC 2005-7 (Calcium [Moles/​time] in 2 hour Urine --12 hours fasting), or  using  a component observation ` such as `Observation.component code`  = LOINC 49541-6 (Fasting status - Reported).
  final CodeableConcept? fastingStatusCodeableConcept;
   /// Whether or how long patient abstained from food and/or drink
   /// Abstinence or reduction from some or all food, drink, or both, for a period of time prior to sample collection.
   /// Representing fasting status using this element is preferred to representing it with an observation using a 'pre-coordinated code'  such as  LOINC 2005-7 (Calcium [Moles/​time] in 2 hour Urine --12 hours fasting), or  using  a component observation ` such as `Observation.component code`  = LOINC 49541-6 (Fasting status - Reported).
  final Duration? fastingStatusDuration;
   /// Technique used to perform collection
   /// A coded value specifying the technique that is used to perform the procedure.
  final CodeableConcept? method;
   /// The quantity of specimen collected; for instance the volume of a blood sample, or the physical measurement of an anatomic pathology sample.
  final Quantity? quantity;
  SpecimenCollection({
    this.bodySite,
    this.collectedDateTime,
    this.collectedPeriod,
    this.collector,
    this.duration,
    super.fhirExtension,
    this.fastingStatusCodeableConcept,
    this.fastingStatusDuration,
    super.id,
    this.method,
    super.modifierExtension,
    this.quantity,
  });
  
  @override
  factory SpecimenCollection.fromJson(Map<String, dynamic> json) {
    return SpecimenCollection(
      bodySite: json['bodySite'] != null ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>) : null,
      collectedDateTime: json['collectedDateTime'] as String?,
      collectedPeriod: json['collectedPeriod'] != null ? Period.fromJson(json['collectedPeriod'] as Map<String, dynamic>) : null,
      collector: json['collector'] != null ? Reference.fromJson(json['collector'] as Map<String, dynamic>) : null,
      duration: json['duration'] != null ? Duration.fromJson(json['duration'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      fastingStatusCodeableConcept: json['fastingStatusCodeableConcept'] != null ? CodeableConcept.fromJson(json['fastingStatusCodeableConcept'] as Map<String, dynamic>) : null,
      fastingStatusDuration: json['fastingStatusDuration'] != null ? Duration.fromJson(json['fastingStatusDuration'] as Map<String, dynamic>) : null,
      id: json['id'] as String?,
      method: json['method'] != null ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      quantity: json['quantity'] != null ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'bodySite': bodySite?.toJson(),
      'collectedDateTime': collectedDateTime,
      'collectedPeriod': collectedPeriod?.toJson(),
      'collector': collector?.toJson(),
      'duration': duration?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'fastingStatusCodeableConcept': fastingStatusCodeableConcept?.toJson(),
      'fastingStatusDuration': fastingStatusDuration?.toJson(),
      'id': id,
      'method': method?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'quantity': quantity?.toJson(),
    };
  
  @override
  SpecimenCollection copyWith({
    CodeableConcept? bodySite,
    String? collectedDateTime,
    Period? collectedPeriod,
    Reference? collector,
    Duration? duration,
    List<Extension>? fhirExtension,
    CodeableConcept? fastingStatusCodeableConcept,
    Duration? fastingStatusDuration,
    String? id,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    Quantity? quantity,
  }) {
    return SpecimenCollection(
      bodySite: bodySite ?? this.bodySite,
      collectedDateTime: collectedDateTime ?? this.collectedDateTime,
      collectedPeriod: collectedPeriod ?? this.collectedPeriod,
      collector: collector ?? this.collector,
      duration: duration ?? this.duration,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fastingStatusCodeableConcept: fastingStatusCodeableConcept ?? this.fastingStatusCodeableConcept,
      fastingStatusDuration: fastingStatusDuration ?? this.fastingStatusDuration,
      id: id ?? this.id,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
    );
  }
}
