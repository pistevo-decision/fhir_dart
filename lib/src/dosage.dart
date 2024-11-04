part of '../fhir_dart.dart';

 /// Base StructureDefinition for Dosage Type: Indicates how the medication is/was taken or should be taken by the patient.
class Dosage extends BackboneElement implements FhirResource {
   /// Supplemental instruction or warnings to the patient - e.g. "with meals", "may cause drowsiness"
   /// Supplemental instructions to the patient on how to take the medication  (e.g. "with meals" or"take half to one hour before food") or warnings for the patient about the medication (e.g. "may cause drowsiness" or "avoid exposure of skin to direct sunlight or sunlamps").
   /// Information about administration or preparation of the medication (e.g. "infuse as rapidly as possibly via intraperitoneal port" or "immediately following drug x") should be populated in dosage.text.
  final List<CodeableConcept>? additionalInstruction;
   /// Take "as needed" (for x)
   /// Indicates whether the Medication is only taken when needed within a specific dosing schedule (Boolean option), or it indicates the precondition for taking the Medication (CodeableConcept).
   /// Can express "as needed" without a reason by setting the Boolean = True.  In this case the CodeableConcept is not populated.  Or you can express "as needed" with a reason by including the CodeableConcept.  In this case the Boolean is assumed to be True.  If you set the Boolean to False, then the dose is given according to the schedule and is not "prn" or "as needed".
  final bool? asNeededBoolean;
   /// Take "as needed" (for x)
   /// Indicates whether the Medication is only taken when needed within a specific dosing schedule (Boolean option), or it indicates the precondition for taking the Medication (CodeableConcept).
   /// Can express "as needed" without a reason by setting the Boolean = True.  In this case the CodeableConcept is not populated.  Or you can express "as needed" with a reason by including the CodeableConcept.  In this case the Boolean is assumed to be True.  If you set the Boolean to False, then the dose is given according to the schedule and is not "prn" or "as needed".
  final CodeableConcept? asNeededCodeableConcept;
   /// Amount of medication administered
   /// The amount of medication administered.
  final List<DosageDoseAndRate>? doseAndRate;
   /// Upper limit on medication per administration.
   /// This is intended for use as an adjunct to the dosage when there is an upper cap.  For example, a body surface area related dose with a maximum amount, such as 1.5 mg/m2 (maximum 2 mg) IV over 5 – 10 minutes would have doseQuantity of 1.5 mg/m2 and maxDosePerAdministration of 2 mg.
  final Quantity? maxDosePerAdministration;
   /// Upper limit on medication per lifetime of the patient.
  final Quantity? maxDosePerLifetime;
   /// Upper limit on medication per unit of time.
   /// This is intended for use as an adjunct to the dosage when there is an upper cap.  For example "2 tablets every 4 hours to a maximum of 8/day".
  final Ratio? maxDosePerPeriod;
   /// Technique for administering medication.
   /// Terminologies used often pre-coordinate this term with the route and or form of administration.
  final CodeableConcept? method;
   /// Patient or consumer oriented instructions
   /// Instructions in terms that are understood by the patient or consumer.
  final String? patientInstruction;
   /// How drug should enter body.
  final CodeableConcept? route;
   /// The order of the dosage instructions
   /// Indicates the order in which the dosage instructions should be applied or interpreted.
  final int? sequence;
   /// Body site to administer to.
   /// If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [bodySite](extension-bodysite.html).  May be a summary code, or a reference to a very precise definition of the location, or both.
  final CodeableConcept? site;
   /// Free text dosage instructions e.g. SIG.
  final String? text;
   /// When medication should be administered.
   /// This attribute might not always be populated while the Dosage.text is expected to be populated.  If both are populated, then the Dosage.text should reflect the content of the Dosage.timing.
  final Timing? timing;
  Dosage({
    this.additionalInstruction,
    this.asNeededBoolean,
    this.asNeededCodeableConcept,
    this.doseAndRate,
    super.fhirExtension,
    super.id,
    this.maxDosePerAdministration,
    this.maxDosePerLifetime,
    this.maxDosePerPeriod,
    this.method,
    super.modifierExtension,
    this.patientInstruction,
    this.route,
    this.sequence,
    this.site,
    this.text,
    this.timing,
  });
  
  @override
  factory Dosage.fromJson(Map<String, dynamic> json) {
    return Dosage(
      additionalInstruction: (json['additionalInstruction'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      asNeededBoolean: json['asNeededBoolean'] as bool?,
      asNeededCodeableConcept: json['asNeededCodeableConcept'] != null ? CodeableConcept.fromJson(json['asNeededCodeableConcept'] as Map<String, dynamic>) : null,
      doseAndRate: (json['doseAndRate'] as List<dynamic>?)?.map((e) => DosageDoseAndRate.fromJson(e as Map<String, dynamic>)).toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      maxDosePerAdministration: json['maxDosePerAdministration'] != null ? Quantity.fromJson(json['maxDosePerAdministration'] as Map<String, dynamic>) : null,
      maxDosePerLifetime: json['maxDosePerLifetime'] != null ? Quantity.fromJson(json['maxDosePerLifetime'] as Map<String, dynamic>) : null,
      maxDosePerPeriod: json['maxDosePerPeriod'] != null ? Ratio.fromJson(json['maxDosePerPeriod'] as Map<String, dynamic>) : null,
      method: json['method'] != null ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      patientInstruction: json['patientInstruction'] as String?,
      route: json['route'] != null ? CodeableConcept.fromJson(json['route'] as Map<String, dynamic>) : null,
      sequence: json['sequence'] as int?,
      site: json['site'] != null ? CodeableConcept.fromJson(json['site'] as Map<String, dynamic>) : null,
      text: json['text'] as String?,
      timing: json['timing'] != null ? Timing.fromJson(json['timing'] as Map<String, dynamic>) : null,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'additionalInstruction': additionalInstruction?.map((e) => e.toJson()).toList(),
      'asNeededBoolean': asNeededBoolean,
      'asNeededCodeableConcept': asNeededCodeableConcept?.toJson(),
      'doseAndRate': doseAndRate?.map((e) => e.toJson()).toList(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'maxDosePerAdministration': maxDosePerAdministration?.toJson(),
      'maxDosePerLifetime': maxDosePerLifetime?.toJson(),
      'maxDosePerPeriod': maxDosePerPeriod?.toJson(),
      'method': method?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'patientInstruction': patientInstruction,
      'route': route?.toJson(),
      'sequence': sequence,
      'site': site?.toJson(),
      'text': text,
      'timing': timing?.toJson(),
    };
  
  @override
  Dosage copyWith({
    List<CodeableConcept>? additionalInstruction,
    bool? asNeededBoolean,
    CodeableConcept? asNeededCodeableConcept,
    List<DosageDoseAndRate>? doseAndRate,
    List<Extension>? fhirExtension,
    String? id,
    Quantity? maxDosePerAdministration,
    Quantity? maxDosePerLifetime,
    Ratio? maxDosePerPeriod,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    String? patientInstruction,
    CodeableConcept? route,
    int? sequence,
    CodeableConcept? site,
    String? text,
    Timing? timing,
  }) {
    return Dosage(
      additionalInstruction: additionalInstruction ?? this.additionalInstruction,
      asNeededBoolean: asNeededBoolean ?? this.asNeededBoolean,
      asNeededCodeableConcept: asNeededCodeableConcept ?? this.asNeededCodeableConcept,
      doseAndRate: doseAndRate ?? this.doseAndRate,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      maxDosePerAdministration: maxDosePerAdministration ?? this.maxDosePerAdministration,
      maxDosePerLifetime: maxDosePerLifetime ?? this.maxDosePerLifetime,
      maxDosePerPeriod: maxDosePerPeriod ?? this.maxDosePerPeriod,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      route: route ?? this.route,
      sequence: sequence ?? this.sequence,
      site: site ?? this.site,
      text: text ?? this.text,
      timing: timing ?? this.timing,
    );
  }
}
