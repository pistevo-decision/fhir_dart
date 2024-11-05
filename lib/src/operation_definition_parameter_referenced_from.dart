part of '../fhir_dart.dart';

/// References to this parameter
/// Identifies other resource parameters within the operation invocation that are expected to resolve to this resource.
/// Resolution applies if the referenced parameter exists.
class OperationDefinitionParameterReferencedFrom extends BackboneElement
    implements FhirResource {
  /// Referencing parameter
  /// The name of the parameter or dot-separated path of parameter names pointing to the resource parameter that is expected to contain a reference to this resource.
  final String source;

  /// Element id of reference
  /// The id of the element in the referencing resource that is expected to resolve to this resource.
  final String? sourceId;
  OperationDefinitionParameterReferencedFrom({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.source,
    this.sourceId,
  });

  @override
  factory OperationDefinitionParameterReferencedFrom.fromJson(
      Map<String, dynamic> json) {
    return OperationDefinitionParameterReferencedFrom(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      source: json['source'] as String,
      sourceId: json['sourceId'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'source': source,
        'sourceId': sourceId,
      };

  @override
  OperationDefinitionParameterReferencedFrom copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? source,
    String? sourceId,
  }) {
    return OperationDefinitionParameterReferencedFrom(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      sourceId: sourceId ?? this.sourceId,
    );
  }
}
