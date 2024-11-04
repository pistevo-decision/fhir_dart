part of '../fhir_dart.dart';

/// Adjudication for claim details
/// A claim detail. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
class ClaimResponseItemDetail extends BackboneElement implements FhirResource {
  /// Detail level adjudication details
  /// The adjudication results.
  final List<ClaimResponseItemAdjudication> adjudication;

  /// Claim detail instance identifier
  /// A number to uniquely reference the claim detail entry.
  final int detailSequence;

  /// Applicable note numbers
  /// The numbers associated with notes below which apply to the adjudication of this item.
  final List<int>? noteNumber;

  /// Adjudication for claim sub-details
  /// A sub-detail adjudication of a simple product or service.
  final List<ClaimResponseItemDetailSubDetail>? subDetail;
  ClaimResponseItemDetail({
    required this.adjudication,
    required this.detailSequence,
    super.fhirExtension,
    super.id,
    super.modifierExtension,
    this.noteNumber,
    this.subDetail,
  });

  @override
  factory ClaimResponseItemDetail.fromJson(Map<String, dynamic> json) {
    return ClaimResponseItemDetail(
      adjudication: (json['adjudication'] as List<dynamic>)
          .map((e) =>
              ClaimResponseItemAdjudication.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailSequence: json['detailSequence'] as int,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber:
          (json['noteNumber'] as List<dynamic>?)?.map((e) => e as int).toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map((e) => ClaimResponseItemDetailSubDetail.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'adjudication': adjudication.map((e) => e.toJson()).toList(),
        'detailSequence': detailSequence,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'noteNumber': noteNumber?.map((e) => e).toList(),
        'subDetail': subDetail?.map((e) => e.toJson()).toList(),
      };

  @override
  ClaimResponseItemDetail copyWith({
    List<ClaimResponseItemAdjudication>? adjudication,
    int? detailSequence,
    List<Extension>? fhirExtension,
    String? id,
    List<Extension>? modifierExtension,
    List<int>? noteNumber,
    List<ClaimResponseItemDetailSubDetail>? subDetail,
  }) {
    return ClaimResponseItemDetail(
      adjudication: adjudication ?? this.adjudication,
      detailSequence: detailSequence ?? this.detailSequence,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      noteNumber: noteNumber ?? this.noteNumber,
      subDetail: subDetail ?? this.subDetail,
    );
  }
}
