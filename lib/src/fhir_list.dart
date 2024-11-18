part of '../fhir_dart.dart';

/// A list is a curated collection of resources.
class FhirList extends DomainResource implements FhirResource {
  /// Resource Type Name (for serialization)
  static const fhirResourceType = 'List';

  /// Resource Type Name
  @override
  String get resourceType => fhirResourceType;

  /// What the purpose of this list is
  /// This code defines the purpose of the list - why it was created.
  /// If there is no code, the purpose of the list is implied where it is used, such as in a document section using Document.section.code.
  final CodeableConcept? code;

  /// When the list was prepared
  /// The date that the list was prepared.
  /// The actual important date is the date of currency of the resources that were summarized, but it is usually assumed that these are current when the preparation occurs.
  final String? date;

  /// Why list is empty
  /// If the list is empty, why the list is empty.
  /// The various reasons for an empty list make a significant interpretation to its interpretation. Note that this code is for use when the entire list has been suppressed, and not for when individual items are omitted - implementers may consider using a text note or a flag on an entry in these cases.
  final CodeableConcept? emptyReason;

  /// Context in which list created
  /// The encounter that is the context in which this list was created.
  final Reference? encounter;

  /// Entries in the list
  /// Entries in this list.
  /// If there are no entries in the list, an emptyReason SHOULD be provided.
  final List<ListEntry>? entry;

  /// Business identifier
  /// Identifier for the List assigned for business purposes outside the context of FHIR.
  final List<Identifier>? identifier;

  /// How this list was prepared - whether it is a working list that is suitable for being maintained on an ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list where items may be marked as added, modified or deleted.
  /// This element is labeled as a modifier because a change list must not be misunderstood as a complete list.
  final String mode; // Possible values: 'working', 'snapshot', 'changes'
  /// Comments about the list
  /// Comments that apply to the overall list.
  final List<Annotation>? note;

  /// What order the list has
  /// What order applies to the items in the list.
  /// Applications SHOULD render ordered lists in the order provided, but MAY allow users to re-order based on their own preferences as well. If there is no order specified, the order is unknown, though there may still be some order.
  final CodeableConcept? orderedBy;

  /// Who and/or what defined the list contents (aka Author)
  /// The entity responsible for deciding what the contents of the list were. Where the list was created by a human, this is the same as the author of the list.
  /// The primary source is the entity that made the decisions what items are in the list. This may be software or user.
  final Reference? source;

  /// Indicates the current state of this list.
  /// This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.
  final String
      status; // Possible values: 'current', 'retired', 'entered-in-error'
  /// If all resources have the same subject
  /// The common subject (or patient) of the resources that are in the list if there is one.
  /// Some purely arbitrary lists do not have a common subject, so this is optional.
  final Reference? subject;

  /// Descriptive name for the list
  /// A label for the list assigned by the author.
  final String? title;
  FhirList({
    this.code,
    super.contained,
    this.date,
    this.emptyReason,
    this.encounter,
    this.entry,
    super.fhirExtension,
    super.id,
    this.identifier,
    super.implicitRules,
    super.language,
    super.meta,
    required this.mode,
    super.modifierExtension,
    this.note,
    this.orderedBy,
    this.source,
    required this.status,
    this.subject,
    super.text,
    this.title,
  });

  @override
  factory FhirList.fromJson(Map<String, dynamic> json) {
    return FhirList(
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              (json['code'] as Map).cast<String, dynamic>())
          : null,
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      date: json['date'] as String?,
      emptyReason: json['emptyReason'] != null
          ? CodeableConcept.fromJson(
              (json['emptyReason'] as Map).cast<String, dynamic>())
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              (json['encounter'] as Map).cast<String, dynamic>())
          : null,
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => ListEntry.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      id: json['id'] as String?,
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      implicitRules: json['implicitRules'] as String?,
      language: json['language'] as String?,
      meta: json['meta'] != null
          ? Meta.fromJson((json['meta'] as Map).cast<String, dynamic>())
          : null,
      mode: json['mode'] as String,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson((e as Map).cast<String, dynamic>()))
          .toList(),
      orderedBy: json['orderedBy'] != null
          ? CodeableConcept.fromJson(
              (json['orderedBy'] as Map).cast<String, dynamic>())
          : null,
      source: json['source'] != null
          ? Reference.fromJson((json['source'] as Map).cast<String, dynamic>())
          : null,
      status: json['status'] as String,
      subject: json['subject'] != null
          ? Reference.fromJson((json['subject'] as Map).cast<String, dynamic>())
          : null,
      text: json['text'] != null
          ? Narrative.fromJson((json['text'] as Map).cast<String, dynamic>())
          : null,
      title: json['title'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'resourceType': fhirResourceType,
        'code': code?.toJson(),
        'contained': contained?.map((e) => e.toJson()).toList(),
        'date': date,
        'emptyReason': emptyReason?.toJson(),
        'encounter': encounter?.toJson(),
        'entry': entry?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'id': id,
        'identifier': identifier?.map((e) => e.toJson()).toList(),
        'implicitRules': implicitRules,
        'language': language,
        'meta': meta?.toJson(),
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'note': note?.map((e) => e.toJson()).toList(),
        'orderedBy': orderedBy?.toJson(),
        'source': source?.toJson(),
        'status': status,
        'subject': subject?.toJson(),
        'text': text?.toJson(),
        'title': title,
      };

  @override
  FhirList copyWith({
    CodeableConcept? code,
    List<Resource>? contained,
    String? date,
    CodeableConcept? emptyReason,
    Reference? encounter,
    List<ListEntry>? entry,
    List<Extension>? fhirExtension,
    String? id,
    List<Identifier>? identifier,
    String? implicitRules,
    String? language,
    Meta? meta,
    String? mode,
    List<Extension>? modifierExtension,
    List<Annotation>? note,
    CodeableConcept? orderedBy,
    Reference? source,
    String? status,
    Reference? subject,
    Narrative? text,
    String? title,
  }) {
    return FhirList(
      code: code ?? this.code,
      contained: contained ?? this.contained,
      date: date ?? this.date,
      emptyReason: emptyReason ?? this.emptyReason,
      encounter: encounter ?? this.encounter,
      entry: entry ?? this.entry,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      id: id ?? this.id,
      identifier: identifier ?? this.identifier,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      meta: meta ?? this.meta,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      note: note ?? this.note,
      orderedBy: orderedBy ?? this.orderedBy,
      source: source ?? this.source,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      text: text ?? this.text,
      title: title ?? this.title,
    );
  }
}
