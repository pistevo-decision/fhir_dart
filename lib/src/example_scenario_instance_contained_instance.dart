part of '../fhir_dart.dart';

 /// Resources contained in the instance (e.g. the observations contained in a bundle).
class ExampleScenarioInstanceContainedInstance extends BackboneElement implements FhirResource {
   /// Each resource contained in the instance.
  final String resourceId;
   /// A specific version of a resource contained in the instance.
  final String? versionId;
  ExampleScenarioInstanceContainedInstance({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.resourceId,
    this.versionId,
  });
  
  @override
  factory ExampleScenarioInstanceContainedInstance.fromJson(Map<String, dynamic> json) {
    return ExampleScenarioInstanceContainedInstance(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      resourceId: json['resourceId'] as String,
      versionId: json['versionId'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'resourceId': resourceId,
      'versionId': versionId,
    };
  
  @override
  ExampleScenarioInstanceContainedInstance copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? resourceId,
    String? versionId,
  }) {
    return ExampleScenarioInstanceContainedInstance(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resourceId: resourceId ?? this.resourceId,
      versionId: versionId ?? this.versionId,
    );
  }
}
