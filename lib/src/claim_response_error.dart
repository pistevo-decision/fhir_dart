part of '../fhir_dart.dart';

/// Processing errors
/// Errors encountered during the processing of the adjudication.
/// If the request contains errors then an error element should be provided and no adjudication related sections (item, addItem, or payment) should be present.
class ClaimResponseError extends BackboneElement implements FhirResource {
  /// Error code detailing processing issues
  /// An error code, from a specified code system, which details why the claim could not be adjudicated.
  final CodeableConcept code;

  /// Detail sequence number
  /// The sequence number of the detail within the line item submitted which contains the error. This value is omitted when the error occurs outside of the item structure.
  final int? detailSequence;

  /// Item sequence number
  /// The sequence number of the line item submitted which contains the error. This value is omitted when the error occurs outside of the item structure.
  final int? itemSequence;

  /// Subdetail sequence number
  /// The sequence number of the sub-detail within the detail within the line item submitted which contains the error. This value is omitted when the error occurs outside of the item structure.
  final int? subDetailSequence;
  ClaimResponseError({
    required this.code,
    this.detailSequence,
    super.fhirExtension,
    super.id,
    this.itemSequence,
    super.modifierExtension,
    this.subDetailSequence,
  });

  @override
  factory ClaimResponseError.fromJson(Map<String, dynamic> json) {
    return ClaimResponseError(
      code: CodeableConcept.fromJson(
          (json['code'] as Map).cast<String, dynamic>()),
      detailSequence: json['detailSequence'] as int?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      itemSequence: json['itemSequence'] as int?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      subDetailSequence: json['subDetailSequence'] as int?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'code': code.toJson(),
        'detailSequence': detailSequence,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'itemSequence': itemSequence,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'subDetailSequence': subDetailSequence,
      };

  @override
  ClaimResponseError copyWith({
    CodeableConcept? code,
    int? detailSequence,
    List<Extension>? fhirExtension,
    String? id,
    int? itemSequence,
    List<Extension>? modifierExtension,
    int? subDetailSequence,
  }) {
    return ClaimResponseError(
      code: code ?? this.code,
      detailSequence: detailSequence ?? this.detailSequence,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      itemSequence: itemSequence ?? this.itemSequence,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
    );
  }
}
