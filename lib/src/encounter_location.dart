part of '../fhir_dart.dart';

 /// List of locations where the patient has been
 /// List of locations where  the patient has been during this encounter.
 /// Virtual encounters can be recorded in the Encounter by specifying a location reference to a location of type "kind" such as "client's home" and an encounter.class = "virtual".
class EncounterLocation extends BackboneElement implements FhirResource {
   /// Location the encounter takes place
   /// The location where the encounter takes place.
  final Reference location;
   /// Time period during which the patient was present at the location.
  final Period? period;
   /// The physical type of the location (usually the level in the location hierachy - bed room ward etc.)
   /// This will be used to specify the required levels (bed/ward/room/etc.) desired to be recorded to simplify either messaging or query.
   /// This information is de-normalized from the Location resource to support the easier understanding of the encounter resource and processing in messaging or query.
   /// There may be many levels in the hierachy, and this may only pic specific levels that are required for a specific usage scenario.
  final CodeableConcept? physicalType;
   /// The status of the participants' presence at the specified location during the period specified. If the participant is no longer at the location, then the period will have an end date/time.
   /// When the patient is no longer active at a location, then the period end date is entered, and the status may be changed to completed.
  final String? status; // Possible values: 'planned', 'active', 'reserved', 'completed'
  EncounterLocation({
    super.fhirExtension,
    super.id,
    required this.location,
    super.modifierExtension,
    this.period,
    this.physicalType,
    this.status,
  });
  
  @override
  factory EncounterLocation.fromJson(Map<String, dynamic> json) {
    return EncounterLocation(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      location: Reference.fromJson(json['location'] as Map<String, dynamic>),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      physicalType: json['physicalType'] != null ? CodeableConcept.fromJson(json['physicalType'] as Map<String, dynamic>) : null,
      status: json['status'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'location': location.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'period': period?.toJson(),
      'physicalType': physicalType?.toJson(),
      'status': status,
    };
  
  @override
  EncounterLocation copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Reference? location,
    List<Extension>? modifierExtension,
    Period? period,
    CodeableConcept? physicalType,
    String? status,
  }) {
    return EncounterLocation(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      location: location ?? this.location,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      period: period ?? this.period,
      physicalType: physicalType ?? this.physicalType,
      status: status ?? this.status,
    );
  }
}
