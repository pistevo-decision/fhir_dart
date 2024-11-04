part of '../fhir_dart.dart';

 /// Not available during this time due to provided reason
 /// The practitioner is not available or performing this role during this period of time due to the provided reason.
class PractitionerRoleNotAvailable extends BackboneElement implements FhirResource {
   /// Reason presented to the user explaining why time not available
   /// The reason that can be presented to the user as to why this time is not available.
  final String description;
   /// Service not available from this date
   /// Service is not available (seasonally or for a public holiday) from this date.
  final Period? during;
  PractitionerRoleNotAvailable({
    required this.description,
    this.during,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });
  
  @override
  factory PractitionerRoleNotAvailable.fromJson(Map<String, dynamic> json) {
    return PractitionerRoleNotAvailable(
      description: json['description'] as String,
      during: json['during'] != null ? Period.fromJson(json['during'] as Map<String, dynamic>) : null,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'description': description,
      'during': during?.toJson(),
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
    };
  
  @override
  PractitionerRoleNotAvailable copyWith({
    String? description,
    Period? during,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return PractitionerRoleNotAvailable(
      description: description ?? this.description,
      during: during ?? this.during,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
