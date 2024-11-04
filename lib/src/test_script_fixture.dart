part of '../fhir_dart.dart';

/// Fixture in the test script - by reference (uri). All fixtures are required for the test script to execute.
class TestScriptFixture extends BackboneElement implements FhirResource {
  /// Whether or not to implicitly create the fixture during setup. If true, the fixture is automatically created on each server being tested during setup, therefore no create operation is required for this fixture in the TestScript.setup section.
  final bool autocreate;

  /// Whether or not to implicitly delete the fixture during teardown. If true, the fixture is automatically deleted on each server being tested during teardown, therefore no delete operation is required for this fixture in the TestScript.teardown section.
  final bool autodelete;

  /// Reference of the resource
  /// Reference to the resource (containing the contents of the resource needed for operations).
  /// See http://build.fhir.org/resourcelist.html for complete list of resource types.
  final Reference? resource;
  TestScriptFixture({
    required this.autocreate,
    required this.autodelete,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.resource,
  });

  @override
  factory TestScriptFixture.fromJson(Map<String, dynamic> json) {
    return TestScriptFixture(
      autocreate: json['autocreate'] as bool,
      autodelete: json['autodelete'] as bool,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      resource: json['resource'] != null
          ? Reference.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'autocreate': autocreate,
        'autodelete': autodelete,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'resource': resource?.toJson(),
      };

  @override
  TestScriptFixture copyWith({
    bool? autocreate,
    bool? autodelete,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    Reference? resource,
  }) {
    return TestScriptFixture(
      autocreate: autocreate ?? this.autocreate,
      autodelete: autodelete ?? this.autodelete,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      resource: resource ?? this.resource,
    );
  }
}
