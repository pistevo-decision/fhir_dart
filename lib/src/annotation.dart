part of '../fhir_dart.dart';

/// For systems that do not have structured annotations, they can simply communicate a single annotation with no author or time.  This element may need to be included in narrative because of the potential for modifying information.  *Annotations SHOULD NOT* be used to communicate "modifying" information that could be computable. (This is a SHOULD because enforcing user behavior is nearly impossible).
/// Base StructureDefinition for Annotation Type: A  text note which also  contains information about who made the statement and when.
class Annotation extends Element implements FhirResource {
  /// Individual responsible for the annotation
  /// The individual responsible for making the annotation.
  /// Organization is used when there's no need for specific attribution as to who made the comment.
  final Reference? authorReference;

  /// Individual responsible for the annotation
  /// The individual responsible for making the annotation.
  /// Organization is used when there's no need for specific attribution as to who made the comment.
  final String? authorString;

  /// The annotation  - text content (as markdown)
  /// The text of the annotation in markdown format.
  final String text;

  /// When the annotation was made
  /// Indicates when this particular annotation was made.
  final String? time;
  Annotation({
    this.authorReference,
    this.authorString,
    super.fhirExtension,
    super.id,
    required this.text,
    this.time,
  });

  @override
  factory Annotation.fromJson(Map<String, dynamic> json) {
    return Annotation(
      authorReference: json['authorReference'] != null
          ? Reference.fromJson(
              (json['authorReference'] as Map).cast<String, dynamic>())
          : null,
      authorString: json['authorString'] as String?,
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      text: json['text'] as String,
      time: json['time'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'authorReference': authorReference?.toJson(),
        'authorString': authorString,
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'text': text,
        'time': time,
      };

  @override
  Annotation copyWith({
    Reference? authorReference,
    String? authorString,
    List<Extension>? fhirExtension,
    String? id,
    String? text,
    String? time,
  }) {
    return Annotation(
      authorReference: authorReference ?? this.authorReference,
      authorString: authorString ?? this.authorString,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      text: text ?? this.text,
      time: time ?? this.time,
    );
  }
}
