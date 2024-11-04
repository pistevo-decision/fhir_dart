part of 'json_examples.dart';

const Map<String, dynamic> accountWithGurantorMap = {
  "resourceType": "Account",
  "id": "ewg",
  "text": {
    "status": "generated",
    "div":
        "\u003cdiv xmlns\u003d\"http://www.w3.org/1999/xhtml\"\u003eInpatient Admission for Peter James Chalmers Account\u003c/div\u003e"
  },
  "identifier": [
    {"system": "urn:oid:0.1.2.3.4.5.6.7", "value": "654321"}
  ],
  "status": "active",
  "type": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code": "PBILLACCT",
        "display": "patient billing account"
      }
    ],
    "text": "patient"
  },
  "name": "Inpatient: Peter James Chalmers",
  "subject": [
    {"reference": "Patient/example", "display": "Peter James Chalmers"}
  ],
  "servicePeriod": {"start": "2016-01-01", "end": "2016-06-30"},
  "coverage": [
    {
      "coverage": {"reference": "Coverage/9876B1"},
      "priority": 1
    },
    {
      "coverage": {"reference": "Coverage/7546D"},
      "priority": 2
    }
  ],
  "owner": {
    "reference": "Organization/f001",
    "display": "Burgers University Medical Center"
  },
  "description": "Hospital charges",
  "guarantor": [
    {
      "party": {
        "reference": "RelatedPerson/benedicte",
        "display": "Bénédicte du Marché"
      },
      "onHold": false,
      "period": {"start": "2016-01-01"}
    }
  ],
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
