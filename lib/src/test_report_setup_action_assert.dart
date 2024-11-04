part of '../fhir_dart.dart';

/// The assertion to perform
/// The results of the assertion performed on the previous operations.
class TestReportSetupActionAssert extends BackboneElement
    implements FhirResource {
  /// A link to further details on the result.
  final String? detail;

  /// A message associated with the result
  /// An explanatory message associated with the result.
  final String? message;

  /// The result of this assertion.
  final String
      result; // Possible values: 'pass', 'skip', 'fail', 'warning', 'error'
  TestReportSetupActionAssert({
    this.detail,
    super.fhirExtension,
    super.id,
    this.message,
    super.modifierExtension,
    required this.result,
  });

  @override
  factory TestReportSetupActionAssert.fromJson(Map<String, dynamic> json) {
    return TestReportSetupActionAssert(
      detail: json['detail'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      message: json['message'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      result: json['result'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'detail': detail,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'message': message,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'result': result,
      };

  @override
  TestReportSetupActionAssert copyWith({
    String? detail,
    List<Extension>? fhirExtension,
    String? id,
    String? message,
    List<Extension>? modifierExtension,
    String? result,
  }) {
    return TestReportSetupActionAssert(
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      message: message ?? this.message,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      result: result ?? this.result,
    );
  }
}
