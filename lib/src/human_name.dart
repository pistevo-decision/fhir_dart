part of '../fhir_dart.dart';

 /// Names may be changed, or repudiated, or people may have different names in different contexts. Names may be divided into parts of different type that have variable significance depending on context, though the division into parts does not always matter. With personal names, the different parts might or might not be imbued with some implicit meaning; various cultures associate different importance with the name parts and the degree to which systems must care about name parts around the world varies widely.
 /// Base StructureDefinition for HumanName Type: A human's name with the ability to identify parts and usage.
 /// Need to be able to record names, along with notes about their use.
class HumanName extends Element implements FhirResource {
   /// Family name (often called 'Surname')
   /// The part of a name that links to the genealogy. In some cultures (e.g. Eritrea) the family name of a son is the first name of his father.
   /// Family Name may be decomposed into specific parts using extensions (de, nl, es related cultures).
  final String? family;
   /// Given names (not always 'first'). Includes middle names
   /// Given name.
   /// If only initials are recorded, they may be used in place of the full name parts. Initials may be separated into multiple given names but often aren't due to paractical limitations.  This element is not called "first name" since given names do not always come first.
  final List<String>? given;
   /// Time period when name was/is in use
   /// Indicates the period of time when this name was valid for the named person.
  final Period? period;
   /// Parts that come before the name
   /// Part of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the start of the name.
  final List<String>? prefix;
   /// Parts that come after the name
   /// Part of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the end of the name.
  final List<String>? suffix;
   /// Text representation of the full name
   /// Specifies the entire name as it should be displayed e.g. on an application UI. This may be provided instead of or as well as the specific parts.
   /// Can provide both a text representation and parts. Applications updating a name SHALL ensure that when both text and parts are present,  no content is included in the text that isn't found in a part.
  final String? text;
   /// Identifies the purpose for this name.
   /// Applications can assume that a name is current unless it explicitly says that it is temporary or old.
  final String? use; // Possible values: 'usual', 'official', 'temp', 'nickname', 'anonymous', 'old', 'maiden'
  HumanName({
    super.fhirExtension,
    this.family,
    this.given,
    super.id,
    this.period,
    this.prefix,
    this.suffix,
    this.text,
    this.use,
  });
  
  @override
  factory HumanName.fromJson(Map<String, dynamic> json) {
    return HumanName(
      fhirExtension: (json['extension'] as List<dynamic>?)?.map((e) => Extension.fromJson(e as Map<String, dynamic>)).toList(),
      family: json['family'] as String?,
      given: (json['given'] as List<dynamic>?)?.map((e) => e as String).toList(),
      id: json['id'] as String?,
      period: json['period'] != null ? Period.fromJson(json['period'] as Map<String, dynamic>) : null,
      prefix: (json['prefix'] as List<dynamic>?)?.map((e) => e as String).toList(),
      suffix: (json['suffix'] as List<dynamic>?)?.map((e) => e as String).toList(),
      text: json['text'] as String?,
      use: json['use'] as String?,
    );
    }
  
  @override
  Map<String, dynamic> toJson() =>
    {
      'extension': fhirExtension?.map((e) => e.toJson()).toList(),
      'family': family,
      'given': given?.map((e) => e).toList(),
      'id': id,
      'period': period?.toJson(),
      'prefix': prefix?.map((e) => e).toList(),
      'suffix': suffix?.map((e) => e).toList(),
      'text': text,
      'use': use,
    };
  
  @override
  HumanName copyWith({
    List<Extension>? fhirExtension,
    String? family,
    List<String>? given,
    String? id,
    Period? period,
    List<String>? prefix,
    List<String>? suffix,
    String? text,
    String? use,
  }) {
    return HumanName(
      fhirExtension: fhirExtension ?? this.fhirExtension,
      family: family ?? this.family,
      given: given ?? this.given,
      id: id ?? this.id,
      period: period ?? this.period,
      prefix: prefix ?? this.prefix,
      suffix: suffix ?? this.suffix,
      text: text ?? this.text,
      use: use ?? this.use,
    );
  }
}
