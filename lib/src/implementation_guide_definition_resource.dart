part of '../fhir_dart.dart';

/// Resource in the implementation guide
/// A resource that is part of the implementation guide. Conformance resources (value set, structure definition, capability statements etc.) are obvious candidates for inclusion, but any kind of resource can be included as an example resource.
class ImplementationGuideDefinitionResource extends BackboneElement
    implements FhirResource {
  /// Reason why included in guide
  /// A description of the reason that a resource has been included in the implementation guide.
  /// This is mostly used with examples to explain why it is present (though they can have extensive comments in the examples).
  final String? description;

  /// Is an example/What is this an example of?
  /// If true or a reference, indicates the resource is an example instance.  If a reference is present, indicates that the example is an example of the specified profile.
  /// Examples:
  /// * StructureDefinition -> Any
  /// * ValueSet -> expansion
  /// * OperationDefinition -> Parameters
  /// * Questionnaire -> QuestionnaireResponse.
  final bool? exampleBoolean;

  /// Is an example/What is this an example of?
  /// If true or a reference, indicates the resource is an example instance.  If a reference is present, indicates that the example is an example of the specified profile.
  /// Examples:
  /// * StructureDefinition -> Any
  /// * ValueSet -> expansion
  /// * OperationDefinition -> Parameters
  /// * Questionnaire -> QuestionnaireResponse.
  final String? exampleCanonical;

  /// Versions this applies to (if different to IG)
  /// Indicates the FHIR Version(s) this artifact is intended to apply to. If no versions are specified, the resource is assumed to apply to all the versions stated in ImplementationGuide.fhirVersion.
  /// The resource SHALL be valid against all the versions it is specified to apply to. If the resource referred to is a StructureDefinition, the fhirVersion stated in the StructureDefinition cannot disagree with the version specified here; the specified versions SHALL include the version specified by the StructureDefinition, and may include additional versions using the [applicable-version](extension-structuredefinition-applicable-version.html) extension.
  final List<String>?
      fhirVersion; // Possible values: '0.01', '0.05', '0.06', '0.11', '0.0.80', '0.0.81', '0.0.82', '0.4.0', '0.5.0', '1.0.0', '1.0.1', '1.0.2', '1.1.0', '1.4.0', '1.6.0', '1.8.0', '3.0.0', '3.0.1', '3.3.0', '3.5.0', '4.0.0', '4.0.1'
  /// Grouping this is part of
  /// Reference to the id of the grouping this resource appears in.
  /// This must correspond to a package.id element within this implementation guide.
  final String? groupingId;

  /// Human Name for the resource
  /// A human assigned name for the resource. All resources SHOULD have a name, but the name may be extracted from the resource (e.g. ValueSet.name).
  final String? name;

  /// Location of the resource
  /// Where this resource is found.
  /// Usually this is a relative URL that locates the resource within the implementation guide. If you authoring an implementation guide, and will publish it using the FHIR publication tooling, use a URI that may point to a resource, or to one of various alternative representations (e.g. spreadsheet). The tooling will convert this when it publishes it.
  final Reference reference;
  ImplementationGuideDefinitionResource({
    this.description,
    this.exampleBoolean,
    this.exampleCanonical,
    super.fhirExtension,
    this.fhirVersion,
    this.groupingId,
    super.id,
    super.modifierExtension,
    this.name,
    required this.reference,
  });

  @override
  factory ImplementationGuideDefinitionResource.fromJson(
      Map<String, dynamic> json) {
    return ImplementationGuideDefinitionResource(
      description: json['description'] as String?,
      exampleBoolean: json['exampleBoolean'] as bool?,
      exampleCanonical: json['exampleCanonical'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirVersion: (json['fhirVersion'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      groupingId: json['groupingId'] as String?,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      reference: Reference.fromJson(json['reference'] as Map<String, dynamic>),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'description': description,
        'exampleBoolean': exampleBoolean,
        'exampleCanonical': exampleCanonical,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'fhirVersion': fhirVersion?.map((e) => e).toList(),
        'groupingId': groupingId,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'reference': reference.toJson(),
      };

  @override
  ImplementationGuideDefinitionResource copyWith({
    String? description,
    bool? exampleBoolean,
    String? exampleCanonical,
    List<Extension>? fhirExtension,
    List<String>? fhirVersion,
    String? groupingId,
    String? id,
    List<Extension>? modifierExtension,
    String? name,
    Reference? reference,
  }) {
    return ImplementationGuideDefinitionResource(
      description: description ?? this.description,
      exampleBoolean: exampleBoolean ?? this.exampleBoolean,
      exampleCanonical: exampleCanonical ?? this.exampleCanonical,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      fhirVersion: fhirVersion ?? this.fhirVersion,
      groupingId: groupingId ?? this.groupingId,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      reference: reference ?? this.reference,
    );
  }
}
