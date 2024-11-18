part of '../fhir_dart.dart';

/// A summary of information based on the results of executing a TestScript.
class TestReport extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'TestReport';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// External identifier
  /// Identifier for the TestScript assigned for external purposes outside the context of FHIR.
  final Identifier? identifier;

  /// When the TestScript was executed and this TestReport was generated.
  /// Additional specific dates may be added as extensions.
  final String? issued;

  /// Informal name of the executed TestScript
  /// A free text natural language name identifying the executed TestScript.
  /// Not expected to be globally unique.
  final String? name;

  /// A participant in the test execution, either the execution engine, a client, or a server.
  final List<TestReportParticipant>? participant;

  /// The overall result from the execution of the TestScript.
  /// The pass and fail result represents a completed test script execution. The pending result represents a test script execution that has not yet started or is currently in progress.
  final String result; // Possible values: 'pass', 'fail', 'pending'
  /// The final score (percentage of tests passed) resulting from the execution of the TestScript.
  final num? score;

  /// The results of the series of required setup operations before the tests were executed.
  final TestReportSetup? setup;

  /// The current state of this test report.
  /// The status represents where the execution is currently within the test script execution life cycle.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'completed', 'in-progress', 'waiting', 'stopped', 'entered-in-error'
  /// The results of running the series of required clean up steps
  /// The results of the series of operations required to clean up after all the tests were executed (successfully or otherwise).
  final TestReportTeardown? teardown;

  /// A test executed from the test script.
  final List<TestReportTest>? test;

  /// Name of the tester producing this report (Organization or individual).
  /// Usually an organization, but may be an individual. This item SHOULD be populated unless the information is available from context.
  final String? tester;

  /// Reference to the  version-specific TestScript that was executed to produce this TestReport
  /// Ideally this is an absolute URL that is used to identify the version-specific TestScript that was executed, matching the `TestScript.url`.
  final Reference testScript;
  TestReport({
    super.contained,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    this.issued,
    super.language,
    super.meta,
    super.modifierExtension,
    this.name,
    this.participant,
    required this.result,
    this.score,
    this.setup,
    required this.status,
    this.teardown,
    this.test,
    this.tester,
    required this.testScript,
    super.text,
  });

  @override
  factory TestReport.fromJson(Map<String, dynamic> json) {
    return TestReport(
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              (json['identifier'] as Map).cast<String, dynamic>())
          : null,
      implicitRules: json['implicitRules'] as String?,
      issued: json['issued'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      name: json['name'] as String?,
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) => TestReportParticipant.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      result: json['result'] as String,
      score: json['score'] as num?,
      setup: json['setup'] != null
          ? TestReportSetup.fromJson(
              (json['setup'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      teardown: json['teardown'] != null
          ? TestReportTeardown.fromJson(
              (json['teardown'] as Map).cast<String, dynamic>())
          : null,
      test: (json['test'] as List<dynamic>?)
          ?.map((e) =>
              TestReportTest.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      tester: json['tester'] as String?,
      testScript: Reference.fromJson(
          (json['testScript'] as Map).cast<String, dynamic>()),
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'contained': contained?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.toJson(),
        'implicitRules': implicitRules,
        'issued': issued,
        'language': language,
        'meta': meta?.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'name': name,
        'participant': participant?.map((e) => e.toJson()).toList(),
        'result': result,
        'score': score,
        'setup': setup?.toJson(),
        'status': status,
        'teardown': teardown?.toJson(),
        'test': test?.map((e) => e.toJson()).toList(),
        'tester': tester,
        'testScript': testScript.toJson(),
        'text': text?.toJson(),
      };

  @override
  TestReport copyWith({
    List<Resource>? contained,
    List<Extension>? fhirExtension,
    String? id,
    Identifier? identifier,
    String? implicitRules,
    String? issued,
    String? language,
    Meta? meta,
    List<Extension>? modifierExtension,
    String? name,
    List<TestReportParticipant>? participant,
    String? result,
    num? score,
    TestReportSetup? setup,
    String? status,
    TestReportTeardown? teardown,
    List<TestReportTest>? test,
    String? tester,
    Reference? testScript,
    Narrative? text,
  }) {
    return TestReport(
      contained: contained ?? this.contained,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      issued: issued ?? this.issued,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      participant: participant ?? this.participant,
      result: result ?? this.result,
      score: score ?? this.score,
      setup: setup ?? this.setup,
      status: status ?? this.status,
      teardown: teardown ?? this.teardown,
      test: test ?? this.test,
      tester: tester ?? this.tester,
      testScript: testScript ?? this.testScript,
      text: text ?? this.text,
    );
  }
}
