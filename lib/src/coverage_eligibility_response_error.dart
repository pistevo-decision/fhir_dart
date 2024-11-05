part of '../fhir_dart.dart';

/// Processing errors
/// Errors encountered during the processing of the request.
class CoverageEligibilityResponseError extends BackboneElement
    implements FhirResource {
  /// Error code detailing processing issues
  /// An error code,from a specified code system, which details why the eligibility check could not be performed.
  final CodeableConcept code;
  CoverageEligibilityResponseError({
    required this.code,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
  });

  @override
  factory CoverageEligibilityResponseError.fromJson(Map<String, dynamic> json) {
    return CoverageEligibilityResponseError(
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code.toJson(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  CoverageEligibilityResponseError copyWith({
    CodeableConcept? code,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
  }) {
    return CoverageEligibilityResponseError(
      code: code ?? this.code,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
