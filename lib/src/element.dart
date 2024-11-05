part of '../fhir_dart.dart';

/// Base StructureDefinition for Element Type: Base definition for all elements in a resource.
class Element {
  /// Additional content defined by implementations
  /// May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.
  /// There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.
  final List<Extension>? fhirExtension;

  /// Unique id for inter-element referencing
  /// Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.
  final String? id;
  Element({
    this.fhirExtension,
    this.id,
  });

  factory Element.fromJson(Map<String, dynamic> json) {
    return Element(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
      };

  Element copyWith({
    List<Extension>? fhirExtension,
    String? id,
  }) {
    return Element(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
    );
  }
}
