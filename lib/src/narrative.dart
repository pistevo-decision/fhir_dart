part of '../fhir_dart.dart';

/// Base StructureDefinition for Narrative Type: A human-readable summary of the resource conveying the essential clinical and business information for the resource.
class Narrative extends Element implements FhirResource {
  /// Limited xhtml content
  /// The actual narrative content, a stripped down version of XHTML.
  /// The contents of the html element are an XHTML fragment containing only the basic html formatting elements described in chapters 7-11 and 15 of the HTML 4.0 standard, &lt;a&gt; elements (either name or href), images and internally contained stylesheets. The XHTML content SHALL NOT contain a head, a body, external stylesheet references, scripts, forms, base/link/xlink, frames, iframes and objects.
  final String div;

  /// The status of the narrative - whether it's entirely generated (from just the defined data or the extensions too), or whether a human authored it and it may contain additional data.
  final String
      status; // Possible values: 'generated', 'extensions', 'additional', 'empty'
  Narrative({
    required this.div,
    super.fhirExtension,
    super.id,
    required this.status,
  });

  @override
  factory Narrative.fromJson(Map<String, dynamic> json) {
    return Narrative(
      div: json['div'] as String,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      status: json['status'] as String,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'div': div,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'status': status,
      };

  @override
  Narrative copyWith({
    String? div,
    List<Extension>? fhirExtension,
    String? id,
    String? status,
  }) {
    return Narrative(
      div: div ?? this.div,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }
}
