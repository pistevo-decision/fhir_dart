part of 'json_examples.dart';

const Map<String, dynamic> consentExampleEmergency = {
  "resourceType": "Consent",
  "id": "consent-example-Emergency",
  "text": {
    "status": "generated",
    "div":
        "\u003cdiv xmlns\u003d\"http://www.w3.org/1999/xhtml\"\u003e\n      \u003cp\u003e\n\tWithhold Authorization for Treatment rule for Emegency Treatment\n\t\u003c/p\u003e\n      \u003cp\u003e\n    Patient \u0026quot;P. van de Heuvel\u0026quot; wishes to have no data at the Good Health Psychiatric Hospital \n   available rule for Emergency treatment use.\n   An overall Deny consent Directive, with an exception \u0026quot;Permit\u0026quot; of purposeOfUse \u0026quot;ETREAT\u0026quot; \n   at \u0026quot;Good Health\u0026quot; hospital, and exception \u0026quot;Deny\u0026quot; all other purposeOfUse from good health hospital.\n   \u003c/p\u003e\n    \u003c/div\u003e"
  },
  "status": "active",
  "scope": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/consentscope",
        "code": "patient-privacy"
      }
    ]
  },
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code": "EMRGONLY"
        }
      ]
    }
  ],
  "patient": {"reference": "Patient/f001", "display": "P. van de Heuvel"},
  "dateTime": "2015-11-18",
  "organization": [
    {"reference": "Organization/f001"}
  ],
  "sourceAttachment": {"title": "The terms of the consent in lawyer speak."},
  "policyRule": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code": "OPTOUT"
      }
    ]
  },
  "provision": {
    "actor": [
      {
        "role": {
          "coding": [
            {
              "system":
                  "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
              "code": "CST"
            }
          ]
        },
        "reference": {"reference": "Organization/f001"}
      }
    ],
    "purpose": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code": "ETREAT"
      }
    ],
    "provision": [
      {
        "type": "deny",
        "actor": [
          {
            "role": {
              "coding": [
                {
                  "system":
                      "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                  "code": "CST"
                }
              ]
            },
            "reference": {"reference": "Organization/f001"}
          }
        ]
      }
    ]
  },
  "meta": {
    "tag": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code": "HTEST",
        "display": "test health data"
      }
    ]
  }
};
