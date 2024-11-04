part of '../fhir_dart.dart';

 /// Details about the admission to a healthcare service.
 /// An Encounter may cover more than just the inpatient stay. Contexts such as outpatients, community clinics, and aged care facilities are also included.
 /// The duration recorded in the period of this encounter covers the entire scope of this hospitalization record.
class EncounterHospitalization extends BackboneElement implements FhirResource {
   /// From where patient was admitted (physician referral, transfer).
  final CodeableConcept? admitSource;
   /// Location/organization to which the patient is discharged.
  final Reference? destination;
   /// Diet preferences reported by the patient.
   /// For example, a patient may request both a dairy-free and nut-free diet preference (not mutually exclusive).
  final List<CodeableConcept>? dietPreference;
   /// Category or kind of location after discharge.
  final CodeableConcept? dischargeDisposition;
   /// The location/organization from which the patient came before admission.
  final Reference? origin;
   /// Pre-admission identifier.
  final Identifier? preAdmissionIdentifier;
   /// The type of hospital re-admission that has occurred (if any). If the value is absent, then this is not identified as a readmission
   /// Whether this hospitalization is a readmission and why if known.
  final CodeableConcept? reAdmission;
   /// Wheelchair, translator, stretcher, etc.
   /// Any special requests that have been made for this hospitalization encounter, such as the provision of specific equipment or other things.
  final List<CodeableConcept>? specialArrangement;
   /// Special courtesies (VIP, board member).
  final List<CodeableConcept>? specialCourtesy;
  EncounterHospitalization({
    this.admitSource,
    this.destination,
    this.dietPreference,
    this.dischargeDisposition,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.origin,
    this.preAdmissionIdentifier,
    this.reAdmission,
    this.specialArrangement,
    this.specialCourtesy,
  });
  
  @override
  factory EncounterHospitalization.fromJson(Map<String, dynamic> json) {
    return EncounterHospitalization(
      admitSource: json['admitSource'] != null ? CodeableConcept.fromJson(json['admitSource'] as Map<String, dynamic>) : null,
      destination: json['destination'] != null ? Reference.fromJson(json['destination'] as Map<String, dynamic>) : null,
      dietPreference: (json['dietPreference'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      dischargeDisposition: json['dischargeDisposition'] != null ? CodeableConcept.fromJson(json['dischargeDisposition'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      origin: json['origin'] != null ? Reference.fromJson(json['origin'] as Map<String, dynamic>) : null,
      preAdmissionIdentifier: json['preAdmissionIdentifier'] != null ? Identifier.fromJson(json['preAdmissionIdentifier'] as Map<String, dynamic>) : null,
      reAdmission: json['reAdmission'] != null ? CodeableConcept.fromJson(json['reAdmission'] as Map<String, dynamic>) : null,
      specialArrangement: (json['specialArrangement'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
      specialCourtesy: (json['specialCourtesy'] as List<dynamic>?)?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'admitSource': admitSource?.toJson(),
      'destination': destination?.toJson(),
      'dietPreference': dietPreference?.map((e) => e.toJson()).toList(),
      'dischargeDisposition': dischargeDisposition?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'origin': origin?.toJson(),
      'preAdmissionIdentifier': preAdmissionIdentifier?.toJson(),
      'reAdmission': reAdmission?.toJson(),
      'specialArrangement': specialArrangement?.map((e) => e.toJson()).toList(),
      'specialCourtesy': specialCourtesy?.map((e) => e.toJson()).toList(),
    };
  
  @override
  EncounterHospitalization copyWith({
    CodeableConcept? admitSource,
    Reference? destination,
    List<CodeableConcept>? dietPreference,
    CodeableConcept? dischargeDisposition,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? origin,
    Identifier? preAdmissionIdentifier,
    CodeableConcept? reAdmission,
    List<CodeableConcept>? specialArrangement,
    List<CodeableConcept>? specialCourtesy,
  }) {
    return EncounterHospitalization(
      admitSource: admitSource ?? this.admitSource,
      destination: destination ?? this.destination,
      dietPreference: dietPreference ?? this.dietPreference,
      dischargeDisposition: dischargeDisposition ?? this.dischargeDisposition,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      origin: origin ?? this.origin,
      preAdmissionIdentifier: preAdmissionIdentifier ?? this.preAdmissionIdentifier,
      reAdmission: reAdmission ?? this.reAdmission,
      specialArrangement: specialArrangement ?? this.specialArrangement,
      specialCourtesy: specialCourtesy ?? this.specialCourtesy,
    );
  }
}
