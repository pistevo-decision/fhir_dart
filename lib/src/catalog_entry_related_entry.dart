part of '../fhir_dart.dart';

/// An item that this catalog entry is related to
/// Used for example, to point to a substance, or to a device used to administer a medication.
class CatalogEntryRelatedEntry extends BackboneElement implements FhirResource {
  /// The reference to the related item.
  final Reference item;

  /// triggers | is-replaced-by
  /// The type of relation to the related item: child, parent, packageContent, containerPackage, usedIn, uses, requires, etc.
  final String relationtype; // Possible values: 'triggers', 'is-replaced-by'
  CatalogEntryRelatedEntry({
    super.fhirExtension,
    super.id,
    required this.item,
    super.modifierExtension,
    required this.relationtype,
  });

  @override
  factory CatalogEntryRelatedEntry.fromJson(Map<String, dynamic> json) {
    return CatalogEntryRelatedEntry(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      item: Reference.fromJson(json['item'] as Map<String, dynamic>),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      relationtype: json['relationtype'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'item': item.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'relationtype': relationtype,
      };

  @override
  CatalogEntryRelatedEntry copyWith({
    List<Extension>? fhirExtension,
    String? id,
    Reference? item,
    List<Extension>? modifierExtension,
    String? relationtype,
  }) {
    return CatalogEntryRelatedEntry(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      item: item ?? this.item,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationtype: relationtype ?? this.relationtype,
    );
  }
}
