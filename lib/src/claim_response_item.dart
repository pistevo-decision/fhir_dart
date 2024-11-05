part of '../fhir_dart.dart';

/// Adjudication for claim line items
/// A claim line. Either a simple (a product or service) or a 'group' of details which can also be a simple items or groups of sub-details.
class ClaimResponseItem extends BackboneElement implements FhirResource {
  /// Adjudication details
  /// If this item is a group then the values here are a summary of the adjudication of the detail items. If this item is a simple product or service then this is the result of the adjudication of this item.
  final List<ClaimResponseItemAdjudication> adjudication;

  /// Adjudication for claim details
  /// A claim detail. Either a simple (a product or service) or a 'group' of sub-details which are simple items.
  final List<ClaimResponseItemDetail>? detail;

  /// Claim item instance identifier
  /// A number to uniquely reference the claim item entries.
  final int itemSequence;

  /// Applicable note numbers
  /// The numbers associated with notes below which apply to the adjudication of this item.
  final List<int>? noteNumber;
  ClaimResponseItem({
    required this.adjudication,
    this.detail,
    super.fhirExtension,
    super.id,
    required this.itemSequence,
    super.modifierExtension,
    this.noteNumber,
  });

  @override
  factory ClaimResponseItem.fromJson(Map<String, dynamic> json) {
    return ClaimResponseItem(
      adjudication: (json['adjudication'] as List<dynamic>)
          .map((e) => ClaimResponseItemAdjudication.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => ClaimResponseItemDetail.fromJson(
              (e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      itemSequence: json['itemSequence'] as int,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      noteNumber:
          (json['noteNumber'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'adjudication': adjudication.map((e) => e.toJson()).toList(),
        'detail': detail?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'itemSequence': itemSequence,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'noteNumber': noteNumber?.map((e) => e).toList(),
      };

  @override
  ClaimResponseItem copyWith({
    List<ClaimResponseItemAdjudication>? adjudication,
    List<ClaimResponseItemDetail>? detail,
    List<Extension>? fhirExtension,
    String? id,
    int? itemSequence,
    List<Extension>? modifierExtension,
    List<int>? noteNumber,
  }) {
    return ClaimResponseItem(
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      itemSequence: itemSequence ?? this.itemSequence,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      noteNumber: noteNumber ?? this.noteNumber,
    );
  }
}
