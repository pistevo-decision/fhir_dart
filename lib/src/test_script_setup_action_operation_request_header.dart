part of '../fhir_dart.dart';

/// Each operation can have one or more header elements
/// Header elements would be used to set HTTP headers.
/// This gives control to test-script writers to set headers explicitly based on test requirements.  It will allow for testing using:  - "If-Modified-Since" and "If-None-Match" headers.  See http://build.fhir.org/http.html#2.1.0.5.1 - "If-Match" header.  See http://build.fhir.org/http.html#2.1.0.11 - Conditional Create using "If-None-Exist".  See http://build.fhir.org/http.html#2.1.0.13.1 - Invalid "Content-Type" header for negative testing. - etc.
class TestScriptSetupActionOperationRequestHeader extends BackboneElement
    implements FhirResource {
  /// HTTP header field name
  /// The HTTP header field e.g. "Accept".
  /// If header element is specified, then field is required.
  final String field;

  /// HTTP headerfield value
  /// The value of the header e.g. "application/fhir+xml".
  /// If header element is specified, then value is required.  No conversions will be done by the test engine e.g. "xml" to "application/fhir+xml".  The values will be set in HTTP headers "as-is".  Test engines do have to look for placeholders (${}) and replace the variable placeholders with the variable values at runtime before sending the request.
  final String value;
  TestScriptSetupActionOperationRequestHeader({
    super.fhirExtension,
    required this.field,
    super.id,
    super.modifierExtension,
    required this.value,
  });

  @override
  factory TestScriptSetupActionOperationRequestHeader.fromJson(
      Map<String, dynamic> json) {
    return TestScriptSetupActionOperationRequestHeader(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      field: json['field'] as String,
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: json['value'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'field': field,
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'value': value,
      };

  @override
  TestScriptSetupActionOperationRequestHeader copyWith({
    List<Extension>? fhirExtension,
    String? field,
    String? id,
    List<Extension>? modifierExtension,
    String? value,
  }) {
    return TestScriptSetupActionOperationRequestHeader(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      field: field ?? this.field,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      value: value ?? this.value,
    );
  }
}
