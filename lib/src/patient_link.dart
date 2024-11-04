part of '../fhir_dart.dart';

 /// Link to another patient resource that concerns the same actual person
 /// Link to another patient resource that concerns the same actual patient.
 /// There is no assumption that linked patient records have mutual links.
class PatientLink extends BackboneElement implements FhirResource {
   /// The other patient or related person resource that the link refers to
   /// The other patient resource that the link refers to.
   /// Referencing a RelatedPerson here removes the need to use a Person record to associate a Patient and RelatedPerson as the same individual.
  final Reference other;
   /// The type of link between this patient resource and another patient resource.
  final String type; // Possible values: 'replaced-by', 'replaces', 'refer', 'seealso'
  PatientLink({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.other,
    required this.type,
  });
  
  @override
  factory PatientLink.fromJson(Map<String, dynamic> json) {
    return PatientLink(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      other: Reference.fromJson(json['other'] as Map<String, dynamic>),
      type: json['type'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'other': other.toJson(),
      'type': type,
    };
  
  @override
  PatientLink copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? other,
    String? type,
  }) {
    return PatientLink(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      other: other ?? this.other,
      type: type ?? this.type,
    );
  }
}
