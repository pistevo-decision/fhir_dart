part of '../fhir_dart.dart';

 /// A specific version of the resource.
class ExampleScenarioInstanceVersion extends BackboneElement implements FhirResource {
   /// The description of the resource version.
  final String description;
   /// The identifier of a specific version of a resource.
  final String versionId;
  ExampleScenarioInstanceVersion({
    required this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.versionId,
  });
  
  @override
  factory ExampleScenarioInstanceVersion.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioInstanceVersion(
      description: json['description'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      versionId: json['versionId'] as String,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'description': description,
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'versionId': versionId,
    };
  
  @override
  ExampleScenarioInstanceVersion copyWith({
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? versionId,
  }) {
    return ExampleScenarioInstanceVersion(
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      versionId: versionId ?? this.versionId,
    );
  }
}
