part of '../fhir_dart.dart';

 /// Note concerning adjudication
 /// A note that describes or explains adjudication results in a human readable form.
class ExplanationOfBenefitProcessNote extends BackboneElement implements FhirResource {
   /// Language of the text
   /// A code to define the language used in the text of the note.
   /// Only required if the language is different from the resource language.
  final CodeableConcept? language;
   /// Note instance identifier
   /// A number to uniquely identify a note entry.
  final int? number;
   /// Note explanatory text
   /// The explanation or description associated with the processing.
  final String? text;
   /// The business purpose of the note text.
  final String? type; // Possible values: 'display', 'print', 'printoper'
  ExplanationOfBenefitProcessNote({
    super.fhirExtension,
    super.id,
    this.language,
    super.modifierExtension,
    this.number,
    this.text,
    this.type,
  });
  
  @override
  factory ExplanationOfBenefitProcessNote.fromJson(Map<String, dynamic> json) {
    return ExplanationOfBenefitProcessNote(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      id: json['id'] as String?,
      language: json['language'] != null ? CodeableConcept.fromJson(json['language'] as Map<String, dynamic>) : null,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      number: json['number'] as int?,
      text: json['text'] as String?,
      type: json['type'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'id': id,
      'language': language?.toJson(),
      'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
      'number': number,
      'text': text,
      'type': type,
    };
  
  @override
  ExplanationOfBenefitProcessNote copyWith({
    List<Extension>? fhirExtension,
    String? id,
    CodeableConcept? language,
    List<Extension>? modifierExtension,
    int? number,
    String? text,
    String? type,
  }) {
    return ExplanationOfBenefitProcessNote(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      language: language ?? this.language,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}
