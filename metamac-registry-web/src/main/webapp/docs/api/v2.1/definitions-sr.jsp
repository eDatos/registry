<%@page pageEncoding="UTF-8"%>
	"xml_sr_Agencies": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "agency": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Agencies",
            "type": "object"
      },
      "xml_sr_Agency": {
         "allOf": [
             {
                 "$ref": "#/definitions/xml_sr_Organisation"
             },
             {}
         ],
         "description": "",
         "title": "Agency",
         "type": "object"
      },
      "xml_sr_AgencyScheme": {
         "allOf": [
             {
                 "$ref": "#/definitions/xml_sr_OrganisationScheme"
             },
             {}
         ],
         "description": "",
         "title": "AgencyScheme",
         "type": "object"
      },
      "xml_sr_AgencySchemes": {
         "allOf": [
             {
                 "$ref": "#/definitions/xml_cdomain_ListBase"
             },
             {
                 "properties": {
                     "agencyScheme": {
                         "$ref": "#/definitions/xml_cdomain_Resource",
                         "description": "",
                         "xml": {
                             "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                         }
                     }
                 }
             }
         ],
         "description": "",
         "title": "AgencySchemes",
         "type": "object"
      },
      "xml_sr_AnnotableArtefact": {
            "allOf": [
                {
                    "properties": {
                        "annotations": {
                            "$ref": "#/definitions/xml_sr_Annotations",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "AnnotableArtefact",
            "type": "object"
        },
        "xml_sr_Annotation": {
            "allOf": [
                {
                    "properties": {
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "text": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "title": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "type": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "url": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "id"
            ],
            "title": "Annotation",
            "type": "object"
        },
        "xml_sr_Annotations": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "annotation": {
                            "$ref": "#/definitions/xml_sr_Annotation",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Annotations",
            "type": "object"
        },
        "xml_sr_Attribute": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_AttributeBase"
                },
                {
                    "properties": {
                        "assignmentStatus": {
                            "$ref": "#/definitions/xml_sr_AttributeUsageStatusType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "attributeRelationship": {
                            "$ref": "#/definitions/xml_sr_AttributeRelationship",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "roleConcepts": {
                            "$ref": "#/definitions/xml_sr_RoleConcepts",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "assignmentStatus",
                "attributeRelationship"
            ],
            "title": "Attribute",
            "type": "object"
        },
        "xml_sr_AttributeBase": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Component"
                },
                {
                    "properties": {
                        "type": {
                            "$ref": "#/definitions/xml_sr_AttributeQualifierType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "AttributeBase",
            "type": "object"
        },
        "xml_sr_AttributeQualifierType": {
            "description": "",
            "enum": [
                "MEASURE",
                "SPATIAL",
                "TIME"
            ],
            "title": "AttributeQualifierType",
            "type": "string"
        },
        "xml_sr_AttributeRelationship": {
            "allOf": [
                {
                    "properties": {
                        "attachmentGroup": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "dimension": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "group": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "none": {
                            "$ref": "#/definitions/xml_sr_Empty",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "primaryMeasure": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "AttributeRelationship",
            "type": "object"
        },
        "xml_sr_AttributeUsageStatusType": {
            "description": "",
            "enum": [
                "MANDATORY",
                "CONDITIONAL"
            ],
            "title": "AttributeUsageStatusType",
            "type": "string"
        },
        "xml_sr_Attributes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Components"
                },
                {
                    "properties": {
                        "attribute": {
                            "$ref": "#/definitions/xml_sr_AttributeBase",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Attributes",
            "type": "object"
        },
        "xml_sr_Categories": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "category": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Categories",
            "type": "object"
        },
        "xml_sr_Categorisation": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_MaintainableArtefact"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "source": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "target": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind",
                "source",
                "target"
            ],
            "title": "Categorisation",
            "type": "object"
        },
        "xml_sr_Categorisations": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "categorisation": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Categorisations",
            "type": "object"
        },
        "xml_sr_Category": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Item"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "Category",
            "type": "object"
        },
        "xml_sr_CategoryScheme": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_ItemScheme"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "CategoryScheme",
            "type": "object"
        },
        "xml_sr_CategorySchemes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "categoryScheme": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "CategorySchemes",
            "type": "object"
        },
        "xml_sr_Code": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Item"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "shortName": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "Code",
            "type": "object"
        },
        "xml_sr_CodeResource": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_ItemResource"
                },
                {
                    "properties": {
                        "open": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "order": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "variableElement": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "CodeResource",
            "type": "object"
        },
        "xml_sr_Codelist": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_ItemScheme"
                },
                {
                    "properties": {
                        "descriptionSource": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "isRecommended": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "opennessConfigurations": {
                            "$ref": "#/definitions/xml_sr_VisualisationConfigurations",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "orderConfigurations": {
                            "$ref": "#/definitions/xml_sr_VisualisationConfigurations",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "replaceTo": {
                            "$ref": "#/definitions/xml_sr_ReplaceToResources",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "shortName": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "variable": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind",
                "variable",
                "orderConfigurations",
                "opennessConfigurations"
            ],
            "title": "Codelist",
            "type": "object"
        },
        "xml_sr_CodelistFamilies": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "codelistFamily": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "CodelistFamilies",
            "type": "object"
        },
        "xml_sr_CodelistFamily": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_NameableArtefact"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "CodelistFamily",
            "type": "object"
        },
        "xml_sr_Codelists": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "codelist": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Codelists",
            "type": "object"
        },
        "xml_sr_Codes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "code": {
                            "$ref": "#/definitions/xml_sr_CodeResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Codes",
            "type": "object"
        },
        "xml_sr_Component": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_IdentifiableArtefact"
                },
                {
                    "properties": {
                        "conceptIdentity": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "localRepresentation": {
                            "$ref": "#/definitions/xml_sr_Representation",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Component",
            "type": "object"
        },
        "xml_sr_Components": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_IdentifiableArtefact"
                },
                {}
            ],
            "description": "",
            "title": "Components",
            "type": "object"
        },
        "xml_sr_Concept": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Item"
                },
                {
                    "properties": {
                        "acronym": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "context": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "coreRepresentation": {
                            "$ref": "#/definitions/xml_sr_Representation",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "derivation": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "descriptionSource": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "docMethod": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "extends": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "legalActs": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "pluralName": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "quantity": {
                            "$ref": "#/definitions/xml_sr_Quantity",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "relatedConcepts": {
                            "$ref": "#/definitions/xml_sr_RelatedConcepts",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "roles": {
                            "$ref": "#/definitions/xml_sr_RoleConcepts",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "type": {
                            "$ref": "#/definitions/xml_cdomain_Item",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "variable": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "Concept",
            "type": "object"
        },
        "xml_sr_ConceptScheme": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_ItemScheme"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "statisticalOperation": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "type": {
                            "$ref": "#/definitions/xml_sr_ConceptSchemeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind",
                "type"
            ],
            "title": "ConceptScheme",
            "type": "object"
        },
        "xml_sr_ConceptSchemeType": {
            "description": "",
            "enum": [
                "GLOSSARY",
                "TRANSVERSAL",
                "OPERATION",
                "ROLE",
                "MEASURE"
            ],
            "title": "ConceptSchemeType",
            "type": "string"
        },
        "xml_sr_ConceptSchemes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "conceptScheme": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "ConceptSchemes",
            "type": "object"
        },
        "xml_sr_ConceptTypes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "conceptType": {
                            "$ref": "#/definitions/xml_cdomain_Item",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "ConceptTypes",
            "type": "object"
        },
        "xml_sr_Concepts": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "concept": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Concepts",
            "type": "object"
        },
        "xml_sr_Contact": {
            "allOf": [
                {
                    "properties": {
                        "emails": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "faxes": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "name": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "organisationUnit": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "responsibility": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "telephones": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "urls": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Contact",
            "type": "object"
        },
        "xml_sr_Contacts": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "contact": {
                            "$ref": "#/definitions/xml_sr_Contact",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Contacts",
            "type": "object"
        },
        "xml_sr_ContentConstraint": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_MaintainableArtefact"
                },
                {
                    "properties": {
                        "constraintAttachment": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "regions": {
                            "$ref": "#/definitions/xml_sr_Regions",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "type": {
                            "$ref": "#/definitions/xml_sr_ContentConstraintType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind",
                "type",
                "constraintAttachment",
                "regions"
            ],
            "title": "ContentConstraint",
            "type": "object"
        },
        "xml_sr_ContentConstraintType": {
            "description": "",
            "enum": [
                "ALLOWED",
                "ACTUAL"
            ],
            "title": "ContentConstraintType",
            "type": "string"
        },
        "xml_sr_ContentConstraints": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "contentConstraint": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "ContentConstraints",
            "type": "object"
        },
        "xml_sr_DataConsumer": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Organisation"
                },
                {}
            ],
            "description": "",
            "title": "DataConsumer",
            "type": "object"
        },
        "xml_sr_DataConsumerScheme": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_OrganisationScheme"
                },
                {}
            ],
            "description": "",
            "title": "DataConsumerScheme",
            "type": "object"
        },
        "xml_sr_DataConsumerSchemes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "dataConsumerScheme": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DataConsumerSchemes",
            "type": "object"
        },
        "xml_sr_DataConsumers": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "dataConsumer": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DataConsumers",
            "type": "object"
        },
        "xml_sr_DataProvider": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Organisation"
                },
                {}
            ],
            "description": "",
            "title": "DataProvider",
            "type": "object"
        },
        "xml_sr_DataProviderScheme": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_OrganisationScheme"
                },
                {}
            ],
            "description": "",
            "title": "DataProviderScheme",
            "type": "object"
        },
        "xml_sr_DataProviderSchemes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "dataProviderScheme": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DataProviderSchemes",
            "type": "object"
        },
        "xml_sr_DataProviders": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "dataProvider": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DataProviders",
            "type": "object"
        },
        "xml_sr_DataStructure": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_MaintainableArtefact"
                },
                {
                    "properties": {
                        "autoOpen": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "dataStructureComponents": {
                            "$ref": "#/definitions/xml_sr_DataStructureComponents",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "dimensionVisualisations": {
                            "$ref": "#/definitions/xml_sr_DimensionVisualisations",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "heading": {
                            "$ref": "#/definitions/xml_sr_DimensionReferences",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "showDecimals": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "showDecimalsPrecisions": {
                            "$ref": "#/definitions/xml_sr_ShowDecimalPrecisions",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "statisticalOperation": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "stub": {
                            "$ref": "#/definitions/xml_sr_DimensionReferences",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind",
                "heading",
                "stub",
                "dimensionVisualisations"
            ],
            "title": "DataStructure",
            "type": "object"
        },
        "xml_sr_DataStructureComponents": {
            "allOf": [
                {
                    "properties": {
                        "attributes": {
                            "$ref": "#/definitions/xml_sr_Attributes",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "dimensions": {
                            "$ref": "#/definitions/xml_sr_Dimensions",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "groups": {
                            "$ref": "#/definitions/xml_sr_Groups",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "measure": {
                            "$ref": "#/definitions/xml_sr_Measure",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "dimensions",
                "measure"
            ],
            "title": "DataStructureComponents",
            "type": "object"
        },
        "xml_sr_DataStructures": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "dataStructure": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DataStructures",
            "type": "object"
        },
        "xml_sr_DataType": {
            "description": "",
            "enum": [
                "String",
                "Alpha",
                "AlphaNumeric",
                "Numeric",
                "BigInteger",
                "Integer",
                "Long",
                "Short",
                "Decimal",
                "Float",
                "Double",
                "Boolean",
                "URI",
                "Count",
                "InclusiveValueRange",
                "ExclusiveValueRange",
                "Incremental",
                "ObservationalTimePeriod",
                "StandardTimePeriod",
                "BasicTimePeriod",
                "GregorianTimePeriod",
                "GregorianYear",
                "GregorianYearMonth",
                "GregorianDay",
                "ReportingTimePeriod",
                "ReportingYear",
                "ReportingSemester",
                "ReportingTrimester",
                "ReportingQuarter",
                "ReportingMonth",
                "ReportingWeek",
                "ReportingDay",
                "DateTime",
                "TimeRange",
                "Month",
                "MonthDay",
                "Day",
                "Time",
                "xhtml"
            ],
            "title": "DataType",
            "type": "string"
        },
        "xml_sr_Dimension": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_DimensionBase"
                },
                {
                    "properties": {
                        "isSpatial": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "roleConcepts": {
                            "$ref": "#/definitions/xml_sr_RoleConcepts",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Dimension",
            "type": "object"
        },
        "xml_sr_DimensionBase": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Component"
                },
                {
                    "properties": {
                        "type": {
                            "$ref": "#/definitions/xml_sr_DimensionType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DimensionBase",
            "type": "object"
        },
        "xml_sr_DimensionReferences": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "dimension": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DimensionReferences",
            "type": "object"
        },
        "xml_sr_DimensionType": {
            "description": "",
            "enum": [
                "DIMENSION",
                "MEASURE_DIMENSION",
                "TIME_DIMENSION"
            ],
            "title": "DimensionType",
            "type": "string"
        },
        "xml_sr_DimensionVisualisation": {
            "allOf": [
                {
                    "properties": {
                        "dimension": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "dimension"
            ],
            "title": "DimensionVisualisation",
            "type": "object"
        },
        "xml_sr_DimensionVisualisations": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "dimensionVisualisation": {
                            "$ref": "#/definitions/xml_sr_DimensionVisualisation",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "DimensionVisualisations",
            "type": "object"
        },
        "xml_sr_Dimensions": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Components"
                },
                {
                    "properties": {
                        "dimension": {
                            "$ref": "#/definitions/xml_sr_DimensionBase",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Dimensions",
            "type": "object"
        },
        "xml_sr_Empty": {
            "allOf": [
                {}
            ],
            "description": "",
            "title": "Empty",
            "type": "object"
        },
        "xml_sr_Group": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Components"
                },
                {
                    "properties": {
                        "dimensions": {
                            "$ref": "#/definitions/xml_sr_DimensionReferences",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "dimensions"
            ],
            "title": "Group",
            "type": "object"
        },
        "xml_sr_Groups": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "group": {
                            "$ref": "#/definitions/xml_sr_Group",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Groups",
            "type": "object"
        },
        "xml_sr_IdentifiableArtefact": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_AnnotableArtefact"
                },
                {
                    "properties": {
                        "childLinks": {
                            "$ref": "#/definitions/xml_cdomain_ChildLinks",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "managementAppLink": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "nestedId": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "parentLink": {
                            "$ref": "#/definitions/ResourceLink",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "selfLink": {
                            "$ref": "#/definitions/ResourceLink",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "uri": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "urn": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "urnProvider": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "id",
                "urn",
                "uri",
                "selfLink",
                "parentLink",
                "childLinks",
                "managementAppLink"
            ],
            "title": "IdentifiableArtefact",
            "type": "object"
        },
        "xml_sr_Item": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_NameableArtefact"
                },
                {
                    "properties": {
                        "parent": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Item",
            "type": "object"
        },
        "xml_sr_ItemResource": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_Resource"
                },
                {
                    "properties": {
                        "parent": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "ItemResource",
            "type": "object"
        },
        "xml_sr_ItemScheme": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_MaintainableArtefact"
                },
                {
                    "properties": {
                        "isPartial": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "ItemScheme",
            "type": "object"
        },
        "xml_sr_Key": {
            "allOf": [
                {
                    "properties": {
                        "included": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "keyParts": {
                            "$ref": "#/definitions/xml_sr_KeyParts",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "keyParts"
            ],
            "title": "Key",
            "type": "object"
        },
        "xml_sr_KeyPart": {
            "allOf": [
                {
                    "properties": {
                        "afterPeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "afterPeriodInclusive": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "beforePeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "beforePeriodInclusive": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "cascadeValues": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "endPeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "endPeriodInclusive": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "identifier": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "position": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "startPeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "startPeriodInclusive": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "type": {
                            "$ref": "#/definitions/xml_sr_KeyPartType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "value": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "identifier",
                "type"
            ],
            "title": "KeyPart",
            "type": "object"
        },
        "xml_sr_KeyPartType": {
            "description": "",
            "enum": [
                "TIME_RANGE",
                "NORMAL"
            ],
            "title": "KeyPartType",
            "type": "string"
        },
        "xml_sr_KeyParts": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "keyPart": {
                            "$ref": "#/definitions/xml_sr_KeyPart",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "KeyParts",
            "type": "object"
        },
        "xml_sr_Keys": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "key": {
                            "$ref": "#/definitions/xml_sr_Key",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Keys",
            "type": "object"
        },
        "xml_sr_LifeCycle": {
            "allOf": [
                {
                    "properties": {
                        "lastUpdatedDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "LifeCycle",
            "type": "object"
        },
        "xml_sr_MaintainableArtefact": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_VersionableArtefact"
                },
                {
                    "properties": {
                        "agencyID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "isExternalReference": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "isFinal": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "lifeCycle": {
                            "$ref": "#/definitions/xml_sr_LifeCycle",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "serviceUrl": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "structureUrl": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "agencyID",
                "lifeCycle"
            ],
            "title": "MaintainableArtefact",
            "type": "object"
        },
        "xml_sr_Measure": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Components"
                },
                {
                    "properties": {
                        "primaryMeasure": {
                            "$ref": "#/definitions/xml_sr_PrimaryMeasure",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "primaryMeasure"
            ],
            "title": "Measure",
            "type": "object"
        },
        "xml_sr_MeasureDimension": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_DimensionBase"
                },
                {
                    "properties": {
                        "roleConcepts": {
                            "$ref": "#/definitions/xml_sr_RoleConcepts",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "MeasureDimension",
            "type": "object"
        },
        "xml_sr_NameableArtefact": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_IdentifiableArtefact"
                },
                {
                    "properties": {
                        "description": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "name": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "name"
            ],
            "title": "NameableArtefact",
            "type": "object"
        },
        "xml_sr_Organisation": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Item"
                },
                {
                    "properties": {
                        "contacts": {
                            "$ref": "#/definitions/xml_sr_Contacts",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "Organisation",
            "type": "object"
        },
        "xml_sr_OrganisationScheme": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_ItemScheme"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "OrganisationScheme",
            "type": "object"
        },
        "xml_sr_OrganisationSchemes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "organisationScheme": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "OrganisationSchemes",
            "type": "object"
        },
        "xml_sr_OrganisationUnit": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Organisation"
                },
                {}
            ],
            "description": "",
            "title": "OrganisationUnit",
            "type": "object"
        },
        "xml_sr_OrganisationUnitScheme": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_OrganisationScheme"
                },
                {}
            ],
            "description": "",
            "title": "OrganisationUnitScheme",
            "type": "object"
        },
        "xml_sr_OrganisationUnitSchemes": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "organisationUnitScheme": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "OrganisationUnitSchemes",
            "type": "object"
        },
        "xml_sr_OrganisationUnits": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "organisationUnit": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "OrganisationUnits",
            "type": "object"
        },
        "xml_sr_Organisations": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "organisation": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Organisations",
            "type": "object"
        },
        "xml_sr_PrimaryMeasure": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Component"
                },
                {}
            ],
            "description": "",
            "title": "PrimaryMeasure",
            "type": "object"
        },
        "xml_sr_Quantity": {
            "allOf": [
                {
                    "properties": {
                        "decimalPlaces": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "significantDigits": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "unitCode": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "unitMultiplier": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "unitSymbolPosition": {
                            "$ref": "#/definitions/xml_sr_QuantityUnitSymbolPosition",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "unitCode",
                "unitSymbolPosition"
            ],
            "title": "Quantity",
            "type": "object"
        },
        "xml_sr_QuantityAmount": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Quantity"
                },
                {}
            ],
            "description": "",
            "title": "QuantityAmount",
            "type": "object"
        },
        "xml_sr_QuantityChangeRate": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_QuantityRate"
                },
                {
                    "properties": {
                        "baseQuantity": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "QuantityChangeRate",
            "type": "object"
        },
        "xml_sr_QuantityFraction": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_QuantityMagnitude"
                },
                {
                    "properties": {
                        "denominator": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "numerator": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "QuantityFraction",
            "type": "object"
        },
        "xml_sr_QuantityIndex": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_QuantityRate"
                },
                {
                    "properties": {
                        "baseLocation": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "baseTime": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "baseValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "QuantityIndex",
            "type": "object"
        },
        "xml_sr_QuantityMagnitude": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Quantity"
                },
                {
                    "properties": {
                        "max": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "min": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "QuantityMagnitude",
            "type": "object"
        },
        "xml_sr_QuantityRate": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_QuantityRatio"
                },
                {}
            ],
            "description": "",
            "title": "QuantityRate",
            "type": "object"
        },
        "xml_sr_QuantityRatio": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_QuantityFraction"
                },
                {
                    "properties": {
                        "isPercentage": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "percentageOf": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "QuantityRatio",
            "type": "object"
        },
        "xml_sr_QuantityUnitSymbolPosition": {
            "description": "",
            "enum": [
                "START",
                "END"
            ],
            "title": "QuantityUnitSymbolPosition",
            "type": "string"
        },
        "xml_sr_Region": {
            "allOf": [
                {
                    "properties": {
                        "code": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "keys": {
                            "$ref": "#/definitions/xml_sr_Keys",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "regionValueType": {
                            "$ref": "#/definitions/xml_sr_RegionValueType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "regionValueType",
                "keys"
            ],
            "title": "Region",
            "type": "object"
        },
        "xml_sr_RegionReference": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_Region"
                },
                {
                    "properties": {
                        "contentConstraintUrn": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "contentConstraintUrn"
            ],
            "title": "RegionReference",
            "type": "object"
        },
        "xml_sr_RegionValueType": {
            "description": "",
            "enum": [
                "KEY_SET",
                "CUBE"
            ],
            "title": "RegionValueType",
            "type": "string"
        },
        "xml_sr_Regions": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "region": {
                            "$ref": "#/definitions/xml_sr_Region",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Regions",
            "type": "object"
        },
        "xml_sr_RelatedConcepts": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "relatedConcept": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "RelatedConcepts",
            "type": "object"
        },
        "xml_sr_ReplaceToResources": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "replaceTo": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "ReplaceToResources",
            "type": "object"
        },
        "xml_sr_Representation": {
            "allOf": [
                {
                    "properties": {
                        "enumerationCodelist": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "enumerationConceptScheme": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "textFormat": {
                            "$ref": "#/definitions/xml_sr_TextFormat",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Representation",
            "type": "object"
        },
        "xml_sr_RoleConcepts": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "role": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "RoleConcepts",
            "type": "object"
        },
        "xml_sr_ShowDecimalPrecision": {
            "allOf": [
                {
                    "properties": {
                        "concept": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "showDecimals": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "concept"
            ],
            "title": "ShowDecimalPrecision",
            "type": "object"
        },
        "xml_sr_ShowDecimalPrecisions": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "showDecimalPrecision": {
                            "$ref": "#/definitions/xml_sr_ShowDecimalPrecision",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "ShowDecimalPrecisions",
            "type": "object"
        },
        "xml_sr_TextFormat": {
            "allOf": [
                {
                    "properties": {
                        "decimals": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "endTime": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "endValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "interval": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "isMultiLingual": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "isSequence": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "maxLength": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "maxValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "minLength": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "minValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "pattern": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "startTime": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "startValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "textType": {
                            "$ref": "#/definitions/xml_sr_DataType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "timeInterval": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "textType"
            ],
            "title": "TextFormat",
            "type": "object"
        },
        "xml_sr_TimeDimension": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_DimensionBase"
                },
                {}
            ],
            "description": "",
            "title": "TimeDimension",
            "type": "object"
        },
        "xml_sr_Variable": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_NameableArtefact"
                },
                {
                    "properties": {
                        "families": {
                            "$ref": "#/definitions/xml_sr_VariableFamiliesMetadata",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "replaceTo": {
                            "$ref": "#/definitions/xml_sr_ReplaceToResources",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "replacedBy": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "shortName": {
                            "$ref": "#/definitions/InternationalString",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "type": {
                            "$ref": "#/definitions/xml_sr_VariableType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind",
                "shortName",
                "families"
            ],
            "title": "Variable",
            "type": "object"
        },
        "xml_sr_VariableElement": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_NameableArtefact"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "replaceTo": {
                            "$ref": "#/definitions/xml_sr_ReplaceToResources",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "replacedBy": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "variable": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind",
                "variable"
            ],
            "title": "VariableElement",
            "type": "object"
        },
        "xml_sr_VariableElements": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "variableElement": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "VariableElements",
            "type": "object"
        },
        "xml_sr_VariableElementsGeoInfoFeature": {
            "allOf": [
                {
                    "properties": {
                        "geometryWKT": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "properties": {
                            "$ref": "#/definitions/xml_sr_VariableElementsGeoInfoFeatureProperties",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "type": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "id",
                "type",
                "properties"
            ],
            "title": "VariableElementsGeoInfoFeature",
            "type": "object"
        },
        "xml_sr_VariableElementsGeoInfoFeatureProperties": {
            "allOf": [
                {
                    "properties": {
                        "geographicalGranularity": {
                            "$ref": "#/definitions/xml_sr_ItemResource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "lastUpdatedDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "latitude": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "longitude": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "urn": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "urn"
            ],
            "title": "VariableElementsGeoInfoFeatureProperties",
            "type": "object"
        },
        "xml_sr_VariableElementsGeoInfoFeatures": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "feature": {
                            "$ref": "#/definitions/xml_sr_VariableElementsGeoInfoFeature",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "VariableElementsGeoInfoFeatures",
            "type": "object"
        },
        "xml_sr_VariableFamilies": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "variableFamily": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "VariableFamilies",
            "type": "object"
        },
        "xml_sr_VariableFamiliesMetadata": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "family": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "VariableFamiliesMetadata",
            "type": "object"
        },
        "xml_sr_VariableFamily": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_NameableArtefact"
                },
                {
                    "properties": {
                        "kind": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "kind"
            ],
            "title": "VariableFamily",
            "type": "object"
        },
        "xml_sr_VariableType": {
            "description": "",
            "enum": [
                "GEOGRAPHICAL"
            ],
            "title": "VariableType",
            "type": "string"
        },
        "xml_sr_Variables": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "variable": {
                            "$ref": "#/definitions/xml_cdomain_Resource",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "Variables",
            "type": "object"
        },
        "xml_sr_VersionableArtefact": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_sr_NameableArtefact"
                },
                {
                    "properties": {
                        "replaceToVersion": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "replacedByVersion": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "validFrom": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "validTo": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        },
                        "version": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "required": [
                "version",
                "validFrom"
            ],
            "title": "VersionableArtefact",
            "type": "object"
        },
        "xml_sr_VisualisationConfiguration": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_Item"
                },
                {
                    "properties": {
                        "default": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "VisualisationConfiguration",
            "type": "object"
        },
        "xml_sr_VisualisationConfigurations": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_cdomain_ListBase"
                },
                {
                    "properties": {
                        "visualisationConfiguration": {
                            "$ref": "#/definitions/xml_sr_VisualisationConfiguration",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.siemac.org/metamac/rest/structural-resources/v1.0/domain"
                            }
                        }
                    }
                }
            ],
            "description": "",
            "title": "VisualisationConfigurations",
            "type": "object"
        }