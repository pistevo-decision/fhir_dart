part of '../fhir_dart.dart';

 /// This is the base resource type for everything.
class Resource {
  /// Resource Type Name (for serialization) 
  static const resourceType = 'Resource';
   /// Logical id of this artifact
   /// The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.
   /// The only time that a resource does not have an id is when it is being submitted to the server using a create operation.
  final String? id;
   /// A set of rules under which this content was created
   /// A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.
   /// Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. Often, when used, the URL is a reference to an implementation guide that defines these special rules as part of it's narrative along with other profiles, value sets, etc.
  final String? implicitRules;
   /// Language of the resource content
   /// The base language in which the resource is written.
   /// Language is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies  to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute).
  final String? language;
   /// Metadata about the resource
   /// The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.
  final Meta? meta;
  Resource({
    this.id,
    this.implicitRules,
    this.language,
    this.meta,
  });
  
  factory Resource.fromJson(Map<String, dynamic> json) {
    return Resource(
      id: json['id'] as String?,
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null ? Meta.fromJson(json['meta'] as Map<String, dynamic>) : null,
    );
    }
  
  Map<String, dynamic> toJson() =>
    {
      'id': id,
      'implicitRules': implicitRules,
      'language': language,
      'meta': meta?.toJson(),
    };
  
  Resource copyWith({
    String? id,
    String? implicitRules,
    String? language,
    Meta? meta,
  }) {
    return Resource(
      id: id ?? this.id,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
    );
  }
}
