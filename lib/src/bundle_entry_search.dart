part of '../fhir_dart.dart';

/// Search related information
/// Information about the search process that lead to the creation of this entry.
class BundleEntrySearch extends BackboneElement implements FhirResource {
  /// Why this entry is in the result set - whether it's included as a match or because of an _include requirement, or to convey information or warning information about the search process.
  /// There is only one mode. In some corner cases, a resource may be included because it is both a match and an include. In these circumstances, 'match' takes precedence.
  final String? mode; // Possible values: 'match', 'include', 'outcome'
  /// Search ranking (between 0 and 1)
  /// When searching, the server's search ranking score for the entry.
  /// Servers are not required to return a ranking score. 1 is most relevant, and 0 is least relevant. Often, search results are sorted by score, but the client may specify a different sort order.
  /// See [Patient Match](patient-operation-match.html) for the EMPI search which relates to this element.
  final num? score;
  BundleEntrySearch({
    super.fhirExtension,
    super.id,
    this.mode,
    super.modifierExtension,
    this.score,
  });

  @override
  factory BundleEntrySearch.fromJson(Map<String, dynamic> json) {
    return BundleEntrySearch(
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      mode: json['mode'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      score: json['score'] as num?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'score': score,
      };

  @override
  BundleEntrySearch copyWith({
    List<Extension>? fhirExtension,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
    num? score,
  }) {
    return BundleEntrySearch(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      score: score ?? this.score,
    );
  }
}
