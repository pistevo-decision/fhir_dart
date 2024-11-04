part of '../fhir_dart.dart';

/// Required capability that is assumed to function correctly on the FHIR server being tested
/// The required capability must exist and are assumed to function correctly on the FHIR server being tested.
class TestScriptMetadata extends BackboneElement implements FhirResource {
  /// Capabilities  that are assumed to function correctly on the FHIR server being tested
  /// Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
  /// When the metadata capabilities section is defined at TestScript.metadata or at TestScript.setup.metadata, and the server's conformance statement does not contain the elements defined in the minimal conformance statement, then all the tests in the TestScript are skipped.  When the metadata capabilities section is defined at TestScript.test.metadata and the server's conformance statement does not contain the elements defined in the minimal conformance statement, then only that test is skipped.  The "metadata.capabilities.required" and "metadata.capabilities.validated" elements only indicate whether the capabilities are the primary focus of the test script or not.  They do not impact the skipping logic.  Capabilities whose "metadata.capabilities.validated" flag is true are the primary focus of the test script.
  final List<TestScriptMetadataCapability> capability;

  /// Links to the FHIR specification
  /// A link to the FHIR specification that this test is covering.
  final List<TestScriptMetadataLink>? link;
  TestScriptMetadata({
    required this.capability,
    super.fhirExtension,
    super.id,
    this.link,
    super.modifierExtension,
  });

  @override
  factory TestScriptMetadata.fromJson(Map<String, dynamic> json) {
    return TestScriptMetadata(
      capability: (json['capability'] as List<dynamic>)
          .map((e) =>
              TestScriptMetadataCapability.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      link: (json['link'] as List<dynamic>?)
          ?.map(
              (e) => TestScriptMetadataLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'capability': capability.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'link': link?.map((e) => e.toJson()).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  TestScriptMetadata copyWith({
    List<TestScriptMetadataCapability>? capability,
    List<Extension>? fhirExtension,
    String? id,
    List<TestScriptMetadataLink>? link,
    List<Extension>? modifierExtension,
  }) {
    return TestScriptMetadata(
      capability: capability ?? this.capability,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      link: link ?? this.link,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
