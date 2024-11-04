part of '../fhir_dart.dart';

/// Details of how medication was taken
/// Describes the medication dosage information details e.g. dose, rate, site, route, etc.
class MedicationAdministrationDosage extends BackboneElement
    implements FhirResource {
  /// Amount of medication per dose
  /// The amount of the medication given at one administration event.   Use this value when the administration is essentially an instantaneous event such as a swallowing a tablet or giving an injection.
  /// If the administration is not instantaneous (rate is present), this can be specified to convey the total amount administered over period of time of a single administration.
  final Quantity? dose;

  /// How drug was administered
  /// A coded value indicating the method by which the medication is intended to be or was introduced into or on the body.  This attribute will most often NOT be populated.  It is most commonly used for injections.  For example, Slow Push, Deep IV.
  /// One of the reasons this attribute is not used often, is that the method is often pre-coordinated with the route and/or form of administration.  This means the codes used in route or form may pre-coordinate the method in the route code or the form code.  The implementation decision about what coding system to use for route or form code will determine how frequently the method code will be populated e.g. if route or form code pre-coordinate method code, then this attribute will not be populated often; if there is no pre-coordination then method code may  be used frequently.
  final CodeableConcept? method;

  /// Dose quantity per unit of time
  /// Identifies the speed with which the medication was or will be introduced into the patient.  Typically, the rate for an infusion e.g. 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.
  /// If the rate changes over time, and you want to capture this in MedicationAdministration, then each change should be captured as a distinct MedicationAdministration, with a specific MedicationAdministration.dosage.rate, and the date time when the rate change occurred. Typically, the MedicationAdministration.dosage.rate element is not used to convey an average rate.
  final Quantity? rateQuantity;

  /// Dose quantity per unit of time
  /// Identifies the speed with which the medication was or will be introduced into the patient.  Typically, the rate for an infusion e.g. 100 ml per 1 hour or 100 ml/hr.  May also be expressed as a rate per unit of time, e.g. 500 ml per 2 hours.  Other examples:  200 mcg/min or 200 mcg/1 minute; 1 liter/8 hours.
  /// If the rate changes over time, and you want to capture this in MedicationAdministration, then each change should be captured as a distinct MedicationAdministration, with a specific MedicationAdministration.dosage.rate, and the date time when the rate change occurred. Typically, the MedicationAdministration.dosage.rate element is not used to convey an average rate.
  final Ratio? rateRatio;

  /// Path of substance into body
  /// A code specifying the route or physiological path of administration of a therapeutic agent into or onto the patient.  For example, topical, intravenous, etc.
  final CodeableConcept? route;

  /// Body site administered to
  /// A coded specification of the anatomic site where the medication first entered the body.  For example, "left arm".
  /// If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [bodySite](extension-bodysite.html).  May be a summary code, or a reference to a very precise definition of the location, or both.
  final CodeableConcept? site;

  /// Free text dosage instructions e.g. SIG
  /// Free text dosage can be used for cases where the dosage administered is too complex to code. When coded dosage is present, the free text dosage may still be present for display to humans.
  /// The dosage instructions should reflect the dosage of the medication that was administered.
  final String? text;
  MedicationAdministrationDosage({
    this.dose,
    super.fhirExtension,
    super.id,
    this.method,
    super.modifierExtension,
    this.rateQuantity,
    this.rateRatio,
    this.route,
    this.site,
    this.text,
  });

  @override
  factory MedicationAdministrationDosage.fromJson(Map<String, dynamic> json) {
    return MedicationAdministrationDosage(
      dose: json['dose'] != null
          ? Quantity.fromJson(json['dose'] as Map<String, dynamic>)
          : null,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      rateQuantity: json['rateQuantity'] != null
          ? Quantity.fromJson(json['rateQuantity'] as Map<String, dynamic>)
          : null,
      rateRatio: json['rateRatio'] != null
          ? Ratio.fromJson(json['rateRatio'] as Map<String, dynamic>)
          : null,
      route: json['route'] != null
          ? CodeableConcept.fromJson(json['route'] as Map<String, dynamic>)
          : null,
      site: json['site'] != null
          ? CodeableConcept.fromJson(json['site'] as Map<String, dynamic>)
          : null,
      text: json['text'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'dose': dose?.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'method': method?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'rateQuantity': rateQuantity?.toJson(),
        'rateRatio': rateRatio?.toJson(),
        'route': route?.toJson(),
        'site': site?.toJson(),
        'text': text,
      };

  @override
  MedicationAdministrationDosage copyWith({
    Quantity? dose,
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? method,
    List<Extension>? modifierExtension,
    Quantity? rateQuantity,
    Ratio? rateRatio,
    CodeableConcept? route,
    CodeableConcept? site,
    String? text,
  }) {
    return MedicationAdministrationDosage(
      dose: dose ?? this.dose,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      method: method ?? this.method,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      rateQuantity: rateQuantity ?? this.rateQuantity,
      rateRatio: rateRatio ?? this.rateRatio,
      route: route ?? this.route,
      site: site ?? this.site,
      text: text ?? this.text,
    );
  }
}
