part of '../fhir_dart.dart';

/// What operations are supported?
/// A specification of restful operations supported by the system.
class CapabilityStatementRestInteraction extends BackboneElement
    implements FhirResource {
  /// A coded identifier of the operation, supported by the system.
  final String
      code; // Possible values: 'transaction', 'batch', 'search-system', 'history-system'
  /// Anything special about operation behavior
  /// Guidance specific to the implementation of this operation, such as limitations on the kind of transactions allowed, or information about system wide search is implemented.
  final String? documentation;
  CapabilityStatementRestInteraction({
    required this.code,
    this.documentation,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory CapabilityStatementRestInteraction.fromJson(
      Map<String, dynamic> json) {
    return CapabilityStatementRestInteraction(
      code: json['code'] as String,
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code,
        'documentation': documentation,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  CapabilityStatementRestInteraction copyWith({
    String? code,
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return CapabilityStatementRestInteraction(
      code: code ?? this.code,
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
