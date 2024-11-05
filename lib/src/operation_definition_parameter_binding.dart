part of '../fhir_dart.dart';

/// ValueSet details if this is coded
/// Binds to a value set if this parameter is coded (code, Coding, CodeableConcept).
class OperationDefinitionParameterBinding extends BackboneElement
    implements FhirResource {
  /// Indicates the degree of conformance expectations associated with this binding - that is, the degree to which the provided value set must be adhered to in the instances.
  /// For further discussion, see [Using Terminologies](terminologies.html).
  final String
      strength; // Possible values: 'required', 'extensible', 'preferred', 'example'
  /// Source of value set
  /// Points to the value set or external definition (e.g. implicit value set) that identifies the set of codes to be used.
  /// For value sets with a referenceResource, the display can contain the value set description.  The reference may be version-specific or not.
  final String valueSet;
  OperationDefinitionParameterBinding({
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.strength,
    required this.valueSet,
  });

  @override
  factory OperationDefinitionParameterBinding.fromJson(
      Map<String, dynamic> json) {
    return OperationDefinitionParameterBinding(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      strength: json['strength'] as String,
      valueSet: json['valueSet'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'strength': strength,
        'valueSet': valueSet,
      };

  @override
  OperationDefinitionParameterBinding copyWith({
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? strength,
    String? valueSet,
  }) {
    return OperationDefinitionParameterBinding(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      strength: strength ?? this.strength,
      valueSet: valueSet ?? this.valueSet,
    );
  }
}
