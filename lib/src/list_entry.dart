part of '../fhir_dart.dart';

/// Entries in the list
/// Entries in this list.
/// If there are no entries in the list, an emptyReason SHOULD be provided.
class ListEntry extends BackboneElement implements FhirResource {
  /// When item added to list
  /// When this item was added to the list.
  final String? date;

  /// If this item is actually marked as deleted
  /// True if this item is marked as deleted in the list.
  /// If the flag means that the entry has actually been deleted from the list, the deleted element SHALL be true. Both flag and deleted can only be used if the List.mode is "changes". A deleted entry should be displayed in narrative as deleted.  This element is labeled as a modifier because it indicates that an item is (to be) no longer in the list.
  final bool? deleted;

  /// Status/Workflow information about this item
  /// The flag allows the system constructing the list to indicate the role and significance of the item in the list.
  /// The flag can only be understood in the context of the List.code. If the flag means that the entry has actually been deleted from the list, the deleted element SHALL be true. Deleted can only be used if the List.mode is "changes".
  final CodeableConcept? flag;

  /// Actual entry
  /// A reference to the actual resource from which data was derived.
  final Reference item;
  ListEntry({
    this.date,
    this.deleted,
    super.fhirExtension,
    this.flag,
    super.id,
    required this.item,
    super.modifierExtension,
  });

  @override
  factory ListEntry.fromJson(Map<String, dynamic> json) {
    return ListEntry(
      date: json['date'] as String?,
      deleted: json['deleted'] as bool?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      flag: json['flag'] != null
          ? CodeableConcept.fromJson(json['flag'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      item: Reference.fromJson(json['item'] as Map<String, dynamic>),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'date': date,
        'deleted': deleted,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'flag': flag?.toJson(),
        'id': id,
        'item': item.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  ListEntry copyWith({
    String? date,
    bool? deleted,
    List<Extension>? fhirExtension,
    CodeableConcept? flag,
    String? id,
    Reference? item,
    List<Extension>? modifierExtension,
  }) {
    return ListEntry(
      date: date ?? this.date,
      deleted: deleted ?? this.deleted,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      flag: flag ?? this.flag,
      id: id ?? this.id,
      item: item ?? this.item,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
