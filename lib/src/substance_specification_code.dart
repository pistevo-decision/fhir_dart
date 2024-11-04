part of '../fhir_dart.dart';

/// Codes associated with the substance.
class SubstanceSpecificationCode extends BackboneElement
    implements FhirResource {
  /// The specific code.
  final CodeableConcept? code;

  /// Any comment can be provided in this field, if necessary.
  final String? comment;

  /// Supporting literature.
  final List<Reference>? source;

  /// Status of the code assignment.
  final CodeableConcept? status;

  /// The date at which the code status is changed as part of the terminology maintenance.
  final String? statusDate;
  SubstanceSpecificationCode({
    this.code,
    this.comment,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.source,
    this.status,
    this.statusDate,
  });

  @override
  factory SubstanceSpecificationCode.fromJson(Map<String, dynamic> json) {
    return SubstanceSpecificationCode(
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      comment: json['comment'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] != null
          ? CodeableConcept.fromJson(json['status'] as Map<String, dynamic>)
          : null,
      statusDate: json['statusDate'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code?.toJson(),
        'comment': comment,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'source': source?.map((e) => e.toJson()).toList(),
        'status': status?.toJson(),
        'statusDate': statusDate,
      };

  @override
  SubstanceSpecificationCode copyWith({
    CodeableConcept? code,
    String? comment,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<Reference>? source,
    CodeableConcept? status,
    String? statusDate,
  }) {
    return SubstanceSpecificationCode(
      code: code ?? this.code,
      comment: comment ?? this.comment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      source: source ?? this.source,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
    );
  }
}
