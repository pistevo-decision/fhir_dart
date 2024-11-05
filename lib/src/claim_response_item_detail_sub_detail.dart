part of '../fhir_dart.dart';

/// Adjudication for claim sub-details
/// A sub-detail adjudication of a simple product or service.
class ClaimResponseItemDetailSubDetail extends BackboneElement
    implements FhirResource {
  /// Subdetail level adjudication details
  /// The adjudication results.
  final List<ClaimResponseItemAdjudication>? adjudication;

  /// Applicable note numbers
  /// The numbers associated with notes below which apply to the adjudication of this item.
  final List<int>? noteNumber;

  /// Claim sub-detail instance identifier
  /// A number to uniquely reference the claim sub-detail entry.
  final int subDetailSequence;
  ClaimResponseItemDetailSubDetail({
    this.adjudication,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.noteNumber,
    required this.subDetailSequence,
  });

  @override
  factory ClaimResponseItemDetailSubDetail.fromJson(Map<String, dynamic> json) {
    return ClaimResponseItemDetailSubDetail(
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ClaimResponseItemAdjudication.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      noteNumber:
          (json['noteNumber'] as List<dynamic>?)?.map((e) => e as int).toList(),
      subDetailSequence: json['subDetailSequence'] as int,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'adjudication': adjudication?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'noteNumber': noteNumber?.map((e) => e).toList(),
        'subDetailSequence': subDetailSequence,
      };

  @override
  ClaimResponseItemDetailSubDetail copyWith({
    List<ClaimResponseItemAdjudication>? adjudication,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<int>? noteNumber,
    int? subDetailSequence,
  }) {
    return ClaimResponseItemDetailSubDetail(
      adjudication: adjudication ?? this.adjudication,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      noteNumber: noteNumber ?? this.noteNumber,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
    );
  }
}
