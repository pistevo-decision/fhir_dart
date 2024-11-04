part of '../fhir_dart.dart';

/// Document definition
/// A document definition.
class CapabilityStatementDocument extends BackboneElement
    implements FhirResource {
  /// Description of document support
  /// A description of how the application supports or uses the specified document profile.  For example, when documents are created, what action is taken with consumed documents, etc.
  final String? documentation;

  /// producer | consumer
  /// Mode of this document declaration - whether an application is a producer or consumer.
  final String mode; // Possible values: 'producer', 'consumer'
  /// Constraint on the resources used in the document
  /// A profile on the document Bundle that constrains which resources are present, and their contents.
  /// The profile is actually on the Bundle.
  final String profile;
  CapabilityStatementDocument({
    this.documentation,
    super.fhirExtension,
    super.id,
    required this.mode,
    super.modifierExtension,
    required this.profile,
  });

  @override
  factory CapabilityStatementDocument.fromJson(Map<String, dynamic> json) {
    return CapabilityStatementDocument(
      documentation: json['documentation'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      profile: json['profile'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'documentation': documentation,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'profile': profile,
      };

  @override
  CapabilityStatementDocument copyWith({
    String? documentation,
    List<Extension>? fhirExtension,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
    String? profile,
  }) {
    return CapabilityStatementDocument(
      documentation: documentation ?? this.documentation,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      profile: profile ?? this.profile,
    );
  }
}
