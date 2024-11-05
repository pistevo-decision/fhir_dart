part of '../fhir_dart.dart';

/// Key images associated with this report
/// A list of key images associated with this report. The images are generally created during the diagnostic process, and may be directly of the patient, or of treated specimens (i.e. slides of interest).
class DiagnosticReportMedia extends BackboneElement implements FhirResource {
  /// Comment about the image (e.g. explanation)
  /// A comment about the image. Typically, this is used to provide an explanation for why the image is included, or to draw the viewer's attention to important features.
  /// The comment should be displayed with the image. It would be common for the report to include additional discussion of the image contents in other sections such as the conclusion.
  final String? comment;

  /// Reference to the image source.
  final Reference link;
  DiagnosticReportMedia({
    this.comment,
    super.fhirExtension,
    super.id,
    required this.link,
    super.modifierExtension,
  });

  @override
  factory DiagnosticReportMedia.fromJson(Map<String, dynamic> json) {
    return DiagnosticReportMedia(
      comment: json['comment'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      link: Reference.fromJson((json['link'] as Map).cast<String, dynamic>()),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'comment': comment,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'link': link.toJson(),
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      };

  @override
  DiagnosticReportMedia copyWith({
    String? comment,
    List<Extension>? fhirExtension,
    String? id,
    Reference? link,
    List<Extension>? modifierExtension,
  }) {
    return DiagnosticReportMedia(
      comment: comment ?? this.comment,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      link: link ?? this.link,
      modifierExtension: modifierExtension ?? this.modifierExtension,
    );
  }
}
