part of '../fhir_dart.dart';

/// If this describes a specific instance
/// Identifies a specific implementation instance that is described by the capability statement - i.e. a particular installation, rather than the capabilities of a software program.
class CapabilityStatementImplementation extends BackboneElement
    implements FhirResource {
  /// Organization that manages the data
  /// The organization responsible for the management of the instance and oversight of the data on the server at the specified URL.
  final Reference? custodian;

  /// Describes this specific instance
  /// Information about the specific installation that this capability statement relates to.
  final String description;

  /// Base URL for the installation
  /// An absolute base URL for the implementation.  This forms the base for REST interfaces as well as the mailbox and document interfaces.
  final String? url;
  CapabilityStatementImplementation({
    this.custodian,
    required this.description,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.url,
  });

  @override
  factory CapabilityStatementImplementation.fromJson(
      Map<String, dynamic> json) {
    return CapabilityStatementImplementation(
      custodian: json['custodian'] != null
          ? Reference.fromJson(json['custodian'] as Map<String, dynamic>)
          : null,
      description: json['description'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'custodian': custodian?.toJson(),
        'description': description,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'url': url,
      };

  @override
  CapabilityStatementImplementation copyWith({
    Reference? custodian,
    String? description,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    String? url,
  }) {
    return CapabilityStatementImplementation(
      custodian: custodian ?? this.custodian,
      description: description ?? this.description,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
    );
  }
}
