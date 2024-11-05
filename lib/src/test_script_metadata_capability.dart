part of '../fhir_dart.dart';

/// Capabilities  that are assumed to function correctly on the FHIR server being tested
/// Capabilities that must exist and are assumed to function correctly on the FHIR server being tested.
/// When the metadata capabilities section is defined at TestScript.metadata or at TestScript.setup.metadata, and the server's conformance statement does not contain the elements defined in the minimal conformance statement, then all the tests in the TestScript are skipped.  When the metadata capabilities section is defined at TestScript.test.metadata and the server's conformance statement does not contain the elements defined in the minimal conformance statement, then only that test is skipped.  The "metadata.capabilities.required" and "metadata.capabilities.validated" elements only indicate whether the capabilities are the primary focus of the test script or not.  They do not impact the skipping logic.  Capabilities whose "metadata.capabilities.validated" flag is true are the primary focus of the test script.
class TestScriptMetadataCapability extends BackboneElement
    implements FhirResource {
  /// Required Capability Statement
  /// Minimum capabilities required of server for test script to execute successfully.   If server does not meet at a minimum the referenced capability statement, then all tests in this script are skipped.
  /// The conformance statement of the server has to contain at a minimum the contents of the reference pointed to by this element.
  final String capabilities;

  /// The expected capabilities of the server
  /// Description of the capabilities that this test script is requiring the server to support.
  final String? description;

  /// Which server these requirements apply to.
  final int? destination;

  /// Links to the FHIR specification that describes this interaction and the resources involved in more detail.
  final List<String>? link;

  /// Which origin server these requirements apply to.
  final List<int>? origin;

  /// Are the capabilities required?
  /// Whether or not the test execution will require the given capabilities of the server in order for this test script to execute.
  final bool required;

  /// Are the capabilities validated?
  /// Whether or not the test execution will validate the given capabilities of the server in order for this test script to execute.
  final bool validated;
  TestScriptMetadataCapability({
    required this.capabilities,
    this.description,
    this.destination,
    super.fhirExtension,
    super.id,
    this.link,
    super.modifierExtension,
    this.origin,
    required this.required,
    required this.validated,
  });

  @override
  factory TestScriptMetadataCapability.fromJson(Map<String, dynamic> json) {
    return TestScriptMetadataCapability(
      capabilities: json['capabilities'] as String,
      description: json['description'] as String?,
      destination: json['destination'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      link: (json['link'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      origin: (json['origin'] as List<dynamic>?)?.map((e) => e as int).toList(),
      required: json['required'] as bool,
      validated: json['validated'] as bool,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'capabilities': capabilities,
        'description': description,
        'destination': destination,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'link': link?.map((e) => e).toList(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'origin': origin?.map((e) => e).toList(),
        'required': required,
        'validated': validated,
      };

  @override
  TestScriptMetadataCapability copyWith({
    String? capabilities,
    String? description,
    int? destination,
    List<Extension>? fhirExtension,
    String? id,
    List<String>? link,
    List<Extension>? modifierExtension,
    List<int>? origin,
    bool? required,
    bool? validated,
  }) {
    return TestScriptMetadataCapability(
      capabilities: capabilities ?? this.capabilities,
      description: description ?? this.description,
      destination: destination ?? this.destination,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      link: link ?? this.link,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      origin: origin ?? this.origin,
      required: required ?? this.required,
      validated: validated ?? this.validated,
    );
  }
}
