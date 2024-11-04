part of '../fhir_dart.dart';

/// Composition is broken into sections
/// The root of the sections that make up the composition.
class CompositionSection extends BackboneElement implements FhirResource {
  /// Who and/or what authored the section
  /// Identifies who is responsible for the information in this section, not necessarily who typed it in.
  final List<Reference>? author;

  /// Classification of section (recommended)
  /// A code identifying the kind of content contained within the section. This must be consistent with the section title.
  /// The code identifies the section for an automated processor of the document. This is particularly relevant when using profiles to control the structure of the document.
  /// If the section has content (instead of sub-sections), the section.code does not change the meaning or interpretation of the resource that is the content of the section in the comments for the section.code.
  final CodeableConcept? code;

  /// Why the section is empty
  /// If the section is empty, why the list is empty. An empty section typically has some text explaining the empty reason.
  /// The various reasons for an empty section make a significant interpretation to its interpretation. Note that this code is for use when the entire section content has been suppressed, and not for when individual items are omitted - implementers may consider using a text note or a flag on an entry in these cases.
  final CodeableConcept? emptyReason;

  /// A reference to data that supports this section
  /// A reference to the actual resource from which the narrative in the section is derived.
  /// If there are no entries in the list, an emptyReason SHOULD be provided.
  final List<Reference>? entry;

  /// Who/what the section is about, when it is not about the subject of composition
  /// The actual focus of the section when it is not the subject of the composition, but instead represents something or someone associated with the subject such as (for a patient subject) a spouse, parent, fetus, or donor. If not focus is specified, the focus is assumed to be focus of the parent section, or, for a section in the Composition itself, the subject of the composition. Sections with a focus SHALL only include resources where the logical subject (patient, subject, focus, etc.) matches the section focus, or the resources have no logical subject (few resources).
  /// Typically, sections in a doument are about the subject of the document, whether that is a  patient, or group of patients, location, or device, or whatever. For some kind of documents, some sections actually contain data about related entities. Typical examples are  a section in a newborn discharge summary concerning the mother, or family history documents, with a section about each family member, though there are many other examples.
  final Reference? focus;

  /// How the entry list was prepared - whether it is a working list that is suitable for being maintained on an ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list where items may be marked as added, modified or deleted.
  /// This element is labeled as a modifier because a change list must not be misunderstood as a complete list.
  final String? mode; // Possible values: 'working', 'snapshot', 'changes'
  /// Order of section entries
  /// Specifies the order applied to the items in the section entries.
  /// Applications SHOULD render ordered lists in the order provided, but MAY allow users to re-order based on their own preferences as well. If there is no order specified, the order is unknown, though there may still be some order.
  final CodeableConcept? orderedBy;

  /// Nested Section
  /// A nested sub-section within this section.
  /// Nested sections are primarily used to help human readers navigate to particular portions of the document.
  final List<CompositionSection>? section;

  /// Text summary of the section, for human interpretation
  /// A human-readable narrative that contains the attested content of the section, used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative.
  /// Document profiles may define what content should be represented in the narrative to ensure clinical safety.
  final Narrative? text;

  /// Label for section (e.g. for ToC)
  /// The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.
  /// The title identifies the section for a human reader. The title must be consistent with the narrative of the resource that is the target of the section.content reference. Generally, sections SHOULD have titles, but in some documents, it is unnecessary or inappropriate. Typically, this is where a section has subsections that have their own adequately distinguishing title,  or documents that only have a single section. Most Implementation Guides will make section title to be a required element.
  final String? title;
  CompositionSection({
    this.author,
    this.code,
    this.emptyReason,
    this.entry,
    super.fhirExtension,
    this.focus,
    super.id,
    this.mode,
    super.modifierExtension,
    this.orderedBy,
    this.section,
    this.text,
    this.title,
  });

  @override
  factory CompositionSection.fromJson(Map<String, dynamic> json) {
    return CompositionSection(
      author: (json['author'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      emptyReason: json['emptyReason'] != null
          ? CodeableConcept.fromJson(
              json['emptyReason'] as Map<String, dynamic>)
          : null,
      entry: (json['entry'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      fhirExtension: (json['extension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      focus: json['focus'] != null
          ? Reference.fromJson(json['focus'] as Map<String, dynamic>)
          : null,
      id: json['id'] as String?,
      mode: json['mode'] as String?,
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => Extension.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderedBy: json['orderedBy'] != null
          ? CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>)
          : null,
      section: (json['section'] as List<dynamic>?)
          ?.map((e) => CompositionSection.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      title: json['title'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'author': author?.map((e) => e.toJson()).toList(),
        'code': code?.toJson(),
        'emptyReason': emptyReason?.toJson(),
        'entry': entry?.map((e) => e.toJson()).toList(),
        'extension': fhirExtension?.map((e) => e.toJson()).toList(),
        'focus': focus?.toJson(),
        'id': id,
        'mode': mode,
        'modifierExtension': modifierExtension?.map((e) => e.toJson()).toList(),
        'orderedBy': orderedBy?.toJson(),
        'section': section?.map((e) => e.toJson()).toList(),
        'text': text?.toJson(),
        'title': title,
      };

  @override
  CompositionSection copyWith({
    List<Reference>? author,
    CodeableConcept? code,
    CodeableConcept? emptyReason,
    List<Reference>? entry,
    List<Extension>? fhirExtension,
    Reference? focus,
    String? id,
    String? mode,
    List<Extension>? modifierExtension,
    CodeableConcept? orderedBy,
    List<CompositionSection>? section,
    Narrative? text,
    String? title,
  }) {
    return CompositionSection(
      author: author ?? this.author,
      code: code ?? this.code,
      emptyReason: emptyReason ?? this.emptyReason,
      entry: entry ?? this.entry,
      fhirExtension: fhirExtension ?? this.fhirExtension,
      focus: focus ?? this.focus,
      id: id ?? this.id,
      mode: mode ?? this.mode,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      orderedBy: orderedBy ?? this.orderedBy,
      section: section ?? this.section,
      text: text ?? this.text,
      title: title ?? this.title,
    );
  }
}
