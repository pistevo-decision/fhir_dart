part of '../fhir_dart.dart';

 /// Additional coverage classifications
 /// A suite of underwriter specific classifiers.
 /// For example may be used to identify a class of coverage or employer group, Policy, Plan.
class CoverageClass extends BackboneElement implements FhirResource {
   /// Human readable description of the type and value
   /// A short description for the class.
  final String? name;
   /// Type of class such as 'group' or 'plan'
   /// The type of classification for which an insurer-specific class label or number and optional name is provided, for example may be used to identify a class of coverage or employer group, Policy, Plan.
  final CodeableConcept type;
   /// Value associated with the type
   /// The alphanumeric string value associated with the insurer issued label.
   /// For example, the Group or Plan number.
  final String value;
  CoverageClass({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.name,
    required this.type,
    required this.value,
  });
  
  @override
  factory CoverageClass.fromJson(Map<String, dynamic> json) {
    return CoverageClass(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      name: json['name'] as String?,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      value: json['value'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'name': name,
      'type': type.toJson(),
      'value': value,
    };
  
  @override
  CoverageClass copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    CodeableConcept? type,
    String? value,
  }) {
    return CoverageClass(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }
}
