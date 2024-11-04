part of '../fhir_dart.dart';

/// Supported expansion parameter.
class TerminologyCapabilitiesExpansionParameter extends BackboneElement
    implements FhirResource {
  /// Description of support for parameter.
  final String? documentation;

  /// Expansion Parameter name.
  final String name;
  TerminologyCapabilitiesExpansionParameter({
    this.documentation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    required this.name,
  });

  @override
  factory TerminologyCapabilitiesExpansionParameter.fromJson(
      Map<String, dynamic> json) {
    return TerminologyCapabilitiesExpansionParameter(
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'documentation': documentation,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
      };

  @override
  TerminologyCapabilitiesExpansionParameter copyWith({
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
  }) {
    return TerminologyCapabilitiesExpansionParameter(
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
    );
  }
}
