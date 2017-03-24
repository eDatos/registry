{
      <jsp:include page="definitions-commons.jsp" />,
      "CommonMetadataStatus":{
         "type":"string",
         "title":"CommonMetadataStatus",
         "enum":[
            "ENABLED",
            "DISABLED"
         ],
         "description":"Posibles estados de una configuración de metadatos comunes"
      },
      "Configuration":{
         "type":"object",
         "title":"Configuration",
         "allOf":[
            {
               "properties":{
                  "kind":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Tipo del recurso",
                     "type":"string"
                  },
                  "childLinks":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Recursos a los que se puede acceder partiendo del actual",
                     "$ref":"#/definitions/xml_cdomain_ChildLinks"
                  },
                  "confDataTreatment":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Confidencialidad que se aplica en la organización para el tratamiento de los datos",
                     "$ref":"#/definitions/InternationalString"
                  },
                  "confPolicy":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Política de confidencialidad que sigue la organización",
                     "$ref":"#/definitions/InternationalString"
                  },
                  "contact":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Datos de contacto de la organización",
                     "$ref":"#/definitions/ResourceInternal"
                  },
                  "dataSharing":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Política de compartición de datos que sigue la organización",
                     "$ref":"#/definitions/InternationalString"
                  },
                  "id":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"código de la configuración de metadatos comunes",
                     "type":"string"
                  },
                  "legalActs":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Legislación por la que se rige la organización",
                     "$ref":"#/definitions/InternationalString"
                  },
                  "license":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Licencia que se aplica a todos los recursos publicados por la organización",
                     "$ref":"#/definitions/InternationalString"
                  },
                  "managementAppLink":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Enlace a la configuración de metadatos comunes en la aplicación interna de gestión de metadatos comunes",
                     "type":"string"
                  },
                  "parentLink":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Enlace al recurso padre en la API",
                     "$ref":"#/definitions/ResourceLink"
                  },
                  "selfLink":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Enlace al propio recurso",
                     "$ref":"#/definitions/ResourceLink"
                  },
                  "status":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Estado de la configuración de metadatos comunes. Las configuraciones pueden estar habilitadas o deshabilitadas. Deshabilitar una configuración indica que ya no se le puede aplicar a los recursos que se publican",
                     "$ref":"#/definitions/CommonMetadataStatus"
                  },
                  "urn":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"URN del recurso",
                     "type":"string"
                  }
               }
            }
         ],
         "description":"configuración de metadatos comunes"
      },
      "xml_cmetadata_Configurations":{
         "type":"object",
         "title":"Configurations",
         "allOf":[
            {
               "$ref":"#/definitions/ListBase"
            },
            {
               "properties":{
                  "configuration":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"configuración de metadatos comunes",
                     "$ref":"#/definitions/ResourceInternal"
                  }
               }
            }
         ],
         "description":"Listado de configuraciones de metadatos comunes existentes"
      },
      "xml_cmetadata_ResourceInternal":{
         "type":"object",
         "title":"ResourceInternal",
         "allOf":[
            {
               "$ref":"#/definitions/Resource"
            },
            {
               "properties":{
                  "managementAppLink":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common-metadata/v1.0/domain"
                     },
                     "description":"Enlace al recurso en la aplicación interna encargada de su gestión",
                     "type":"string"
                  }
               }
            }
         ],
         "description":"Definición del recurso en el Ámbito interno de la organización"
      },
      "xml_ns1_FooterMessageType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns2_CodedStatusMessageType"
                },
                {
                    "properties": {
                        "severity": {
                            "$ref": "#/definitions/xml_ns1_SeverityCodeType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "FooterMessageType defines the structure of a message that is contained in the footer of a message. It is a status message that have a severity code of Error, Information, or Warning added to it.\r\n\r\n<p>Java class for FooterMessageType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"FooterMessageType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodedStatusMessageType\">\r\n       &lt;attribute name=\"severity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}SeverityCodeType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "FooterMessageType",
            "type": "object"
        },
        "xml_ns1_FooterType": {
            "allOf": [
                {
                    "properties": {
                        "Message": {
                            "$ref": "#/definitions/xml_ns1_FooterMessageType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer"
                            }
                        }
                    }
                }
            ],
            "description": "FooterType describes the structure of a message footer. The footer is used to convey any error, information, or warning messages. This is to be used when the message has payload, but also needs to communicate additional information. If an error occurs and no payload is generated, an Error message should be returned.\r\n\r\n<p>Java class for FooterType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"FooterType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Message\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}FooterMessageType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Message"
            ],
            "title": "FooterType",
            "type": "object"
        },
        "xml_ns1_SeverityCodeType": {
            "description": "<p>Java class for SeverityCodeType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"SeverityCodeType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"Error\"/>\r\n     &lt;enumeration value=\"Warning\"/>\r\n     &lt;enumeration value=\"Information\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Error",
                "Warning",
                "Information"
            ],
            "title": "SeverityCodeType",
            "type": "string"
        },
      "xml_ns10_AttributeSetType": {
            "allOf": [
                {
                    "properties": {
                        "ReportedAttribute": {
                            "$ref": "#/definitions/xml_ns10_ReportedAttributeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        }
                    }
                }
            ],
            "description": "AttributeSetType defines the structure for a collection of reported metadata attributes.\r\n\r\n<p>Java class for AttributeSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeSetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ReportedAttribute\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic}ReportedAttributeType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ReportedAttribute"
            ],
            "title": "AttributeSetType",
            "type": "object"
        },
        "xml_ns10_MetadataSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "Name": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Report": {
                            "$ref": "#/definitions/xml_ns10_ReportType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "action": {
                            "$ref": "#/definitions/xml_ns4_ActionType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "publicationPeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "publicationYear": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "reportingBeginDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "reportingEndDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "setID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "structureRef": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "validFromDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "validToDate": {
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
            "description": "MetadataSetType describes the structure for a metadata set, which contains a collection of reported metadata against a set of values for a given full or partial target identifier, as described in a metadata structure definition. The metadata set may contain reported metadata for multiple report structures defined in a metadata structure definition.\r\n\r\n<p>Java class for MetadataSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataSetType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Report\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic}ReportType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attGroup ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetAttributeGroup\"/>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "structureRef",
                "Report"
            ],
            "title": "MetadataSetType",
            "type": "object"
        },
        "xml_ns10_ReferenceValueType": {
            "allOf": [
                {
                    "properties": {
                        "ConstraintContentReference": {
                            "$ref": "#/definitions/xml_ns4_AttachmentConstraintReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "DataKey": {
                            "$ref": "#/definitions/xml_ns4_DataKeyType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "DataSetReference": {
                            "$ref": "#/definitions/xml_ns4_SetReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "ObjectReference": {
                            "$ref": "#/definitions/xml_ns4_ObjectReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "ReportPeriod": {
                            "description": "",
                            "items": {
                                "type": "string"
                            },
                            "type": "array",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "id": {
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
            "description": "ReferenceValueType defines the structure of a target object reference value. A target reference value will either be a reference to an identifiable object, a data key, a reference to a data set, or a report period.\r\n\r\n<p>Java class for ReferenceValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReferenceValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;element name=\"ObjectReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectReferenceType\"/>\r\n         &lt;element name=\"DataKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyType\"/>\r\n         &lt;element name=\"DataSetReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\"/>\r\n         &lt;element name=\"ConstraintContentReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AttachmentConstraintReferenceType\"/>\r\n         &lt;element name=\"ReportPeriod\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "id"
            ],
            "title": "ReferenceValueType",
            "type": "object"
        },
        "xml_ns10_ReportType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "AttributeSet": {
                            "$ref": "#/definitions/xml_ns10_AttributeSetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns10_TargetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "id": {
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
            "description": "ReportType contains a set of report attributes and identifies a target objects] to which they apply.\r\n\r\n<p>Java class for ReportType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic}TargetType\"/>\r\n         &lt;element name=\"AttributeSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic}AttributeSetType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "id",
                "Target",
                "AttributeSet"
            ],
            "title": "ReportType",
            "type": "object"
        },
        "xml_ns10_ReportedAttributeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "AttributeSet": {
                            "$ref": "#/definitions/xml_ns10_AttributeSetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "StructuredText": {
                            "$ref": "#/definitions/xml_ns4_XHTMLType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Text": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "value": {
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
            "description": "ReportedAttributeType defines the structure for a reported metadata attribute. A value for the attribute can be supplied as either a single value, or multi-lingual text values (either structured or unstructured). An optional set of child metadata attributes is also available if the metadata attribute definition defines nested metadata attributes.\r\n\r\n<p>Java class for ReportedAttributeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportedAttributeType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Text\" maxOccurs=\"unbounded\"/>\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructuredText\" maxOccurs=\"unbounded\"/>\r\n         &lt;/choice>\r\n         &lt;element name=\"AttributeSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic}AttributeSetType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"value\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "id"
            ],
            "title": "ReportedAttributeType",
            "type": "object"
        },
        "xml_ns10_TargetType": {
            "allOf": [
                {
                    "properties": {
                        "ReferenceValue": {
                            "$ref": "#/definitions/xml_ns10_ReferenceValueType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic"
                            }
                        },
                        "id": {
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
            "description": "TargetType defines the structure of a target. It contains a set of target reference values which when taken together, identify the object or objects to which the reported metadata apply.\r\n\r\n<p>Java class for TargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TargetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ReferenceValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic}ReferenceValueType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "id",
                "ReferenceValue"
            ],
            "title": "TargetType",
            "type": "object"
        },
        "xml_ns3_BaseHeaderType": {
            "allOf": [
                {
                    "properties": {
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "DataSetAction": {
                            "$ref": "#/definitions/xml_ns4_ActionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "DataSetID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "EmbargoDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Extracted": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "ID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Name": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Prepared": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Receiver": {
                            "$ref": "#/definitions/xml_ns3_PartyType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "ReportingBegin": {
                            "description": "",
                            "items": {
                                "type": "string"
                            },
                            "type": "array",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "ReportingEnd": {
                            "description": "",
                            "items": {
                                "type": "string"
                            },
                            "type": "array",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Sender": {
                            "$ref": "#/definitions/xml_ns3_SenderType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Structure": {
                            "$ref": "#/definitions/xml_ns4_PayloadStructureType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Test": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        }
                    }
                }
            ],
            "description": "BaseHeaderType in an abstract base type that defines the basis for all message headers. Specific message formats will refine this\r\n\r\n<p>Java class for BaseHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"BaseHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PayloadStructureType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetAction\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ActionType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Extracted\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingBegin\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingEnd\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"EmbargoDate\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ID",
                "Prepared",
                "Sender"
            ],
            "title": "BaseHeaderType",
            "type": "object"
        },
        "xml_ns3_BasicHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseHeaderType"
                },
                {}
            ],
            "description": "BasicHeaderType defines the most basic header information used in simple message exchanges.\r\n\r\n<p>Java class for BasicHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"BasicHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BaseHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "BasicHeaderType",
            "type": "object"
        },
        "xml_ns3_BaseValueType": {
            "allOf": [
                {
                    "properties": {
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "value": {
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
            "description": "BaseValueType is a general structure which contains a reference to a data structure definition component and a value for that component. In this structure the reference to the component is optional to allow for usages where the actual reference might be provided in another context.\r\n\r\n<p>Java class for BaseValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"BaseValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n       &lt;attribute name=\"value\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}anySimpleType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "value"
            ],
            "title": "BaseValueType",
            "type": "object"
        },
        "xml_ns3_ComponentValueType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseValueType"
                },
                {}
            ],
            "description": "ComponentValueType is a derivation of the BaseValueType which requires that the component reference be provided. This is used when the identification of the component cannot be inferred from another context.\r\n\r\n<p>Java class for ComponentValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}BaseValueType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n       &lt;attribute name=\"value\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentValueType",
            "type": "object"
        },
        "xml_ns3_DataSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Attributes": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "Group": {
                            "$ref": "#/definitions/xml_ns3_GroupType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "Obs": {
                            "$ref": "#/definitions/xml_ns3_ObsOnlyType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "Series": {
                            "$ref": "#/definitions/xml_ns3_SeriesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "action": {
                            "$ref": "#/definitions/xml_ns4_ActionType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "publicationPeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "publicationYear": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "reportingBeginDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "reportingEndDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "setID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "structureRef": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "validFromDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "validToDate": {
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
            "description": "DataSetType defines the structure of the generic data set. Data is organised into either a collection of series (grouped observations) or a collection of un-grouped observations. The organisation used is dependent on the structure specification in the header of the data message (which is referenced via the structureRef attribute). The structure specification states which data occurs at the observation level. If this dimension is \"AllDimensions\" then the data set must consist of a collection of un-grouped observations; otherwise the data set will contain a collection of series with the observations in the series disambiguated by the specified dimension at the observation level. This data set is capable of containing data (observed values) and/or documentation (attribute values). It is assumed that each series or un-grouped observation will be distinct in its purpose. For example, if series contains both data and documentation, it assumed that each series will have a unique key. If the series contains only data or only documentation, then it is possible that another series with the same key might exist, but with not with the same purpose (i.e. to provide data or documentation) as the first series.\r\n\r\n<p>Java class for DataSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSetType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Group\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}GroupType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Series\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}SeriesType\" maxOccurs=\"unbounded\"/>\r\n           &lt;element name=\"Obs\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ObsOnlyType\" maxOccurs=\"unbounded\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n       &lt;attGroup ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetAttributeGroup\"/>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "structureRef"
            ],
            "title": "DataSetType",
            "type": "object"
        },
        "xml_ns3_GroupType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Attributes": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "GroupKey": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "type": {
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
            "description": "GroupType defines a structure which is used to communicate attribute values for a group defined in a data structure definition. The group can consist of either a subset of the dimensions defined by the data structure definition, or an association to an attachment constraint, which in turn defines key sets to which attributes can be attached. In the case that the group is based on an attachment constraint, only the identification of group is provided. It is expected that a system which is processing this will relate that identifier to the key sets defined in the constraint and apply the values provided for the attributes appropriately.\r\n\r\n<p>Java class for GroupType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"GroupKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"type\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "type",
                "Attributes"
            ],
            "title": "GroupType",
            "type": "object"
        },
        "xml_ns3_ObsOnlyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Attributes": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "ObsKey": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "ObsValue": {
                            "$ref": "#/definitions/xml_ns3_ObsValueType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        }
                    }
                }
            ],
            "description": "ObsOnlyType defines the structure for an un-grouped observation. Unlike a group observation, an un-grouped must provided a full set of values for every dimension declared in the data structure definition. The observation can contain an observed value and/or a collection of attribute values.\r\n\r\n<p>Java class for ObsOnlyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ObsOnlyType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ObsKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\"/>\r\n         &lt;element name=\"ObsValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ObsValueType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ObsKey"
            ],
            "title": "ObsOnlyType",
            "type": "object"
        },
        "xml_ns3_ObsType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Attributes": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "ObsDimension": {
                            "$ref": "#/definitions/xml_ns3_BaseValueType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "ObsValue": {
                            "$ref": "#/definitions/xml_ns3_ObsValueType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        }
                    }
                }
            ],
            "description": "ObsType defines the structure of a grouped observation. The observation must be provided a value for the dimension which is declared to be at the observation level for this data set. This dimension value should disambiguate the observation within the series in which it is defined (i.e. there should not be another observation with the same dimension value). The observation can contain an observed value and/or attribute values.\r\n\r\n<p>Java class for ObsType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ObsType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ObsDimension\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}BaseValueType\"/>\r\n         &lt;element name=\"ObsValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ObsValueType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ObsDimension"
            ],
            "title": "ObsType",
            "type": "object"
        },
        "xml_ns3_ObsValueType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseValueType"
                },
                {}
            ],
            "description": "ObsValueType is a derivation of the BaseValueType which is used to provide an observation value. Since an observation value is always associated with the data structure definition primary measure, and the identifier for the primary measure is fixed, the component reference for this structure is fixed. Note that this means that it is not necessary to provide a value in an instance as the fixed value will be provided in the post validation information set.\r\n\r\n<p>Java class for ObsValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ObsValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}BaseValueType\">\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"OBS_VALUE\" />\r\n       &lt;attribute name=\"value\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ObsValueType",
            "type": "object"
        },
        "xml_ns3_SeriesType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Attributes": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "Obs": {
                            "$ref": "#/definitions/xml_ns3_ObsType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        },
                        "SeriesKey": {
                            "$ref": "#/definitions/xml_ns3_ValuesType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        }
                    }
                }
            ],
            "description": "SeriesType defines a structure which is used to group a collection of observations which have a key in common. The key for a series is every dimension defined in the data structure definition, save the dimension declared to be at the observation level for this data set. In addition to observations, values can be provided for attributes which are associated with the dimensions which make up this series key (so long as the attributes do not specify a group attachment or also have an relationship with the observation dimension). It is possible for the series to contain only observations or only attribute values, or both.\r\n\r\n<p>Java class for SeriesType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SeriesType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"SeriesKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Obs\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ObsType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "SeriesKey"
            ],
            "title": "SeriesType",
            "type": "object"
        },
        "xml_ns3_TimeSeriesDataSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_DataSetType"
                },
                {}
            ],
            "description": "TimeSeriesDataSetType is a derivation of the base DataSetType of the generic format the restricts the data set to only allow for grouped observations where the dimension at the observation level is the time dimension of the data structure definition. This means that unlike the base data set structure, there can be no un-grouped observations. Because this derivation is achieved using restriction, data sets conforming to this type will inherently conform to the base data set structure as well. In fact, data structured here will be identical to data in the base data set when the time dimension is the observation dimension. This means that the data contained in this structure can be processed in exactly the same manner as the base structure.\r\n\r\n<p>Java class for TimeSeriesDataSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeSeriesDataSetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}DataSetType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Group\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}GroupType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Series\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}TimeSeriesType\" maxOccurs=\"unbounded\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeSeriesDataSetType",
            "type": "object"
        },
        "xml_ns3_TimeSeriesObsType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_ObsType"
                },
                {}
            ],
            "description": "TimeSeriesObsType defines the structure of a time series observation. The observation must be provided a value for the time dimension. This time value should disambiguate the observation within the series in which it is defined (i.e. there should not be another observation with the same time value). The observation can contain an observed value and/or attribute values.\r\n\r\n<p>Java class for TimeSeriesObsType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeSeriesObsType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ObsType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ObsDimension\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}TimeValueType\"/>\r\n         &lt;element name=\"ObsValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ObsValueType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeSeriesObsType",
            "type": "object"
        },
        "xml_ns3_TimeSeriesType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_SeriesType"
                },
                {}
            ],
            "description": "TimeSeriesType defines a structure which is used to group a collection of observations which have a key in common, organised by time. The key for a series is every dimension defined in the data structure definition, save the time dimension. In addition to observations, values can be provided for attributes which are associated with the dimensions which make up this series key (so long as the attributes do not specify a group attachment or also have an relationship with the time dimension). It is possible for the series to contain only observations or only attribute values, or both.\r\n\r\n<p>Java class for TimeSeriesType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeSeriesType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}SeriesType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"SeriesKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\"/>\r\n         &lt;element name=\"Attributes\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ValuesType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Obs\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}TimeSeriesObsType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeSeriesType",
            "type": "object"
        },
        "xml_ns3_TimeValueType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseValueType"
                },
                {}
            ],
            "description": "TimeValueType is a derivation of the BaseValueType which is used to provide a value for the time dimension. Since the identifier for the time dimension is fixed, the component reference for this structure is fixed. Note that this means that it is not necessary to provide a value in an instance as the fixed value will be provided in the post validation information set.\r\n\r\n<p>Java class for TimeValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}BaseValueType\">\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"TIME_PERIOD\" />\r\n       &lt;attribute name=\"value\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeValueType",
            "type": "object"
        },
        "xml_ns3_ValuesType": {
            "allOf": [
                {
                    "properties": {
                        "Value": {
                            "$ref": "#/definitions/xml_ns3_ComponentValueType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic"
                            }
                        }
                    }
                }
            ],
            "description": "ValuesType is a general structure which contains a collection of data structure definition component values. This type is used to provide both key and attribute collection values.\r\n\r\n<p>Java class for ValuesType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ValuesType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}ComponentValueType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Value"
            ],
            "title": "ValuesType",
            "type": "object"
        },
        "xml_ns3_CategorisationQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "CategorisationQueryType defines the structure of a categorisation query message.\r\n\r\n<p>Java class for CategorisationQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorisationQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}CategorisationQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorisationQueryType",
            "type": "object"
        },
        "xml_ns3_CategorySchemeQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "CategorySchemeQueryType defines the structure of a category scheme query message.\r\n\r\n<p>Java class for CategorySchemeQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorySchemeQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}CategorySchemeQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorySchemeQueryType",
            "type": "object"
        },
        "xml_ns3_CodelistQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "CodelistQueryType defines the structure of a codelist query message.\r\n\r\n<p>Java class for CodelistQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodelistQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}CodelistQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodelistQueryType",
            "type": "object"
        },
        "xml_ns3_ConceptSchemeQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "ConceptSchemeQueryType defines the structure of a concept scheme query message.\r\n\r\n<p>Java class for ConceptSchemeQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptSchemeQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}ConceptSchemeQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptSchemeQueryType",
            "type": "object"
        },
        "xml_ns3_ConstraintQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "ConstraintQueryType defines the structure of a constraint query message.\r\n\r\n<p>Java class for ConstraintQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}ConstraintQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintQueryType",
            "type": "object"
        },
        "xml_ns3_ContactType": {
            "allOf": [
                {
                    "properties": {
                        "Department": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Email": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Fax": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Name": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Role": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Telephone": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "URI": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "X400": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        }
                    }
                }
            ],
            "description": "ContactType provides defines the contact information about a party.\r\n\r\n<p>Java class for ContactType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContactType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Department\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Role\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element name=\"Telephone\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n           &lt;element name=\"Fax\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n           &lt;element name=\"X400\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n           &lt;element name=\"URI\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\"/>\r\n           &lt;element name=\"Email\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContactType",
            "type": "object"
        },
        "xml_ns3_DataQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "DataQueryType defines the structure of a data query message.\r\n\r\n<p>Java class for DataQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}DataQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataQueryType",
            "type": "object"
        },
        "xml_ns3_DataSchemaQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "DataSchemaQueryType defines the structure of a data schema query message.\r\n\r\n<p>Java class for DataSchemaQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSchemaQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}DataSchemaQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataSchemaQueryType",
            "type": "object"
        },
        "xml_ns3_DataStructureQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "KeyFamilyQueryType defines the structure of a data structure query message.\r\n\r\n<p>Java class for DataStructureQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataStructureQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}DataStructureQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataStructureQueryType",
            "type": "object"
        },
        "xml_ns3_DataflowQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "DataflowQueryType defines the structure of a dataflow query message.\r\n\r\n<p>Java class for DataflowQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataflowQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}DataflowQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataflowQueryType",
            "type": "object"
        },
        "xml_ns3_GenericDataHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseHeaderType"
                },
                {}
            ],
            "description": "GenericDataHeaderType defines the header structure for a generic data message.\r\n\r\n<p>Java class for GenericDataHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericDataHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BaseHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}GenericDataStructureType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetAction\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ActionType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Extracted\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingBegin\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingEnd\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"EmbargoDate\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericDataHeaderType",
            "type": "object"
        },
        "xml_ns3_GenericDataQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_DataQueryType"
                },
                {}
            ],
            "description": "DataQueryType defines the structure of a generic data query message.\r\n\r\n<p>Java class for GenericDataQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericDataQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}DataQueryType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}GenericDataQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericDataQueryType",
            "type": "object"
        },
        "xml_ns3_GenericDataType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "GenericDataType defines the contents of a generic data message.\r\n\r\n<p>Java class for GenericDataType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericDataType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}GenericDataHeaderType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}DataSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericDataType",
            "type": "object"
        },
        "xml_ns3_GenericMetadataHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseHeaderType"
                },
                {}
            ],
            "description": "GenericMetadataHeaderType defines the header format for generic reference metadata.\r\n\r\n<p>Java class for GenericMetadataHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericMetadataHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BaseHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}GenericMetadataStructureType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetAction\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ActionType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Extracted\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericMetadataHeaderType",
            "type": "object"
        },
        "xml_ns3_GenericMetadataType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "GenericMetadataType defines the contents of a generic metadata message.\r\n\r\n<p>Java class for GenericMetadataType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericMetadataType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}GenericMetadataHeaderType\"/>\r\n         &lt;element name=\"MetadataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/generic}MetadataSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericMetadataType",
            "type": "object"
        },
        "xml_ns3_GenericTimeSeriesDataHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_GenericDataHeaderType"
                },
                {}
            ],
            "description": "GenericTimeSeriesDataHeaderType defines the header structure for a time series only generic data message.\r\n\r\n<p>Java class for GenericTimeSeriesDataHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericTimeSeriesDataHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}GenericDataHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}GenericTimeSeriesDataStructureType\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetAction\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ActionType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Extracted\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingBegin\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingEnd\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"EmbargoDate\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericTimeSeriesDataHeaderType",
            "type": "object"
        },
        "xml_ns3_GenericTimeSeriesDataQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_GenericDataQueryType"
                },
                {}
            ],
            "description": "GenericTimeSeriesDataQueryType defines the structure of a time series generic data query message.\r\n\r\n<p>Java class for GenericTimeSeriesDataQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericTimeSeriesDataQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}GenericDataQueryType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}GenericTimeSeriesDataQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericTimeSeriesDataQueryType",
            "type": "object"
        },
        "xml_ns3_GenericTimeSeriesDataType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_GenericDataType"
                },
                {}
            ],
            "description": "GenericTimeSeriesDataType defines the structure of the generic time series data message.\r\n\r\n<p>Java class for GenericTimeSeriesDataType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GenericTimeSeriesDataType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}GenericDataType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}GenericTimeSeriesDataHeaderType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/generic}TimeSeriesDataSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GenericTimeSeriesDataType",
            "type": "object"
        },
        "xml_ns3_HierarchicalCodelistQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "HierarchicalCodelistQueryType defines the structure of a hierarchical codelist query message.\r\n\r\n<p>Java class for HierarchicalCodelistQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodelistQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}HierarchicalCodelistQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodelistQueryType",
            "type": "object"
        },
        "xml_ns3_MessageType": {
            "allOf": [
                {
                    "properties": {
                        "Footer": {
                            "$ref": "#/definitions/xml_ns7_FooterType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer"
                            }
                        },
                        "Header": {
                            "$ref": "#/definitions/xml_ns3_BaseHeaderType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        }
                    }
                }
            ],
            "description": "MessageType is an abstract type which is used by all of the messages, to allow inheritance of common features. Every message consists of a mandatory header, followed by optional payload (which may occur multiple times), and finally an optional footer section for conveying error, warning, and informational messages.\r\n\r\n<p>Java class for MessageType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MessageType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BaseHeaderType\"/>\r\n         &lt;any namespace='http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message' maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Header"
            ],
            "title": "MessageType",
            "type": "object"
        },
        "xml_ns3_MetadataQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "MetadataQueryType defines the structure of a reference metadata query message.\r\n\r\n<p>Java class for MetadataQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}MetadataQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataQueryType",
            "type": "object"
        },
        "xml_ns3_MetadataSchemaQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "MetadataSchemaQueryType defines the structure of a metadata schema query message.\r\n\r\n<p>Java class for MetadataSchemaQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataSchemaQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}MetadataSchemaQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataSchemaQueryType",
            "type": "object"
        },
        "xml_ns3_MetadataStructureQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "MetadataStructureQueryType defines the structure of a metadata structure query message.\r\n\r\n<p>Java class for MetadataStructureQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataStructureQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}MetadataStructureQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataStructureQueryType",
            "type": "object"
        },
        "xml_ns3_MetadataflowQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "MetadataflowQueryType defines the structure of a metadata flow query message.\r\n\r\n<p>Java class for MetadataflowQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataflowQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}MetadataflowQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataflowQueryType",
            "type": "object"
        },
        "xml_ns3_NotifyRegistryEventType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "NotifyRegistryEventType defines the structure of a registry notification document.\r\n\r\n<p>Java class for NotifyRegistryEventType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"NotifyRegistryEventType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"NotifyRegistryEvent\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}NotifyRegistryEventType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "NotifyRegistryEventType",
            "type": "object"
        },
        "xml_ns3_OrganisationSchemeQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "OrganisationSchemeQueryType defines the structure of an organisation scheme query message.\r\n\r\n<p>Java class for OrganisationSchemeQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}OrganisationSchemeQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeQueryType",
            "type": "object"
        },
        "xml_ns3_PartyType": {
            "allOf": [
                {
                    "properties": {
                        "Contact": {
                            "$ref": "#/definitions/xml_ns3_ContactType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        },
                        "Name": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "id": {
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
            "description": "PartyType defines the information which is sent about various parties such as senders and receivers of messages.\r\n\r\n<p>Java class for PartyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"PartyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Contact\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}ContactType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "id"
            ],
            "title": "PartyType",
            "type": "object"
        },
        "xml_ns3_ProcessQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "CategorizationQueryType defines the structure of a categorization query message.\r\n\r\n<p>Java class for ProcessQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}ProcessQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessQueryType",
            "type": "object"
        },
        "xml_ns3_ProvisionAgreementQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "ProvisionAgreementQueryType defines the structure of a provision agreement query message.\r\n\r\n<p>Java class for ProvisionAgreementQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProvisionAgreementQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}ProvisionAgreementQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProvisionAgreementQueryType",
            "type": "object"
        },
        "xml_ns3_QueryRegistrationRequestType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "QueryRegistrationRequestType defines the structure of a registry query registration request document.\r\n\r\n<p>Java class for QueryRegistrationRequestType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"QueryRegistrationRequestType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"QueryRegistrationRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QueryRegistrationRequestType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "QueryRegistrationRequestType",
            "type": "object"
        },
        "xml_ns3_QueryRegistrationResponseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "SubmitRegistrationRequestType defines the structure of a registry submit registration response document.\r\n\r\n<p>Java class for QueryRegistrationResponseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"QueryRegistrationResponseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"QueryRegistrationResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QueryRegistrationResponseType\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "QueryRegistrationResponseType",
            "type": "object"
        },
        "xml_ns3_QuerySubscriptionRequestType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "QuerySubscriptionRequestType defines the structure of a registry query subscription request document.\r\n\r\n<p>Java class for QuerySubscriptionRequestType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"QuerySubscriptionRequestType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"QuerySubscriptionRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QuerySubscriptionRequestType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "QuerySubscriptionRequestType",
            "type": "object"
        },
        "xml_ns3_QuerySubscriptionResponseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "QuerySubscriptionResponseType defines the structure of a registry query subscription response document.\r\n\r\n<p>Java class for QuerySubscriptionResponseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"QuerySubscriptionResponseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"QuerySubscriptionResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QuerySubscriptionResponseType\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "QuerySubscriptionResponseType",
            "type": "object"
        },
        "xml_ns3_RegistryInterfaceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "This is a type which describes a structure for holding all of the various dedicated registry interface message types.\r\n\r\n<p>Java class for RegistryInterfaceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"RegistryInterfaceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"SubmitRegistrationsRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitRegistrationsRequestType\"/>\r\n           &lt;element name=\"SubmitRegistrationsResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitRegistrationsResponseType\"/>\r\n           &lt;element name=\"QueryRegistrationRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QueryRegistrationRequestType\"/>\r\n           &lt;element name=\"QueryRegistrationResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QueryRegistrationResponseType\"/>\r\n           &lt;element name=\"SubmitStructureRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitStructureRequestType\"/>\r\n           &lt;element name=\"SubmitStructureResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitStructureResponseType\"/>\r\n           &lt;element name=\"SubmitSubscriptionsRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitSubscriptionsRequestType\"/>\r\n           &lt;element name=\"SubmitSubscriptionsResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitSubscriptionsResponseType\"/>\r\n           &lt;element name=\"QuerySubscriptionRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QuerySubscriptionRequestType\"/>\r\n           &lt;element name=\"QuerySubscriptionResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}QuerySubscriptionResponseType\"/>\r\n           &lt;element name=\"NotifyRegistryEvent\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}NotifyRegistryEventType\"/>\r\n         &lt;/choice>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "RegistryInterfaceType",
            "type": "object"
        },
        "xml_ns3_ReportingTaxonomyQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "ReportingTaxonomyQueryType defines the structure of a reporting taxonomy query message.\r\n\r\n<p>Java class for ReportingTaxonomyQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingTaxonomyQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}ReportingTaxonomyQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingTaxonomyQueryType",
            "type": "object"
        },
        "xml_ns3_SenderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_PartyType"
                },
                {
                    "properties": {
                        "Timezone": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message"
                            }
                        }
                    }
                }
            ],
            "description": "SenderType extends the basic party structure to add an optional time zone declaration.\r\n\r\n<p>Java class for SenderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SenderType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Timezone\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimezoneType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SenderType",
            "type": "object"
        },
        "xml_ns3_StructureHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseHeaderType"
                },
                {}
            ],
            "description": "StructureHeaderType defines the structure for structural metadata messages.\r\n\r\n<p>Java class for StructureHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BaseHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureHeaderType",
            "type": "object"
        },
        "xml_ns3_StructureSetQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "StructureSetQueryType defines the structure of a structure set query message.\r\n\r\n<p>Java class for StructureSetQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSetQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}StructureSetQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSetQueryType",
            "type": "object"
        },
        "xml_ns3_StructureSpecificDataHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseHeaderType"
                },
                {}
            ],
            "description": "StructureSpecificDataHeaderType defines the header structure for a structure specific data message.\r\n\r\n<p>Java class for StructureSpecificDataHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSpecificDataHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BaseHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureSpecificDataStructureType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetAction\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ActionType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Extracted\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingBegin\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingEnd\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"EmbargoDate\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSpecificDataHeaderType",
            "type": "object"
        },
        "xml_ns3_StructureSpecificDataType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "StructureSpecificDataType defines the structure of the structure specific data message. Note that the data set payload type is abstract, and therefore it will have to be assigned a type in an instance. This type must be derived from the base type referenced. This base type defines a general structure which can be followed to allow for generic processing of the data even if the exact details of the data structure specific format are not known.\r\n\r\n<p>Java class for StructureSpecificDataType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSpecificDataType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}StructureSpecificDataHeaderType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}DataSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSpecificDataType",
            "type": "object"
        },
        "xml_ns3_StructureSpecificMetadataHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_BaseHeaderType"
                },
                {}
            ],
            "description": "StructureSpecificMetadataHeaderType defines the header format for metadata structure definition specific reference metadata messages.\r\n\r\n<p>Java class for StructureSpecificMetadataHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSpecificMetadataHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BaseHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureSpecificMetadataStructureType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetAction\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ActionType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Extracted\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSpecificMetadataHeaderType",
            "type": "object"
        },
        "xml_ns3_StructureSpecificMetadataType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "StructureSpecificMetadataType defines the structure of a structure specific metadata message. Note that the metadata set payload type is abstract, and therefore it will have to be assigned a type in an instance. This type must be derived from the base type referenced. This base type defines a general structure which can be followed to allow for generic processing of the data even if the exact details of the data structure specific format are not known.\r\n\r\n<p>Java class for StructureSpecificMetadataType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSpecificMetadataType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}StructureSpecificMetadataHeaderType\"/>\r\n         &lt;element name=\"MetadataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific}MetadataSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSpecificMetadataType",
            "type": "object"
        },
        "xml_ns3_StructureSpecificTimeSeriesDataHeaderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_StructureSpecificDataHeaderType"
                },
                {}
            ],
            "description": "StructureSpecificTimeSeriesDataHeaderType defines the header structure for a time series only structure specific data message.\r\n\r\n<p>Java class for StructureSpecificTimeSeriesDataHeaderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSpecificTimeSeriesDataHeaderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}StructureSpecificDataHeaderType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n         &lt;element name=\"Test\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\"/>\r\n         &lt;element name=\"Prepared\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}HeaderTimeType\"/>\r\n         &lt;element name=\"Sender\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}SenderType\"/>\r\n         &lt;element name=\"Receiver\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}PartyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureSpecificDataTimeSeriesStructureType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetAction\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ActionType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataSetID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Extracted\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingBegin\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReportingEnd\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"EmbargoDate\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSpecificTimeSeriesDataHeaderType",
            "type": "object"
        },
        "xml_ns3_StructureSpecificTimeSeriesDataQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_DataQueryType"
                },
                {}
            ],
            "description": "StructureSpecificTimeSeriesDataQueryType defines the structure of a time series generic data query message.\r\n\r\n<p>Java class for StructureSpecificTimeSeriesDataQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSpecificTimeSeriesDataQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}DataQueryType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}TimeSeriesDataQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSpecificTimeSeriesDataQueryType",
            "type": "object"
        },
        "xml_ns3_StructureSpecificTimeSeriesDataType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_StructureSpecificDataType"
                },
                {}
            ],
            "description": "StructureSpecificTimeSeriesDataType defines the structure of the structure specific time series data message.\r\n\r\n<p>Java class for StructureSpecificTimeSeriesDataType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSpecificTimeSeriesDataType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}StructureSpecificDataType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}StructureSpecificTimeSeriesDataHeaderType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}TimeSeriesDataSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSpecificTimeSeriesDataType",
            "type": "object"
        },
        "xml_ns3_StructureType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "StructureType defines the contents of a structure message. The payload is optional since this message may be returned from a web service with only information in the footer.\r\n\r\n<p>Java class for StructureType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}StructureHeaderType\"/>\r\n         &lt;element name=\"Structures\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructuresType\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureType",
            "type": "object"
        },
        "xml_ns3_StructuresQueryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_MessageType"
                },
                {}
            ],
            "description": "StructuresQueryType defines the structure of a structures query message.\r\n\r\n<p>Java class for StructuresQueryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructuresQueryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}MessageType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"Query\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}StructuresQueryType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructuresQueryType",
            "type": "object"
        },
        "xml_ns3_SubmitRegistrationsRequestType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "SubmitRegistrationsRequestType defines the structure of a registry submit registration requests document.\r\n\r\n<p>Java class for SubmitRegistrationsRequestType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SubmitRegistrationsRequestType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"SubmitRegistrationsRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitRegistrationsRequestType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SubmitRegistrationsRequestType",
            "type": "object"
        },
        "xml_ns3_SubmitRegistrationsResponseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "SubmitRegistrationsResponseType defines the structure of a registry submit registration response document.\r\n\r\n<p>Java class for SubmitRegistrationsResponseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SubmitRegistrationsResponseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"SubmitRegistrationsResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitRegistrationsResponseType\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SubmitRegistrationsResponseType",
            "type": "object"
        },
        "xml_ns3_SubmitStructureRequestType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "SubmitStructureRequestType defines the structure of a registry submit structure request document.\r\n\r\n<p>Java class for SubmitStructureRequestType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SubmitStructureRequestType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"SubmitStructureRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitStructureRequestType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SubmitStructureRequestType",
            "type": "object"
        },
        "xml_ns3_SubmitStructureResponseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "SubmitStructureResponseType defines the structure of a registry submit registration response document.\r\n\r\n<p>Java class for SubmitStructureResponseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SubmitStructureResponseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"SubmitStructureResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitStructureResponseType\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SubmitStructureResponseType",
            "type": "object"
        },
        "xml_ns3_SubmitSubscriptionsRequestType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "SubmitSubscriptionsRequestType defines the structure of a registry submit subscription request document.\r\n\r\n<p>Java class for SubmitSubscriptionsRequestType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SubmitSubscriptionsRequestType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"SubmitSubscriptionsRequest\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitSubscriptionsRequestType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SubmitSubscriptionsRequestType",
            "type": "object"
        },
        "xml_ns3_SubmitSubscriptionsResponseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns3_RegistryInterfaceType"
                },
                {}
            ],
            "description": "SubmitSubscriptionsResponseType defines the structure of a registry submit subscription response document.\r\n\r\n<p>Java class for SubmitSubscriptionsResponseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SubmitSubscriptionsResponseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}RegistryInterfaceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Header\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message}BasicHeaderType\"/>\r\n         &lt;element name=\"SubmitSubscriptionsResponse\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/registry}SubmitSubscriptionsResponseType\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}Footer\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SubmitSubscriptionsResponseType",
            "type": "object"
        },
         <jsp:include page="definitions-ns4.jsp" />,
        "xml_ns5_AgencySchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationSchemeType"
                },
                {}
            ],
            "description": "AgencySchemeType defines a specific type of organisation scheme which contains only maintenance agencies. The agency scheme maintained by a particular maintenance agency is always provided a fixed identifier and version, and is never final. Therefore, agencies can be added or removed without have to version the scheme. Agencies schemes have no hierarchy, meaning that no agency may define a relationship with another agency in the scheme. In fact, the actual parent agency for an agency in a scheme is the agency which defines the scheme.\r\n\r\n<p>Java class for AgencySchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AgencySchemeType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Agency\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"AGENCIES\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" fixed=\"1.0\" />\r\n       &lt;attribute name=\"isFinal\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AgencySchemeType",
            "type": "object"
        },
        "xml_ns5_AgencyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationType"
                },
                {}
            ],
            "description": "AgencyType defines the structure of an agency description. The contacts defined for the organisation are specific to the agency role the organisation is serving.\r\n\r\n<p>Java class for AgencyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AgencyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Contact\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ContactType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AgencyType",
            "type": "object"
        },
        "xml_ns5_AttachmentConstraintAttachmentType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ConstraintAttachmentType"
                },
                {}
            ],
            "description": "AttachmentConstraintAttachmentType defines the structure for specifying the object to which an attachment constraints applies.\r\n\r\n<p>Java class for AttachmentConstraintAttachmentType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttachmentConstraintAttachmentType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintAttachmentType\">\r\n       &lt;choice>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"MetadataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"SimpleDataSource\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" maxOccurs=\"unbounded\"/>\r\n         &lt;choice>\r\n           &lt;element name=\"DataStructure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataStructureReferenceType\" maxOccurs=\"unbounded\"/>\r\n           &lt;element name=\"MetadataStructure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataStructureReferenceType\" maxOccurs=\"unbounded\"/>\r\n           &lt;element name=\"Dataflow\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataflowReferenceType\" maxOccurs=\"unbounded\"/>\r\n           &lt;element name=\"Metadataflow\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataflowReferenceType\" maxOccurs=\"unbounded\"/>\r\n           &lt;element name=\"ProvisionAgreement\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ProvisionAgreementReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;/choice>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttachmentConstraintAttachmentType",
            "type": "object"
        },
        "xml_ns5_AttachmentConstraintType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ConstraintType"
                },
                {}
            ],
            "description": "AttachmentConstraintType describes the details of an attachment constraint by defining the data or metadata key sets or component regions that attributes or reference metadata may be attached in the constraint attachment objects.\r\n\r\n<p>Java class for AttachmentConstraintType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttachmentConstraintType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConstraintAttachment\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}AttachmentConstraintAttachmentType\" minOccurs=\"0\"/>\r\n         &lt;choice maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element name=\"DataKeySet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataKeySetType\"/>\r\n           &lt;element name=\"MetadataKeySet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataKeySetType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttachmentConstraintType",
            "type": "object"
        },
        "xml_ns5_AttributeBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentType"
                },
                {}
            ],
            "description": "AttributeBaseType is an abstract base type that serves as the basis for the AttributeType. It restricts the text format base to a text format valid  for data components (that does not allow for XHTML representation). The local representation is restricted to the values defined in codelist. The concept role is restricted to the values valid for a data attribute.\r\n\r\n<p>Java class for AttributeBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleDataStructureRepresentationType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeBaseType",
            "type": "object"
        },
        "xml_ns5_AttributeListBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentListType"
                },
                {}
            ],
            "description": "AttributeListBaseType is an abstract base type used as the basis for the AttributeListType.\r\n\r\n<p>Java class for AttributeListBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeListBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentListType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"AttributeDescriptor\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeListBaseType",
            "type": "object"
        },
        "xml_ns5_AttributeListType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_AttributeListBaseType"
                },
                {
                    "properties": {
                        "ReportingYearStartDay": {
                            "$ref": "#/definitions/xml_ns5_ReportingYearStartDayType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "AttributeListType describes the attribute descriptor for the data structure definition.\r\n\r\n<p>Java class for AttributeListType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeListType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}AttributeListBaseType\">\r\n       &lt;choice maxOccurs=\"unbounded\">\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Attribute\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingYearStartDay\"/>\r\n       &lt;/choice>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeListType",
            "type": "object"
        },
        "xml_ns5_AttributeRelationshipType": {
            "allOf": [
                {
                    "properties": {
                        "AttachmentGroup": {
                            "$ref": "#/definitions/xml_ns4_LocalGroupKeyDescriptorReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Dimension": {
                            "$ref": "#/definitions/xml_ns4_LocalDimensionReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Group": {
                            "$ref": "#/definitions/xml_ns4_LocalGroupKeyDescriptorReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "None": {
                            "$ref": "#/definitions/xml_ns4_EmptyType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "PrimaryMeasure": {
                            "$ref": "#/definitions/xml_ns4_LocalPrimaryMeasureReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "AttributeRelationshipType defines the structure for stating the relationship between an attribute and other data structure definition components.\r\n\r\n<p>Java class for AttributeRelationshipType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeRelationshipType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;element name=\"None\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}EmptyType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"Dimension\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalDimensionReferenceType\" maxOccurs=\"unbounded\"/>\r\n           &lt;element name=\"AttachmentGroup\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalGroupKeyDescriptorReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"Group\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalGroupKeyDescriptorReferenceType\"/>\r\n         &lt;element name=\"PrimaryMeasure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalPrimaryMeasureReferenceType\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeRelationshipType",
            "type": "object"
        },
        "xml_ns5_AttributeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_AttributeBaseType"
                },
                {
                    "properties": {
                        "AttributeRelationship": {
                            "$ref": "#/definitions/xml_ns5_AttributeRelationshipType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ConceptRole": {
                            "$ref": "#/definitions/xml_ns4_ConceptReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "assignmentStatus": {
                            "$ref": "#/definitions/xml_ns5_UsageStatusType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "AttributeType describes the structure of a data attribute, which is defined as a characteristic of an object or entity. The attribute takes its semantic, and in some cases it representation, from its concept identity. An attribute can be coded by referencing a code list from its coded local representation. It can also specify its text format, which is used as the representation of the attribute if a coded representation is not defined. Neither the coded or uncoded representation are necessary, since the attribute may take these from the referenced concept. An attribute specifies its relationship with other data structure components and is given an assignment status. These two properties dictate where in a data message the attribute will be attached, and whether or not the attribute will be required to be given a value. A set of roles defined in concept scheme can be assigned to the attribute.\r\n\r\n<p>Java class for AttributeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}AttributeBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ConceptRole\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"AttributeRelationship\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}AttributeRelationshipType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"assignmentStatus\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}UsageStatusType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "assignmentStatus",
                "AttributeRelationship"
            ],
            "title": "AttributeType",
            "type": "object"
        },
        "xml_ns5_BaseDimensionBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentType"
                },
                {}
            ],
            "description": "BaseDimensionBaseType is an abstract base type that serves as the basis for any dimension. It restricts the text format base to a text format valid  for data components (that does not allow for XHTML representation).\r\n\r\n<p>Java class for BaseDimensionBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"BaseDimensionBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataStructureRepresentationType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "BaseDimensionBaseType",
            "type": "object"
        },
        "xml_ns5_BaseDimensionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_BaseDimensionBaseType"
                },
                {
                    "properties": {
                        "ConceptRole": {
                            "$ref": "#/definitions/xml_ns4_ConceptReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "position": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "type": {
                            "$ref": "#/definitions/xml_ns4_DimensionTypeType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "BaseDimensionType is an abstract base type which defines the basic structure of all dimensions.\r\n\r\n<p>Java class for BaseDimensionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"BaseDimensionType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BaseDimensionBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ConceptRole\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"position\" type=\"{http://www.w3.org/2001/XMLSchema}int\" />\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "BaseDimensionType",
            "type": "object"
        },
        "xml_ns5_BaseOrganisationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemType"
                },
                {}
            ],
            "description": "BaseOrganisationType is an abstract base type the forms the basis for the OrganisationType.\r\n\r\n<p>Java class for BaseOrganisationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"BaseOrganisationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Parent\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceBaseType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "BaseOrganisationType",
            "type": "object"
        },
        "xml_ns5_BasicComponentTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TextFormatType"
                },
                {}
            ],
            "description": "BasicComponentTextFormatType is a restricted version of the TextFormatType that restricts the text type to the representations allowed for all components except for target objects.\r\n\r\n<p>Java class for BasicComponentTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"BasicComponentTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}BasicComponentDataType\" default=\"String\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "BasicComponentTextFormatType",
            "type": "object"
        },
        "xml_ns5_CategorisationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {
                    "properties": {
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_ObjectReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns4_CategoryReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "CategorisationType is defines the structure for a categorisation. A source object is referenced via an object reference and the target category is referenced via the target category.\r\n\r\n<p>Java class for CategorisationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorisationType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence minOccurs=\"0\">\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CategoryReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorisationType",
            "type": "object"
        },
        "xml_ns5_CategoryMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemAssociationType"
                },
                {}
            ],
            "description": "CategoryMapType defines the structure for mapping two categories. A local reference is provided both the source and target category.\r\n\r\n<p>Java class for CategoryMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategoryMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemAssociationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCategoryReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCategoryReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategoryMapType",
            "type": "object"
        },
        "xml_ns5_CategorySchemeMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeMapType"
                },
                {}
            ],
            "description": "CategorySchemeMapType defines the structure of a map which identifies relationships between categories in different category schemes.\r\n\r\n<p>Java class for CategorySchemeMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorySchemeMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeMapType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CategorySchemeReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CategorySchemeReferenceType\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CategoryMap\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorySchemeMapType",
            "type": "object"
        },
        "xml_ns5_CategorySchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeType"
                },
                {}
            ],
            "description": "CategorySchemeType describes the structure of a category scheme. A category scheme is the descriptive information for an arrangement or division of categories into groups based on characteristics, which the objects have in common. This provides for a simple, leveled hierarchy or categories.\r\n\r\n<p>Java class for CategorySchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorySchemeType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Category\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorySchemeType",
            "type": "object"
        },
        "xml_ns5_CategoryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemType"
                },
                {}
            ],
            "description": "CategoryType describes the details of a category. A category is defined as an item at any level in a classification. The Category element represents a set of nested categories which are child categories.\r\n\r\n<p>Java class for CategoryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategoryType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;sequence maxOccurs=\"unbounded\">\r\n             &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Category\"/>\r\n           &lt;/sequence>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategoryType",
            "type": "object"
        },
        "xml_ns5_CodeMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemAssociationType"
                },
                {}
            ],
            "description": "CodeMapType defines the structure for mapping two codes. A local reference is provided both the source and target code.\r\n\r\n<p>Java class for CodeMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodeMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemAssociationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCodeReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCodeReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodeMapType",
            "type": "object"
        },
        "xml_ns5_CodeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemType"
                },
                {}
            ],
            "description": "CodeType describes the structure of a code. A code is defined as a language independent set of letters, numbers or symbols that represent a concept whose meaning is described in a natural language. Presentational information not present may be added through the use of annotations.\r\n\r\n<p>Java class for CodeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodeType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Parent\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCodeReferenceType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodeType",
            "type": "object"
        },
        "xml_ns5_CodededTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_SimpleComponentTextFormatType"
                },
                {}
            ],
            "description": "CodededTextFormatType is a restricted version of the SimpleComponentTextFormatType that only allows factets and text types applicable to codes. Although the time facets permit any value, an actual code identifier does not support the necessary characters for time. Therefore these facets should not contain time in their values.\r\n\r\n<p>Java class for CodededTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodededTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleComponentTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodeDataType\" />\r\n       &lt;attribute name=\"isSequence\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n       &lt;attribute name=\"interval\" type=\"{http://www.w3.org/2001/XMLSchema}integer\" />\r\n       &lt;attribute name=\"startValue\" type=\"{http://www.w3.org/2001/XMLSchema}integer\" />\r\n       &lt;attribute name=\"endValue\" type=\"{http://www.w3.org/2001/XMLSchema}integer\" />\r\n       &lt;attribute name=\"timeInterval\" type=\"{http://www.w3.org/2001/XMLSchema}duration\" />\r\n       &lt;attribute name=\"startTime\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StandardTimePeriodType\" />\r\n       &lt;attribute name=\"endTime\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StandardTimePeriodType\" />\r\n       &lt;attribute name=\"minLength\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"maxLength\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"minValue\" type=\"{http://www.w3.org/2001/XMLSchema}integer\" />\r\n       &lt;attribute name=\"maxValue\" type=\"{http://www.w3.org/2001/XMLSchema}integer\" />\r\n       &lt;attribute name=\"pattern\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodededTextFormatType",
            "type": "object"
        },
        "xml_ns5_CodelistMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeMapType"
                },
                {}
            ],
            "description": "CodelistMapType defines the structure of a map which identifies relationships between codes in different codelists.\r\n\r\n<p>Java class for CodelistMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodelistMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeMapType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistReferenceType\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodeMap\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodelistMapType",
            "type": "object"
        },
        "xml_ns5_CodelistType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeType"
                },
                {}
            ],
            "description": "CodelistType defines the structure of a codelist. A codelist is defined as a list from which some statistical concepts (coded concepts) take their values.\r\n\r\n<p>Java class for CodelistType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodelistType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Code\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodelistType",
            "type": "object"
        },
        "xml_ns5_CodingTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_SimpleComponentTextFormatType"
                },
                {}
            ],
            "description": "<p>Java class for CodingTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodingTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleComponentTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleCodeDataType\" />\r\n       &lt;attribute name=\"isSequence\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n       &lt;attribute name=\"interval\" type=\"{http://www.w3.org/2001/XMLSchema}integer\" />\r\n       &lt;attribute name=\"startValue\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"endValue\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"minLength\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"maxLength\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"minValue\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"maxValue\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"pattern\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodingTextFormatType",
            "type": "object"
        },
        "xml_ns5_ComponentBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_IdentifiableType"
                },
                {}
            ],
            "description": "ComponentBaseType is an abstract type that only serves the purpose of forming the base for the actual ComponentType. It only restricts the format of the id attribute to the NCNameIDType.\r\n\r\n<p>Java class for ComponentBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentBaseType",
            "type": "object"
        },
        "xml_ns5_ComponentListType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_IdentifiableType"
                },
                {
                    "properties": {
                        "Component": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ComponentListType is an abstract base type for all component lists. It contains a collection of components. Concrete types should restrict this to specific concrete components.\r\n\r\n<p>Java class for ComponentListType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentListType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableType\">\r\n       &lt;sequence>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Component\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentListType",
            "type": "object"
        },
        "xml_ns5_ComponentMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "RepresentationMapping": {
                            "$ref": "#/definitions/xml_ns5_RepresentationMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_LocalComponentListComponentReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns4_LocalComponentListComponentReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ComponentMapType defines the structure for relating a component in a source structure to a component in a target structure.\r\n\r\n<p>Java class for ComponentMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentMapType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentReferenceType\"/>\r\n         &lt;element name=\"RepresentationMapping\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationMapType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Source",
                "Target"
            ],
            "title": "ComponentMapType",
            "type": "object"
        },
        "xml_ns5_ComponentType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentBaseType"
                },
                {
                    "properties": {
                        "ConceptIdentity": {
                            "$ref": "#/definitions/xml_ns4_ConceptReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "LocalRepresentation": {
                            "$ref": "#/definitions/xml_ns5_RepresentationType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ComponentType is an abstract base type for all components. It contains information pertaining to a component, including an optional reference to a concept, an optional role played by the concept, an optional text format description, and an optional local representation.\r\n\r\n<p>Java class for ComponentType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentType",
            "type": "object"
        },
        "xml_ns5_ComputationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Description": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "localID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "softwareLanguage": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "softwarePackage": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "softwareVersion": {
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
            "description": "ComputationType describes a computation in a process.\r\n\r\n<p>Java class for ComputationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComputationType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"localID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"softwarePackage\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n       &lt;attribute name=\"softwareLanguage\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n       &lt;attribute name=\"softwareVersion\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Description"
            ],
            "title": "ComputationType",
            "type": "object"
        },
        "xml_ns5_ConceptBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemType"
                },
                {}
            ],
            "description": "ConceptBaseType is an abstract base type the forms the basis of the ConceptType by requiring a name and id, and restricting the content of the id.\r\n\r\n<p>Java class for ConceptBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Parent\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalConceptReferenceType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptBaseType",
            "type": "object"
        },
        "xml_ns5_ConceptMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemAssociationType"
                },
                {}
            ],
            "description": "ConceptMapType defines the structure for mapping two concepts. A local reference is provided both the source and target concept.\r\n\r\n<p>Java class for ConceptMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemAssociationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalConceptReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalConceptReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptMapType",
            "type": "object"
        },
        "xml_ns5_ConceptRepresentation": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "ConceptRepresentation defines the core representation that are allowed for a concept. The text format allowed for a concept is that which is allowed for any non-target object component.\r\n\r\n<p>Java class for ConceptRepresentation complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptRepresentation\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;choice>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BasicComponentTextFormatType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"Enumeration\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistReferenceType\"/>\r\n           &lt;element name=\"EnumerationFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodededTextFormatType\" minOccurs=\"0\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptRepresentation",
            "type": "object"
        },
        "xml_ns5_ConceptSchemeMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeMapType"
                },
                {}
            ],
            "description": "ConceptSchemeMapType defines the structure of a map which identifies relationships between concepts in different concept schemes.\r\n\r\n<p>Java class for ConceptSchemeMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptSchemeMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeMapType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptSchemeReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptSchemeReferenceType\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConceptMap\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptSchemeMapType",
            "type": "object"
        },
        "xml_ns5_ConceptSchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeType"
                },
                {}
            ],
            "description": "onceptSchemeType describes the structure of a concept scheme. A concept scheme is the descriptive information for an arrangement or division of concepts into groups based on characteristics, which the objects have in common. It contains a collection of concept definitions, that may be arranged in simple hierarchies.\r\n\r\n<p>Java class for ConceptSchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptSchemeType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Concept\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptSchemeType",
            "type": "object"
        },
        "xml_ns5_ConceptType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ConceptBaseType"
                },
                {
                    "properties": {
                        "CoreRepresentation": {
                            "$ref": "#/definitions/xml_ns5_ConceptRepresentation",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ISOConceptReference": {
                            "$ref": "#/definitions/xml_ns5_ISOConceptReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ConceptType describes the details of a concept. A concept is defined as a unit of knowledge created by a unique combination of characteristics. If a concept does not specify a TextFormat or a core representation, then the representation of the concept is assumed to be represented by any set of valid characters (corresponding to the xs:string datatype of W3C XML Schema).\r\n\r\n<p>Java class for ConceptType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConceptBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"CoreRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConceptRepresentation\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ISOConceptReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ISOConceptReferenceType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptType",
            "type": "object"
        },
        "xml_ns5_ConstraintAttachmentType": {
            "allOf": [
                {
                    "properties": {
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "DataSet": {
                            "$ref": "#/definitions/xml_ns4_SetReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "DataStructure": {
                            "$ref": "#/definitions/xml_ns4_DataStructureReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Dataflow": {
                            "$ref": "#/definitions/xml_ns4_DataflowReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "MetadataSet": {
                            "$ref": "#/definitions/xml_ns4_SetReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "MetadataStructure": {
                            "$ref": "#/definitions/xml_ns4_MetadataStructureReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Metadataflow": {
                            "$ref": "#/definitions/xml_ns4_MetadataflowReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ProvisionAgreement": {
                            "$ref": "#/definitions/xml_ns4_ProvisionAgreementReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "QueryableDataSource": {
                            "$ref": "#/definitions/xml_ns4_QueryableDataSourceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "SimpleDataSource": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ConstraintAttachmentType describes a collection of references to constrainable artefacts.\r\n\r\n<p>Java class for ConstraintAttachmentType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintAttachmentType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"MetadataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"SimpleDataSource\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" maxOccurs=\"unbounded\"/>\r\n         &lt;choice>\r\n           &lt;sequence>\r\n             &lt;element name=\"DataStructure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataStructureReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"MetadataStructure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataStructureReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"Dataflow\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataflowReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"Metadataflow\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataflowReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"ProvisionAgreement\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ProvisionAgreementReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n         &lt;/choice>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintAttachmentType",
            "type": "object"
        },
        "xml_ns5_ConstraintBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {}
            ],
            "description": "ConstraintBaseType is an abstract base type that forms the basis of the main abstract ConstraintType. It requires that a name be provided.\r\n\r\n<p>Java class for ConstraintBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintBaseType",
            "type": "object"
        },
        "xml_ns5_ConstraintContentTargetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObject"
                },
                {}
            ],
            "description": "ConstraintTargetType defines the structure of a constraint target object. The constraint target object has a fixed representation and identifier.\r\n\r\n<p>Java class for ConstraintContentTargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintContentTargetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObject\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintRepresentationType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"CONSTRAINT_CONTENT_TARGET\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintContentTargetType",
            "type": "object"
        },
        "xml_ns5_ConstraintRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "ConstraintRepresentationType defines the possible local representations of a constraint reference target object. The representation is fixed to always be an attachment constraint reference.\r\n\r\n<p>Java class for ConstraintRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintTextFormatType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintRepresentationType",
            "type": "object"
        },
        "xml_ns5_ConstraintTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObjectTextFormatType"
                },
                {}
            ],
            "description": "ConstraintTextFormatType is a restricted version of the NonFacetedTextFormatType that specifies a fixed AttachmentConstraintReference representation.\r\n\r\n<p>Java class for ConstraintTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectDataType\" fixed=\"AttachmentConstraintReference\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintTextFormatType",
            "type": "object"
        },
        "xml_ns5_ConstraintType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ConstraintBaseType"
                },
                {
                    "properties": {
                        "ConstraintAttachment": {
                            "$ref": "#/definitions/xml_ns5_ConstraintAttachmentType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "CubeRegion": {
                            "$ref": "#/definitions/xml_ns4_CubeRegionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "DataKeySet": {
                            "$ref": "#/definitions/xml_ns5_DataKeySetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "MetadataKeySet": {
                            "$ref": "#/definitions/xml_ns5_MetadataKeySetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "MetadataTargetRegion": {
                            "$ref": "#/definitions/xml_ns4_MetadataTargetRegionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ConstraintType is an abstract base type that specific types of constraints (content and attachment) restrict and extend to describe their details. The inclusion of a key or region in a constraint is determined by first processing the included key sets, and then removing those keys defined in the excluded key sets. If no included key sets are defined, then it is assumed the all possible keys or regions are included, and any excluded key or regions are removed from this complete set.\r\n\r\n<p>Java class for ConstraintType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ConstraintAttachment\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintAttachmentType\" minOccurs=\"0\"/>\r\n         &lt;choice maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element name=\"DataKeySet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataKeySetType\"/>\r\n           &lt;element name=\"MetadataKeySet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataKeySetType\"/>\r\n           &lt;element name=\"CubeRegion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CubeRegionType\"/>\r\n           &lt;element name=\"MetadataTargetRegion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataTargetRegionType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintType",
            "type": "object"
        },
        "xml_ns5_ContactType": {
            "allOf": [
                {
                    "properties": {
                        "Department": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Email": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Fax": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Name": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Role": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Telephone": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "URI": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "X400": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "id": {
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
            "description": "ContactType describes the structure of a contact's details.\r\n\r\n<p>Java class for ContactType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContactType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Department\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Role\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element name=\"Telephone\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n           &lt;element name=\"Fax\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n           &lt;element name=\"X400\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n           &lt;element name=\"URI\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\"/>\r\n           &lt;element name=\"Email\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContactType",
            "type": "object"
        },
        "xml_ns5_ContentConstraintAttachmentType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ConstraintAttachmentType"
                },
                {}
            ],
            "description": "ContentConstraintAttachmentType defines the structure for specifying the target object(s) of a content constraint.\r\n\r\n<p>Java class for ContentConstraintAttachmentType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContentConstraintAttachmentType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintAttachmentType\">\r\n       &lt;choice>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\"/>\r\n         &lt;element name=\"MetadataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\"/>\r\n         &lt;element name=\"SimpleDataSource\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\"/>\r\n         &lt;choice>\r\n           &lt;sequence>\r\n             &lt;element name=\"DataStructure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataStructureReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"MetadataStructure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataStructureReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"Dataflow\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataflowReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"Metadataflow\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataflowReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n           &lt;sequence>\r\n             &lt;element name=\"ProvisionAgreement\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ProvisionAgreementReferenceType\" maxOccurs=\"unbounded\"/>\r\n             &lt;element name=\"QueryableDataSource\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n           &lt;/sequence>\r\n         &lt;/choice>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContentConstraintAttachmentType",
            "type": "object"
        },
        "xml_ns5_ContentConstraintBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ConstraintType"
                },
                {}
            ],
            "description": "ContentConstraintBaseType is an abstract base type that forms the basis for the ContentConstraintType.\r\n\r\n<p>Java class for ContentConstraintBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContentConstraintBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConstraintAttachment\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ContentConstraintAttachmentType\" minOccurs=\"0\"/>\r\n         &lt;choice maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element name=\"DataKeySet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataKeySetType\"/>\r\n           &lt;element name=\"MetadataKeySet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataKeySetType\"/>\r\n           &lt;element name=\"CubeRegion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CubeRegionType\"/>\r\n           &lt;element name=\"MetadataTargetRegion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataTargetRegionType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContentConstraintBaseType",
            "type": "object"
        },
        "xml_ns5_ContentConstraintType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ContentConstraintBaseType"
                },
                {
                    "properties": {
                        "ReferencePeriod": {
                            "$ref": "#/definitions/xml_ns4_ReferencePeriodType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ReleaseCalendar": {
                            "$ref": "#/definitions/xml_ns5_ReleaseCalendarType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "type": {
                            "$ref": "#/definitions/xml_ns4_ContentConstraintTypeCodeType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "ContentConstraintType describes the details of a content constraint by defining the content regions, key sets, or release information for the constraint attachment objects. Note that if the constraint is for a data provider, then only release calendar information is relevant, as there is no reliable way of determining which key family is being used to frame constraints in terms of cube regions or key sets.\r\n\r\n<p>Java class for ContentConstraintType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContentConstraintType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ContentConstraintBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ReleaseCalendar\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReleaseCalendarType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ReferencePeriod\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferencePeriodType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContentConstraintTypeCodeType\" default=\"Actual\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContentConstraintType",
            "type": "object"
        },
        "xml_ns5_DataConsumerSchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationSchemeType"
                },
                {}
            ],
            "description": "DataConsumerSchemeType defines a type of organisation scheme which contains only data consumers. The data consumer scheme maintained by a particular maintenance agency is always provided a fixed identifier and version, and is never final. Therefore, consumers can be added or removed without have to version the scheme. This scheme has no hierarchy, meaning that no organisation may define a relationship with another organisation in the scheme.\r\n\r\n<p>Java class for DataConsumerSchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataConsumerSchemeType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataConsumer\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"DATA_CONSUMERS\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" fixed=\"1.0\" />\r\n       &lt;attribute name=\"isFinal\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataConsumerSchemeType",
            "type": "object"
        },
        "xml_ns5_DataConsumerType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationType"
                },
                {}
            ],
            "description": "DataConsumerType defines the structure of a data consumer description. The contacts defined for the organisation are specific to the data consumer role the organisation is serving.\r\n\r\n<p>Java class for DataConsumerType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataConsumerType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Contact\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ContactType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataConsumerType",
            "type": "object"
        },
        "xml_ns5_DataKeySetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_KeySetType"
                },
                {}
            ],
            "description": "DataKeySetType defines a collection of full or partial data keys (dimension values).\r\n\r\n<p>Java class for DataKeySetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataKeySetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}KeySetType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Key\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataKeySetType",
            "type": "object"
        },
        "xml_ns5_DataProviderSchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationSchemeType"
                },
                {}
            ],
            "description": "DataProviderSchemeType defines a type of organisation scheme which contains only data providers. The data provider scheme maintained by a particular maintenance agency is always provided a fixed identifier and version, and is never final. Therefore, providers can be added or removed without have to version the scheme. This scheme has no hierarchy, meaning that no organisation may define a relationship with another organisation in the scheme\r\n\r\n<p>Java class for DataProviderSchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataProviderSchemeType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataProvider\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"DATA_PROVIDERS\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" fixed=\"1.0\" />\r\n       &lt;attribute name=\"isFinal\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataProviderSchemeType",
            "type": "object"
        },
        "xml_ns5_DataProviderType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationType"
                },
                {}
            ],
            "description": "DataProviderType defines the structure of a data provider description. The contacts defined for the organisation are specific to the data provider role the organisation is serving.\r\n\r\n<p>Java class for DataProviderType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataProviderType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Contact\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ContactType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataProviderType",
            "type": "object"
        },
        "xml_ns5_DataSetRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "DataSetRepresentationType defines the possible local representations of a data set reference target object. The representation is fixed to always be a data set reference.\r\n\r\n<p>Java class for DataSetRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSetRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataSetTextFormatType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataSetRepresentationType",
            "type": "object"
        },
        "xml_ns5_DataSetTargetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObject"
                },
                {}
            ],
            "description": "DataSetTargetType defines the structure of a data set target object. The data set target object has a fixed representation and identifier.\r\n\r\n<p>Java class for DataSetTargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSetTargetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObject\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataSetRepresentationType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"DATA_SET_TARGET\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataSetTargetType",
            "type": "object"
        },
        "xml_ns5_DataSetTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObjectTextFormatType"
                },
                {}
            ],
            "description": "DataSetTextFormatType is a restricted version of the NonFacetedTextFormatType that specifies a fixed DataSetReference representation.\r\n\r\n<p>Java class for DataSetTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSetTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectDataType\" fixed=\"DataSetReference\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataSetTextFormatType",
            "type": "object"
        },
        "xml_ns5_DataStructureRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "DataStructureRepresentationType is an abstract base type which defines the allowable representations for any data structure definition component. The enumeration must be restricted to the proper type for item scheme for a given component.\r\n\r\n<p>Java class for DataStructureRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataStructureRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;choice>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleComponentTextFormatType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"Enumeration\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\"/>\r\n           &lt;element name=\"EnumerationFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodededTextFormatType\" minOccurs=\"0\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataStructureRepresentationType",
            "type": "object"
        },
        "xml_ns5_DataStructureType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_StructureType"
                },
                {}
            ],
            "description": "DataStructureType describes the structure of a data structure definition. A data structure definition is defined as a collection of metadata concepts, their structure and usage when used to collect or disseminate data.\r\n\r\n<p>Java class for DataStructureType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataStructureType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructureType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataStructureComponents\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataStructureType",
            "type": "object"
        },
        "xml_ns5_DataflowType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_StructureUsageType"
                },
                {}
            ],
            "description": "DataflowType describes the structure of a data flow. A data flow is defined as the structure of data that will provided for different reference periods. If this type is not referenced externally, then a reference to a key family definition must be provided.\r\n\r\n<p>Java class for DataflowType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataflowType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructureUsageType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataStructureReferenceType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataflowType",
            "type": "object"
        },
        "xml_ns5_DimensionListBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentListType"
                },
                {}
            ],
            "description": "DimensionListBaseType is an abstract base type used as the basis for the DimensionListType.\r\n\r\n<p>Java class for DimensionListBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DimensionListBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentListType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"DimensionDescriptor\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DimensionListBaseType",
            "type": "object"
        },
        "xml_ns5_DimensionListType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_DimensionListBaseType"
                },
                {
                    "properties": {
                        "Dimension": {
                            "$ref": "#/definitions/xml_ns5_DimensionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "MeasureDimension": {
                            "$ref": "#/definitions/xml_ns5_MeasureDimensionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "TimeDimension": {
                            "$ref": "#/definitions/xml_ns5_TimeDimensionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "DimensionListType describes the key descriptor for a data structure definition. The order of the declaration of child dimensions is significant: it is used to describe the order in which they will appear in data formats for which key values are supplied in an ordered fashion (exclusive of the time dimension, which is not represented as a member of the ordered key). Any data structure definition which uses the time dimension should also declare a frequency dimension, conventionally the first dimension in the key (the set of ordered non-time dimensions). If is not necessary to assign a time dimension, as data can be organised in any fashion required.\r\n\r\n<p>Java class for DimensionListType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DimensionListType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DimensionListBaseType\">\r\n       &lt;choice maxOccurs=\"unbounded\">\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Dimension\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MeasureDimension\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TimeDimension\"/>\r\n       &lt;/choice>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DimensionListType",
            "type": "object"
        },
        "xml_ns5_DimensionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_BaseDimensionType"
                },
                {}
            ],
            "description": "DimensionType describes the structure of an ordinary dimension, which is defined as a statistical concept used (most probably together with other statistical concepts) to identify a statistical series, such as a time series, e.g. a statistical concept indicating certain economic activity or a geographical reference area. The dimension takes its semantic, and in some cases it representation, from its concept identity. A dimension can be coded by referencing a code list from its coded local representation. It can also specify its text format, which is used as the representation of the dimension if a coded representation is not defined. Neither the coded or uncoded representation are necessary, since the dimension may take these from the referenced concept.\r\n\r\n<p>Java class for DimensionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DimensionType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BaseDimensionType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleDataStructureRepresentationType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptRole\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeType\" fixed=\"Dimension\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DimensionType",
            "type": "object"
        },
        "xml_ns5_GroupBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentListType"
                },
                {}
            ],
            "description": "GroupBaseType is an abstract base type that forms the basis for the GroupType.\r\n\r\n<p>Java class for GroupBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentListType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GroupBaseType",
            "type": "object"
        },
        "xml_ns5_GroupDimensionBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentType"
                },
                {}
            ],
            "description": "GroupDimensionBaseType is an abstract base type which refines the base ComponentType in order to form the basis for the GroupDimensionType.\r\n\r\n<p>Java class for GroupDimensionBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupDimensionBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentType\">\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GroupDimensionBaseType",
            "type": "object"
        },
        "xml_ns5_GroupDimensionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_GroupDimensionBaseType"
                },
                {
                    "properties": {
                        "DimensionReference": {
                            "$ref": "#/definitions/xml_ns4_LocalDimensionReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "GroupDimensionType defines a dimension component with a group key descriptor component list. Although technically a component, this is essentially a reference to a dimension defined in the key descriptor. Therefore, the identification, name, and description, concept identity and representation properties that are typically available for a component are not allowed here, as they are all inherited from the referenced dimension.\r\n\r\n<p>Java class for GroupDimensionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupDimensionType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}GroupDimensionBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"DimensionReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalDimensionReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "DimensionReference"
            ],
            "title": "GroupDimensionType",
            "type": "object"
        },
        "xml_ns5_GroupType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_GroupBaseType"
                },
                {
                    "properties": {
                        "AttachmentConstraint": {
                            "$ref": "#/definitions/xml_ns4_AttachmentConstraintReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "GroupDimension": {
                            "$ref": "#/definitions/xml_ns5_GroupDimensionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "GroupType describes the structure of a group descriptor in a data structure definition. A group may consist of a of partial key, or collection of distinct cube regions or key sets to which attributes may be attached. The purpose of a group is to specify attributes values which have the same value based on some common dimensionality. All groups declared in the data structure must be unique - that is, you may not have duplicate partial keys. All groups must be given unique identifiers.\r\n\r\n<p>Java class for GroupType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}GroupBaseType\">\r\n       &lt;choice>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}GroupDimension\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"AttachmentConstraint\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AttachmentConstraintReferenceType\"/>\r\n       &lt;/choice>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GroupType",
            "type": "object"
        },
        "xml_ns5_HierarchicalCodeBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_IdentifiableType"
                },
                {}
            ],
            "description": "HierarchicalCodeBaseType is an abstract base type the creates the basis for the HierarchicalCodeType. It removes the urn and uri.\r\n\r\n<p>Java class for HierarchicalCodeBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodeBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodeBaseType",
            "type": "object"
        },
        "xml_ns5_HierarchicalCodeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_HierarchicalCodeBaseType"
                },
                {
                    "properties": {
                        "Code": {
                            "$ref": "#/definitions/xml_ns4_CodeReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "CodeID": {
                            "$ref": "#/definitions/xml_ns4_LocalCodeReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "CodelistAliasRef": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "HierarchicalCode": {
                            "$ref": "#/definitions/xml_ns5_HierarchicalCodeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Level": {
                            "$ref": "#/definitions/xml_ns4_LocalLevelReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "validFrom": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "validTo": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "version": {
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
            "description": "HierarchicalCodeType describes the structure of a hierarchical code. A hierarchical code provides for a reference to a code that is referenced within the hierarchical code list via either a complete reference to a code through either a URN or full set of reference fields, or a local reference which utilizes the included codelist reference alias and the identification of a code from the list. Codes are arranged in a hierarchy by this reference. Note that it is possible to reference a single code such that it has multiple parents within the hierarchy. Further, the hierarchy may or may not be a leveled one.\r\n\r\n<p>Java class for HierarchicalCodeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodeType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HierarchicalCodeBaseType\">\r\n       &lt;sequence>\r\n         &lt;choice>\r\n           &lt;element name=\"Code\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodeReferenceType\"/>\r\n           &lt;sequence>\r\n             &lt;element name=\"CodelistAliasRef\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n             &lt;element name=\"CodeID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCodeReferenceType\"/>\r\n           &lt;/sequence>\r\n         &lt;/choice>\r\n         &lt;element name=\"HierarchicalCode\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HierarchicalCodeType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Level\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalLevelReferenceType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" />\r\n       &lt;attribute name=\"validFrom\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" />\r\n       &lt;attribute name=\"validTo\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodeType",
            "type": "object"
        },
        "xml_ns5_HierarchicalCodelistBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {}
            ],
            "description": "HierarchicalCodelistBaseType is an abstract base class that is the basis for the HierarchicalCodelistType. It requires that a name be supplied.\r\n\r\n<p>Java class for HierarchicalCodelistBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodelistBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodelistBaseType",
            "type": "object"
        },
        "xml_ns5_HierarchicalCodelistType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_HierarchicalCodelistBaseType"
                },
                {
                    "properties": {
                        "Hierarchy": {
                            "$ref": "#/definitions/xml_ns5_HierarchyType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "IncludedCodelist": {
                            "$ref": "#/definitions/xml_ns5_IncludedCodelistReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "HierarchicalCodelistType describes the structure of a hierarchical codelist. A hierarchical code list is defined as an organised collection of codes that may participate in many parent/child relationships with other codes in the list, as defined by one or more hierarchy of the list.\r\n\r\n<p>Java class for HierarchicalCodelistType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodelistType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HierarchicalCodelistBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"IncludedCodelist\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IncludedCodelistReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Hierarchy\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HierarchyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodelistType",
            "type": "object"
        },
        "xml_ns5_HierarchyBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {}
            ],
            "description": "HierarchyBaseType is an abstract base type that serves as the basis for the HierarchyType. It requires a name and id be provided.\r\n\r\n<p>Java class for HierarchyBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchyBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchyBaseType",
            "type": "object"
        },
        "xml_ns5_HierarchyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_HierarchyBaseType"
                },
                {
                    "properties": {
                        "HierarchicalCode": {
                            "$ref": "#/definitions/xml_ns5_HierarchicalCodeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Level": {
                            "$ref": "#/definitions/xml_ns5_LevelType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "leveled": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "The Hierarchy is an abstract type that provides for a classification structure of referenced codes arranged in levels of detail from the broadest to the most detailed level. The levels in which the code exist can be formal or informal.\r\n\r\n<p>Java class for HierarchyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchyType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HierarchyBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"HierarchicalCode\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HierarchicalCodeType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"Level\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}LevelType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"leveled\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"false\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "HierarchicalCode"
            ],
            "title": "HierarchyType",
            "type": "object"
        },
        "xml_ns5_HybridCodeMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_AnyLocalCodeReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns4_AnyLocalCodeReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "CodeMapType defines the structure for associating a code from a source codelist to a code in a target codelist. Note that either of these may come from a hierarchical codelist.\r\n\r\n<p>Java class for HybridCodeMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HybridCodeMapType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnyLocalCodeReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnyLocalCodeReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Source",
                "Target"
            ],
            "title": "HybridCodeMapType",
            "type": "object"
        },
        "xml_ns5_HybridCodelistMapBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {}
            ],
            "description": "HybridCodelistMapBaseType is an abstract base type which forms the basis for the HybridCodelistMapType.\r\n\r\n<p>Java class for HybridCodelistMapBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HybridCodelistMapBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HybridCodelistMapBaseType",
            "type": "object"
        },
        "xml_ns5_HybridCodelistMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_HybridCodelistMapBaseType"
                },
                {
                    "properties": {
                        "HybridCodeMap": {
                            "$ref": "#/definitions/xml_ns5_HybridCodeMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_AnyCodelistReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns4_AnyCodelistReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "HybridCodelistMapType defines the structure of a map which relates codes (possibly hierarchical) from different code lists.\r\n\r\n<p>Java class for HybridCodelistMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HybridCodelistMapType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HybridCodelistMapBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnyCodelistReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnyCodelistReferenceType\"/>\r\n         &lt;element name=\"HybridCodeMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HybridCodeMapType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Source",
                "Target",
                "HybridCodeMap"
            ],
            "title": "HybridCodelistMapType",
            "type": "object"
        },
        "xml_ns5_ISOConceptReferenceType": {
            "allOf": [
                {
                    "properties": {
                        "ConceptAgency": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ConceptID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ConceptSchemeID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ISOConceptReferenceType provides a reference to and ISO 11179 concept.\r\n\r\n<p>Java class for ISOConceptReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ISOConceptReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ConceptAgency\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n         &lt;element name=\"ConceptSchemeID\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n         &lt;element name=\"ConceptID\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ConceptAgency",
                "ConceptSchemeID",
                "ConceptID"
            ],
            "title": "ISOConceptReferenceType",
            "type": "object"
        },
        "xml_ns5_IdentifiableObjectRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "IdentifiableObjectRepresentationType defines the possible local representations of an identifiable object target object.\r\n\r\n<p>Java class for IdentifiableObjectRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IdentifiableObjectRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;choice>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableObjectTextFormatType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"Enumeration\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceType\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "IdentifiableObjectRepresentationType",
            "type": "object"
        },
        "xml_ns5_IdentifiableObjectTargetBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObject"
                },
                {}
            ],
            "description": "IdentifiableObjectTargetBaseType is an abstract base type which forms the basis for the IdentifiableObjectTargetType.\r\n\r\n<p>Java class for IdentifiableObjectTargetBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IdentifiableObjectTargetBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObject\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableObjectRepresentationType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "IdentifiableObjectTargetBaseType",
            "type": "object"
        },
        "xml_ns5_IdentifiableObjectTargetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_IdentifiableObjectTargetBaseType"
                },
                {
                    "properties": {
                        "objectType": {
                            "$ref": "#/definitions/xml_ns4_ObjectTypeCodelistType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "IdentifiableObjectTargetType defines the structure of an identifiable target object. The identifiable target object has a fixed representation of a reference and can specify a local representation of any item scheme for the purpose of restricting which items may be referenced. The identifiable object target must specify the object type which the target object is meant to reference.\r\n\r\n<p>Java class for IdentifiableObjectTargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IdentifiableObjectTargetType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableObjectTargetBaseType\">\r\n       &lt;attribute name=\"objectType\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "objectType"
            ],
            "title": "IdentifiableObjectTargetType",
            "type": "object"
        },
        "xml_ns5_IdentifiableObjectTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObjectTextFormatType"
                },
                {}
            ],
            "description": "IdentifiableObjectTextFormatType is a restricted version of the NonFacetedTextFormatType that specifies a fixed IdentifiableReference representation.\r\n\r\n<p>Java class for IdentifiableObjectTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IdentifiableObjectTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectDataType\" fixed=\"IdentifiableReference\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "IdentifiableObjectTextFormatType",
            "type": "object"
        },
        "xml_ns5_IdentifiableType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "uri": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "urn": {
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
            "description": "IdentifiableType is an abstract base type for all identifiable objects.\r\n\r\n<p>Java class for IdentifiableType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IdentifiableType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"urn\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" />\r\n       &lt;attribute name=\"uri\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "IdentifiableType",
            "type": "object"
        },
        "xml_ns5_IncludedCodelistReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_CodelistReferenceType"
                },
                {
                    "properties": {
                        "alias": {
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
            "description": "IncludedCodelistReferenceType provides the structure for a referencing a codelist and optionally providing a local alias identification for this reference.\r\n\r\n<p>Java class for IncludedCodelistReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IncludedCodelistReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistReferenceType\">\r\n       &lt;attribute name=\"alias\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "IncludedCodelistReferenceType",
            "type": "object"
        },
        "xml_ns5_InputOutputType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "ObjectReference": {
                            "$ref": "#/definitions/xml_ns4_ObjectReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "localID": {
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
            "description": "InputOutputType describes the structure of an input or output to a process step. It provides a reference to the object that is the input or output.\r\n\r\n<p>Java class for InputOutputType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"InputOutputType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ObjectReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectReferenceType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"localID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ObjectReference"
            ],
            "title": "InputOutputType",
            "type": "object"
        },
        "xml_ns5_ItemAssociationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_LocalItemReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns4_LocalItemReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ItemAssociationType is an abstract type which defines the relationship between two items from the source and target item schemes of an item scheme map.\r\n\r\n<p>Java class for ItemAssociationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemAssociationType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Source",
                "Target"
            ],
            "title": "ItemAssociationType",
            "type": "object"
        },
        "xml_ns5_ItemBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {}
            ],
            "description": "ItemBaseType is an abstract base type that forms the basis for the ItemType. It requires that at least an id be supplied for an item.\r\n\r\n<p>Java class for ItemBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemBaseType",
            "type": "object"
        },
        "xml_ns5_ItemSchemeMapBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {}
            ],
            "description": "ItemSchemeMapBaseType is an abstract base type which forms the basis for the ItemSchemeMapType.\r\n\r\n<p>Java class for ItemSchemeMapBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemSchemeMapBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemSchemeMapBaseType",
            "type": "object"
        },
        "xml_ns5_ItemSchemeMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeMapBaseType"
                },
                {
                    "properties": {
                        "ItemAssociation": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ItemSchemeMapType is an abstract base type which forms the basis for mapping items between item schemes of the same type.\r\n\r\n<p>Java class for ItemSchemeMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemSchemeMapType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeMapBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemAssociation\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Source",
                "Target"
            ],
            "title": "ItemSchemeMapType",
            "type": "object"
        },
        "xml_ns5_ItemSchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {
                    "properties": {
                        "Item": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "isPartial": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "ItemSchemeType is an abstract base type for all item scheme objects. It contains a collection of items. Concrete instances of this type should restrict the actual types of items allowed within the scheme.\r\n\r\n<p>Java class for ItemSchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemSchemeType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Item\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"isPartial\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"false\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemSchemeType",
            "type": "object"
        },
        "xml_ns5_ItemType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemBaseType"
                },
                {
                    "properties": {
                        "Item": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Parent": {
                            "$ref": "#/definitions/xml_ns4_LocalItemReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ItemType is an abstract base type for all items with in an item scheme. Concrete instances of this type may or may not utilize the nested item, but if so should restrict the actual types of item allowed.\r\n\r\n<p>Java class for ItemType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemBaseType\">\r\n       &lt;choice minOccurs=\"0\">\r\n         &lt;element name=\"Parent\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Item\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemType",
            "type": "object"
        },
        "xml_ns5_KeyDescriptorValuesRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "KeyDescriptorValuesRepresentationType defines the possible local representations of a key descriptor values target object. The representation is fixed to always be a data key (KeyValues).\r\n\r\n<p>Java class for KeyDescriptorValuesRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeyDescriptorValuesRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}KeyDescriptorValuesTextFormatType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "KeyDescriptorValuesRepresentationType",
            "type": "object"
        },
        "xml_ns5_KeyDescriptorValuesTargetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObject"
                },
                {}
            ],
            "description": "KeyDescriptorValuesTargetType defines the structure of a key descriptor values target object. The key descriptor values target object has a fixed representation and identifier.\r\n\r\n<p>Java class for KeyDescriptorValuesTargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeyDescriptorValuesTargetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObject\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}KeyDescriptorValuesRepresentationType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"DIMENSION_DESCRIPTOR_VALUES_TARGET\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "KeyDescriptorValuesTargetType",
            "type": "object"
        },
        "xml_ns5_KeyDescriptorValuesTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObjectTextFormatType"
                },
                {}
            ],
            "description": "KeyDescriptorValuesTextFormatType is a restricted version of the NonFacetedTextFormatType that specifies a fixed KeyValues representation.\r\n\r\n<p>Java class for KeyDescriptorValuesTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeyDescriptorValuesTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectDataType\" fixed=\"KeyValues\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "KeyDescriptorValuesTextFormatType",
            "type": "object"
        },
        "xml_ns5_KeySetType": {
            "allOf": [
                {
                    "properties": {
                        "Key": {
                            "$ref": "#/definitions/xml_ns4_DistinctKeyType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "isIncluded": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "KeySetType is an abstract base type for defining a collection of keys.\r\n\r\n<p>Java class for KeySetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeySetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Key\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DistinctKeyType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"isIncluded\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "isIncluded",
                "Key"
            ],
            "title": "KeySetType",
            "type": "object"
        },
        "xml_ns5_LevelBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {}
            ],
            "description": "LevelBaseType is an abstract base type that makes up the basis for the LevelType. It requires a name and id.\r\n\r\n<p>Java class for LevelBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LevelBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LevelBaseType",
            "type": "object"
        },
        "xml_ns5_LevelType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_LevelBaseType"
                },
                {
                    "properties": {
                        "CodingFormat": {
                            "$ref": "#/definitions/xml_ns5_CodingTextFormatType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Level": {
                            "$ref": "#/definitions/xml_ns5_LevelType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "LevelType describes a level in a hierarchical codelist. Where level is defined as a group where codes can be characterised by homogeneous coding, and where the parent of each code in the group is at the same higher level of the hierarchy.\r\n\r\n<p>Java class for LevelType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LevelType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}LevelBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"CodingFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodingTextFormatType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Level\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}LevelType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LevelType",
            "type": "object"
        },
        "xml_ns5_MaintainableBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_VersionableType"
                },
                {}
            ],
            "description": "MaintainableBaseType is an abstract type that only serves the purpose of forming the base for the actual MaintainableType. The purpose of this type is to restrict the VersionableType to require the id attribute.\r\n\r\n<p>Java class for MaintainableBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MaintainableBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}VersionableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MaintainableBaseType",
            "type": "object"
        },
        "xml_ns5_MaintainableType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableBaseType"
                },
                {
                    "properties": {
                        "agencyID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "isExternalReference": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "isFinal": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "serviceURL": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "structureURL": {
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
            "description": "MaintainableType is an abstract base type for all maintainable objects.\r\n\r\n<p>Java class for MaintainableType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MaintainableType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableBaseType\">\r\n       &lt;attGroup ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ExternalReferenceAttributeGroup\"/>\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"isFinal\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"false\" />\r\n       &lt;attribute name=\"isExternalReference\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"false\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "agencyID"
            ],
            "title": "MaintainableType",
            "type": "object"
        },
        "xml_ns5_MeasureDimensionRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_DataStructureRepresentationType"
                },
                {}
            ],
            "description": "BaseDimensionRepresentationType is an abstract base which defines the representation for a measure dimension.\r\n\r\n<p>Java class for MeasureDimensionRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MeasureDimensionRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataStructureRepresentationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Enumeration\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptSchemeReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MeasureDimensionRepresentationType",
            "type": "object"
        },
        "xml_ns5_MeasureDimensionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_BaseDimensionType"
                },
                {}
            ],
            "description": "MeasureDimensionType defines the structure of the measure dimension. It is derived from the base dimension structure, but requires that a coded representation taken from a concept scheme is given.\r\n\r\n<p>Java class for MeasureDimensionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MeasureDimensionType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BaseDimensionType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MeasureDimensionRepresentationType\"/>\r\n         &lt;element name=\"ConceptRole\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeType\" fixed=\"MeasureDimension\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MeasureDimensionType",
            "type": "object"
        },
        "xml_ns5_MeasureListType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentListType"
                },
                {}
            ],
            "description": "MeasureListType describes the structure of the measure descriptor for a data structure definition. Only a primary may be defined.\r\n\r\n<p>Java class for MeasureListType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MeasureListType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentListType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}PrimaryMeasure\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"MeasureDescriptor\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MeasureListType",
            "type": "object"
        },
        "xml_ns5_MetadataAttributeBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentType"
                },
                {}
            ],
            "description": "MetadataAttributeBaseType is an abstract base type the serves as the basis for the MetadataAttributeType.\r\n\r\n<p>Java class for MetadataAttributeBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataAttributeBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataAttributeRepresentationType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataAttributeBaseType",
            "type": "object"
        },
        "xml_ns5_MetadataAttributeRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "MetadataAttributeRepresentationType defines the possible local representations of a metadata attribute.\r\n\r\n<p>Java class for MetadataAttributeRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataAttributeRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;choice>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BasicComponentTextFormatType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"Enumeration\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistReferenceType\"/>\r\n           &lt;element name=\"EnumerationFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodededTextFormatType\" minOccurs=\"0\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataAttributeRepresentationType",
            "type": "object"
        },
        "xml_ns5_MetadataAttributeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MetadataAttributeBaseType"
                },
                {
                    "properties": {
                        "MetadataAttribute": {
                            "$ref": "#/definitions/xml_ns5_MetadataAttributeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "isPresentational": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "maxOccurs": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "minOccurs": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "MetadataAttributeType describes the structure of a metadata attribute. The metadata attribute takes its semantic, and in some cases it representation, from its concept identity. A metadata attribute may be coded (via the local representation), uncoded (via the text format), or take no value. In addition to this value, the metadata attribute may also specify subordinate metadata attributes. If a metadata attribute only serves the purpose of containing subordinate metadata attributes, then the isPresentational attribute should be used. Otherwise, it is assumed to also take a value. If the metadata attribute does take a value, and a representation is not defined, it will be inherited from the concept it takes its semantic from. The optional id on the metadata attribute uniquely identifies it within the metadata structured definition. If this id is not supplied, its value is assumed to be that of the concept referenced from the concept identity. Note that a metadata attribute (as identified by the id attribute) definition  must be unique across the entire metadata structure definition (including target identifier, identifier component, and report structure ids). A metadata attribute may be used in multiple report structures and at different levels, but the content (value and/or child metadata attributes and their cardinality) of the metadata attribute cannot change.\r\n\r\n<p>Java class for MetadataAttributeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataAttributeType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataAttributeBaseType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataAttribute\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"minOccurs\" type=\"{http://www.w3.org/2001/XMLSchema}nonNegativeInteger\" default=\"1\" />\r\n       &lt;attribute name=\"maxOccurs\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OccurenceType\" default=\"1\" />\r\n       &lt;attribute name=\"isPresentational\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"false\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataAttributeType",
            "type": "object"
        },
        "xml_ns5_MetadataKeySetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_KeySetType"
                },
                {}
            ],
            "description": "MetadataKeySetType defines a collection of metadata keys (identifier component values).\r\n\r\n<p>Java class for MetadataKeySetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataKeySetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}KeySetType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Key\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataKeyType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataKeySetType",
            "type": "object"
        },
        "xml_ns5_MetadataStructureType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_StructureType"
                },
                {}
            ],
            "description": "MetadataStructureType is used to describe a metadata structure definition, which is defined as a collection of metadata concepts, their structure and usage when used to collect or disseminate reference metadata.\r\n\r\n<p>Java class for MetadataStructureType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataStructureType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructureType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataStructureComponents\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataStructureType",
            "type": "object"
        },
        "xml_ns5_MetadataTargetBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentListType"
                },
                {}
            ],
            "description": "MetadataTargetBaseType is an abstract base type which forms the basis for the MetadataTargetType.\r\n\r\n<p>Java class for MetadataTargetBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataTargetBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentListType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataTargetBaseType",
            "type": "object"
        },
        "xml_ns5_MetadataTargetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MetadataTargetBaseType"
                },
                {
                    "properties": {
                        "ConstraintContentTarget": {
                            "$ref": "#/definitions/xml_ns5_ConstraintContentTargetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "DataSetTarget": {
                            "$ref": "#/definitions/xml_ns5_DataSetTargetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "IdentifiableObjectTarget": {
                            "$ref": "#/definitions/xml_ns5_IdentifiableObjectTargetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "KeyDescriptorValuesTarget": {
                            "$ref": "#/definitions/xml_ns5_KeyDescriptorValuesTargetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ReportPeriodTarget": {
                            "$ref": "#/definitions/xml_ns5_ReportPeriodTargetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "<p>Java class for MetadataTargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataTargetType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataTargetBaseType\">\r\n       &lt;choice maxOccurs=\"unbounded\">\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}KeyDescriptorValuesTarget\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataSetTarget\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConstraintContentTarget\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportPeriodTarget\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableObjectTarget\"/>\r\n       &lt;/choice>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataTargetType",
            "type": "object"
        },
        "xml_ns5_MetadataflowType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_StructureUsageType"
                },
                {}
            ],
            "description": "MetadataflowType describes the structure of a metadata flow. A dataflow is defined as the structure of reference metadata that will be provided for different reference periods. If this type is not referenced externally, then a reference to a metadata structure definition must be provided\r\n\r\n<p>Java class for MetadataflowType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataflowType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructureUsageType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataStructureReferenceType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataflowType",
            "type": "object"
        },
        "xml_ns5_NameableType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_IdentifiableType"
                },
                {
                    "properties": {
                        "Description": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Name": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        }
                    }
                }
            ],
            "description": "NameableType is an abstract base type for  all nameable objects.\r\n\r\n<p>Java class for NameableType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"NameableType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Name"
            ],
            "title": "NameableType",
            "type": "object"
        },
        "xml_ns5_NonFacetedTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_SimpleComponentTextFormatType"
                },
                {}
            ],
            "description": "NonFacetedTextFormatType is a restricted version of the SimpleComponentTextFormatType that does not allow for any facets.\r\n\r\n<p>Java class for NonFacetedTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"NonFacetedTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleComponentTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleDataType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "NonFacetedTextFormatType",
            "type": "object"
        },
        "xml_ns5_OrganisationMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemAssociationType"
                },
                {}
            ],
            "description": "OrganisationMapType defines the structure for mapping two organisations. A local reference is provided both the source and target organisation.\r\n\r\n<p>Java class for OrganisationMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemAssociationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationMapType",
            "type": "object"
        },
        "xml_ns5_OrganisationSchemeBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeType"
                },
                {}
            ],
            "description": "OrganisationSchemeBaseType is an abstract base type for any organisation scheme.\r\n\r\n<p>Java class for OrganisationSchemeBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeBaseType",
            "type": "object"
        },
        "xml_ns5_OrganisationSchemeMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeMapType"
                },
                {}
            ],
            "description": "OrganisationSchemeMapType defines the structure of a map which identifies relationships between organisations in different organisation schemes.\r\n\r\n<p>Java class for OrganisationSchemeMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeMapType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeReferenceType\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationMap\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeMapType",
            "type": "object"
        },
        "xml_ns5_OrganisationSchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationSchemeBaseType"
                },
                {
                    "properties": {
                        "Organisation": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "OrganisationSchemeType describes the structure of an organisation scheme.\r\n\r\n<p>Java class for OrganisationSchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationSchemeBaseType\">\r\n       &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Organisation\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeType",
            "type": "object"
        },
        "xml_ns5_OrganisationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_BaseOrganisationType"
                },
                {
                    "properties": {
                        "Contact": {
                            "$ref": "#/definitions/xml_ns5_ContactType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "OrganisationType in an abstract type which describes the structure of the details of an organisation. In addition to the basic organisation identification, contact details can be provided.\r\n\r\n<p>Java class for OrganisationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BaseOrganisationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Contact\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ContactType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationType",
            "type": "object"
        },
        "xml_ns5_OrganisationUnitSchemeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationSchemeType"
                },
                {}
            ],
            "description": "OrganisationUnitSchemeType defines a type of organisation scheme which simply defines organisations and there parent child relationships. Organisations in this scheme are assigned no particular role, and may in fact exist within the other type of organisation schemes as well.\r\n\r\n<p>Java class for OrganisationUnitSchemeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationUnitSchemeType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationUnit\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationUnitSchemeType",
            "type": "object"
        },
        "xml_ns5_OrganisationUnitType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_OrganisationType"
                },
                {}
            ],
            "description": "OrganisationUnitType defines the structure of an organisation unit description. In addition to general identification and contact information, an organisation unit can specify a relationship with another organisation unit from the same scheme which is its parent organisation.\r\n\r\n<p>Java class for OrganisationUnitType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationUnitType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Parent\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationUnitReferenceType\"/>\r\n         &lt;/choice>\r\n         &lt;element name=\"Contact\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ContactType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationUnitType",
            "type": "object"
        },
        "xml_ns5_PrimaryMeasureType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentType"
                },
                {}
            ],
            "description": "PrimaryMeasureType describes the structure of the primary measure. It describes the observation values for all presentations of the data. The primary measure takes its semantic, and in some cases it representation, from its concept identity (conventionally the OBS_VALUE concept). The primary measure can be coded by referencing a code list from its coded local representation. It can also specify its text format, which is used as the representation of the primary measure if a coded representation is not defined. Neither the coded or uncoded representation are necessary, since the primary measure may take these from the referenced concept. Note that if the data structure declares a measure dimension, the representation of this must be a superset of all possible measure concept representations.\r\n\r\n<p>Java class for PrimaryMeasureType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"PrimaryMeasureType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleDataStructureRepresentationType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"OBS_VALUE\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "PrimaryMeasureType",
            "type": "object"
        },
        "xml_ns5_ProcessStepBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {}
            ],
            "description": "ProcessStepBaseType is an abstract base type used as the basis for the ProcessStepType.\r\n\r\n<p>Java class for ProcessStepBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessStepBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessStepBaseType",
            "type": "object"
        },
        "xml_ns5_ProcessStepType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ProcessStepBaseType"
                },
                {
                    "properties": {
                        "Computation": {
                            "$ref": "#/definitions/xml_ns5_ComputationType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Input": {
                            "$ref": "#/definitions/xml_ns5_InputOutputType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Output": {
                            "$ref": "#/definitions/xml_ns5_InputOutputType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ProcessStep": {
                            "$ref": "#/definitions/xml_ns5_ProcessStepType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Transition": {
                            "$ref": "#/definitions/xml_ns5_TransitionType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ProcessStepType describes the structure of a process step. A nested process step is automatically sub-ordinate, and followed as the next step. If the following step is conditional, it should be referenced in a transition.\r\n\r\n<p>Java class for ProcessStepType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessStepType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ProcessStepBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Input\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}InputOutputType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Output\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}InputOutputType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Computation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComputationType\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Transition\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TransitionType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ProcessStep\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ProcessStepType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessStepType",
            "type": "object"
        },
        "xml_ns5_ProcessType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {
                    "properties": {
                        "ProcessStep": {
                            "$ref": "#/definitions/xml_ns5_ProcessStepType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ProcessType describes the structure of a process, which is a scheme which defines or documents the operations performed on data in order to validate data or to derive new information according to a given set of rules. Processes occur in order, and will continue in order unless a transition dictates another step should occur.\r\n\r\n<p>Java class for ProcessType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ProcessStep\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ProcessStepType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessType",
            "type": "object"
        },
        "xml_ns5_ProvisionAgreementType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {
                    "properties": {
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "StructureUsage": {
                            "$ref": "#/definitions/xml_ns4_StructureUsageReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ProvisionAgreementType describes the structure of a provision agreement. A provision agreement defines an agreement for a data provider to report data or reference metadata against a flow. Attributes which describe how the registry must behave when data or metadata is registered against this provision agreement are supplied.\r\n\r\n<p>Java class for ProvisionAgreementType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProvisionAgreementType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"StructureUsage\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageReferenceType\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "StructureUsage",
                "DataProvider"
            ],
            "title": "ProvisionAgreementType",
            "type": "object"
        },
        "xml_ns5_ReleaseCalendarType": {
            "allOf": [
                {
                    "properties": {
                        "Offset": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Periodicity": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Tolerance": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ReleaseCalendarType describes information about the timing of releases of the constrained data. All of these values use the standard \"P7D\" - style format.\r\n\r\n<p>Java class for ReleaseCalendarType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReleaseCalendarType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Periodicity\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n         &lt;element name=\"Offset\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n         &lt;element name=\"Tolerance\" type=\"{http://www.w3.org/2001/XMLSchema}string\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Periodicity",
                "Offset",
                "Tolerance"
            ],
            "title": "ReleaseCalendarType",
            "type": "object"
        },
        "xml_ns5_ReportPeriodRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_RepresentationType"
                },
                {}
            ],
            "description": "ReportPeriodRepresentationType defines the possible local representations of a report period target object. The reprentation must be a time period or a subset of this representation.\r\n\r\n<p>Java class for ReportPeriodRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportPeriodRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}RepresentationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TimeTextFormatType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportPeriodRepresentationType",
            "type": "object"
        },
        "xml_ns5_ReportPeriodTargetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TargetObject"
                },
                {}
            ],
            "description": "ReportPeriodTargetType defines the structure of a report period target object. The report period target object has a fixed representation and identifier.\r\n\r\n<p>Java class for ReportPeriodTargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportPeriodTargetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObject\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportPeriodRepresentationType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"REPORT_PERIOD_TARGET\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportPeriodTargetType",
            "type": "object"
        },
        "xml_ns5_ReportStructureBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentListType"
                },
                {}
            ],
            "description": "ReportStructureBaseType is an abstract base type that serves as the basis for the ReportStructureType.\r\n\r\n<p>Java class for ReportStructureBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportStructureBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentListType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MetadataAttribute\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportStructureBaseType",
            "type": "object"
        },
        "xml_ns5_ReportStructureType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ReportStructureBaseType"
                },
                {
                    "properties": {
                        "MetadataTarget": {
                            "$ref": "#/definitions/xml_ns4_LocalMetadataTargetReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ReportStructureType describes the structure of a report structure. It comprises a set of metadata attributes that can be defined as a hierarchy, and identifies the potential attachment of these attributes to an object by referencing a target identifier.\r\n\r\n<p>Java class for ReportStructureType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportStructureType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportStructureBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"MetadataTarget\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalMetadataTargetReferenceType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "MetadataTarget"
            ],
            "title": "ReportStructureType",
            "type": "object"
        },
        "xml_ns5_ReportingCategoryBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemType"
                },
                {}
            ],
            "description": "ReportingCategoryBaseType is an abstract base type that serves as the basis for the ReportingCategoryType.\r\n\r\n<p>Java class for ReportingCategoryBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingCategoryBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;sequence maxOccurs=\"unbounded\">\r\n             &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingCategory\"/>\r\n           &lt;/sequence>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingCategoryBaseType",
            "type": "object"
        },
        "xml_ns5_ReportingCategoryMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemAssociationType"
                },
                {}
            ],
            "description": "ReportingCategoryMapType defines the structure for mapping two reporting categories. A local reference is provided both the source and target category.\r\n\r\n<p>Java class for ReportingCategoryMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingCategoryMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemAssociationType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalReportingCategoryReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalReportingCategoryReferenceType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingCategoryMapType",
            "type": "object"
        },
        "xml_ns5_ReportingCategoryType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ReportingCategoryBaseType"
                },
                {
                    "properties": {
                        "ProvisioningMetadata": {
                            "$ref": "#/definitions/xml_ns4_StructureUsageReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "StructuralMetadata": {
                            "$ref": "#/definitions/xml_ns4_StructureReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ReportingCategoryType describes the structure of a reporting category, which groups structure usages into useful sub-packages. Sub ordinate reporting categories can be nested within the category definition.\r\n\r\n<p>Java class for ReportingCategoryType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingCategoryType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingCategoryBaseType\">\r\n       &lt;choice>\r\n         &lt;element name=\"StructuralMetadata\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ProvisioningMetadata\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/choice>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingCategoryType",
            "type": "object"
        },
        "xml_ns5_ReportingTaxonomyMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeMapType"
                },
                {}
            ],
            "description": "ReportingTaxonomyMapType defines the structure of a map which identifies relationships between reporting categories in different reporting taxonomies.\r\n\r\n<p>Java class for ReportingTaxonomyMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingTaxonomyMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeMapType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReportingTaxonomyReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReportingTaxonomyReferenceType\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingCategoryMap\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingTaxonomyMapType",
            "type": "object"
        },
        "xml_ns5_ReportingTaxonomyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ItemSchemeType"
                },
                {}
            ],
            "description": "ReportingTaxonomyType describes the structure of a reporting taxonomy, which is a scheme which defines the composition structure of a data report where each component can be described by an independent structure or structure usage description.\r\n\r\n<p>Java class for ReportingTaxonomyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingTaxonomyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ItemSchemeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingCategory\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingTaxonomyType",
            "type": "object"
        },
        "xml_ns5_ReportingYearStartDayRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_SimpleDataStructureRepresentationType"
                },
                {}
            ],
            "description": "ReportingYearStartDayRepresentationType defines the representation for the reporting year start day attribute. Enumerated values are not allowed and the text format is fixed to be a day and month in the ISO 8601 format of '--MM-DD'.\r\n\r\n<p>Java class for ReportingYearStartDayRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingYearStartDayRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleDataStructureRepresentationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingYearStartDayTextFormatType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingYearStartDayRepresentationType",
            "type": "object"
        },
        "xml_ns5_ReportingYearStartDayTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NonFacetedTextFormatType"
                },
                {}
            ],
            "description": "ReportingYearStartDayTextFormatType is a restricted version of the NonFacetedTextFormatType that fixes the value of the text type to be DayMonth. This type exists solely for the purpose of fixing the representation of the reporting year start day attribute.\r\n\r\n<p>Java class for ReportingYearStartDayTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingYearStartDayTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NonFacetedTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleDataType\" fixed=\"MonthDay\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingYearStartDayTextFormatType",
            "type": "object"
        },
        "xml_ns5_ReportingYearStartDayType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_AttributeType"
                },
                {}
            ],
            "description": "ReportingYearStartDayType defines the structure of the reporting year start day attribute. The reporting year start day attribute takes its semantic from its concept identity (usually the REPORTING_YEAR_START_DAY concept), yet is always has a fixed identifier (REPORTING_YEAR_START_DAY). The reporting year start day attribute always has a fixed text format, which specifies that the format of its value is always a day and month in the ISO 8601 format of '--MM-DD'. As with any other attribute, an attribute relationship must be specified. this relationship should be carefully selected as it will determin what type of data the data structure definition will allow. For example, if an attribute relationship of none is specified, this will mean the data sets conforming to this data structure definition can only contain data with standard reporting periods where the all reporting periods have the same start day. In this case, data reported as standard reporting periods from two entities with different fiscal year start days could not be contained in the same data set.\r\n\r\n<p>Java class for ReportingYearStartDayType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingYearStartDayType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}AttributeType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingYearStartDayRepresentationType\"/>\r\n         &lt;element name=\"AttributeRelationship\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}AttributeRelationshipType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"REPORTING_YEAR_START_DAY\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingYearStartDayType",
            "type": "object"
        },
        "xml_ns5_RepresentationMapType": {
            "allOf": [
                {
                    "properties": {
                        "CodelistMap": {
                            "$ref": "#/definitions/xml_ns4_LocalCodelistMapReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ToTextFormat": {
                            "$ref": "#/definitions/xml_ns5_TextFormatType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ToValueType": {
                            "$ref": "#/definitions/xml_ns5_ToValueTypeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ValueMap": {
                            "$ref": "#/definitions/xml_ns5_ValueMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "RepresentationMapType describes the structure of the mapping of the value of a source to component to a target component. Either a reference to another map defined within the containing structure set or a description of the source and target text formats must be provided. Note that for key family components, only a reference to a codelist map is relevant, since that is the only type of coded representation allowed in a key family.\r\n\r\n<p>Java class for RepresentationMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"RepresentationMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;element name=\"CodelistMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCodelistMapReferenceType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"ToTextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TextFormatType\"/>\r\n           &lt;element name=\"ToValueType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ToValueTypeType\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"ValueMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ValueMapType\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "RepresentationMapType",
            "type": "object"
        },
        "xml_ns5_RepresentationType": {
            "allOf": [
                {
                    "properties": {
                        "Enumeration": {
                            "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "EnumerationFormat": {
                            "$ref": "#/definitions/xml_ns5_CodededTextFormatType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "TextFormat": {
                            "$ref": "#/definitions/xml_ns5_TextFormatType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "RepresentationType is an abstract type that defines a representation. Because the type of item schemes that are allowed as the an enumeration vary based on the object in which this is defined, this type is abstract to force that the enumeration reference be restricted to the proper type of item scheme reference.\r\n\r\n<p>Java class for RepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"RepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TextFormatType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"Enumeration\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\"/>\r\n           &lt;element name=\"EnumerationFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodededTextFormatType\" minOccurs=\"0\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "RepresentationType",
            "type": "object"
        },
        "xml_ns5_SimpleComponentTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_BasicComponentTextFormatType"
                },
                {}
            ],
            "description": "SimpleComponentTextFormatType is a restricted version of the BasicComponentTextFormatType that does not allow for multi-lingual values.\r\n\r\n<p>Java class for SimpleComponentTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SimpleComponentTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BasicComponentTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleDataType\" default=\"String\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SimpleComponentTextFormatType",
            "type": "object"
        },
        "xml_ns5_SimpleDataStructureRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_DataStructureRepresentationType"
                },
                {}
            ],
            "description": "SimpleDataStructureRepresentationType defines the representation for any non-measure and non-time dimension data structure definition component.\r\n\r\n<p>Java class for SimpleDataStructureRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SimpleDataStructureRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}DataStructureRepresentationType\">\r\n       &lt;choice>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleComponentTextFormatType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"Enumeration\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistReferenceType\"/>\r\n           &lt;element name=\"EnumerationFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodededTextFormatType\" minOccurs=\"0\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SimpleDataStructureRepresentationType",
            "type": "object"
        },
        "xml_ns5_StructureMapBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {}
            ],
            "description": "StructureMapBaseType is an abstract base type which forms the basis for the StructureMapType.\r\n\r\n<p>Java class for StructureMapBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureMapBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureMapBaseType",
            "type": "object"
        },
        "xml_ns5_StructureMapType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_StructureMapBaseType"
                },
                {
                    "properties": {
                        "ComponentMap": {
                            "$ref": "#/definitions/xml_ns5_ComponentMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Source": {
                            "$ref": "#/definitions/xml_ns4_StructureOrUsageReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns4_StructureOrUsageReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "isExtension": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "StructureMapType defines the structure for mapping components of one structure to components of another structure. A structure may be referenced directly meaning the map applies wherever the structure is used, or it may be a reference via a structure usage meaning the map only applies within the context of that usage. Using the related structures, one can make extrapolations between maps. For example, if key families, A, B, and C, are all grouped in a related structures container, then a map from key family A to C and a map from key family B to C could be used to infer a relation between key family A to C.\r\n\r\n<p>Java class for StructureMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureMapType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructureMapBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Source\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageReferenceType\"/>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageReferenceType\"/>\r\n         &lt;element name=\"ComponentMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentMapType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"isExtension\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"false\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Source",
                "Target",
                "ComponentMap"
            ],
            "title": "StructureMapType",
            "type": "object"
        },
        "xml_ns5_StructureSetBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {}
            ],
            "description": "StructureSetBaseType is an abstract base type that forms the basis for the StructureSetType.\r\n\r\n<p>Java class for StructureSetBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSetBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\"/>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Description\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSetBaseType",
            "type": "object"
        },
        "xml_ns5_StructureSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_StructureSetBaseType"
                },
                {
                    "properties": {
                        "CategorySchemeMap": {
                            "$ref": "#/definitions/xml_ns5_CategorySchemeMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "CodelistMap": {
                            "$ref": "#/definitions/xml_ns5_CodelistMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ConceptSchemeMap": {
                            "$ref": "#/definitions/xml_ns5_ConceptSchemeMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "HybridCodelistMap": {
                            "$ref": "#/definitions/xml_ns5_HybridCodelistMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "OrganisationSchemeMap": {
                            "$ref": "#/definitions/xml_ns5_OrganisationSchemeMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "RelatedStructure": {
                            "$ref": "#/definitions/xml_ns4_StructureOrUsageReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "ReportingTaxonomyMap": {
                            "$ref": "#/definitions/xml_ns5_ReportingTaxonomyMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "StructureMap": {
                            "$ref": "#/definitions/xml_ns5_StructureMapType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "StructureSetType describes the structure of a structure set. It allows components in one structure, structure usage, or item scheme to be mapped to components in another structural component of the same type.\r\n\r\n<p>Java class for StructureSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSetType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructureSetBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"RelatedStructure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageReferenceType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;choice maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n           &lt;element name=\"OrganisationSchemeMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}OrganisationSchemeMapType\"/>\r\n           &lt;element name=\"CategorySchemeMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CategorySchemeMapType\"/>\r\n           &lt;element name=\"CodelistMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}CodelistMapType\"/>\r\n           &lt;element name=\"ConceptSchemeMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ConceptSchemeMapType\"/>\r\n           &lt;element name=\"ReportingTaxonomyMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ReportingTaxonomyMapType\"/>\r\n           &lt;element name=\"HybridCodelistMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}HybridCodelistMapType\"/>\r\n           &lt;element name=\"StructureMap\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}StructureMapType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSetType",
            "type": "object"
        },
        "xml_ns5_StructureType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {
                    "properties": {
                        "Grouping": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "StructureType is an abstract base type for all structure objects. Concrete instances of this should restrict to a concrete grouping.\r\n\r\n<p>Java class for StructureType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;sequence minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}Grouping\"/>\r\n         &lt;/sequence>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureType",
            "type": "object"
        },
        "xml_ns5_StructureUsageType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_MaintainableType"
                },
                {
                    "properties": {
                        "Structure": {
                            "$ref": "#/definitions/xml_ns4_StructureReferenceBaseType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "StructureUsageType is an abstract base type for all structure usages. It contains a reference to a structure. Concrete instances of this type should restrict the type of structure referenced.\r\n\r\n<p>Java class for StructureUsageType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureUsageType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}MaintainableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureReferenceBaseType\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureUsageType",
            "type": "object"
        },
        "xml_ns5_TargetObject": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_ComponentType"
                },
                {}
            ],
            "description": "TargetObject is an abstract base type from which all target objects of a metadata target are derived. It is based on a component. Implementations of this will refined the local representation so that the allowed values accurately reflect the representation of the target object reference.\r\n\r\n<p>Java class for TargetObject complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TargetObject\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ComponentType\">\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TargetObject",
            "type": "object"
        },
        "xml_ns5_TargetObjectTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_TextFormatType"
                },
                {}
            ],
            "description": "TargetObjectTextFormatType is a restricted version of the TextFormatType that does not allow for any facets and only allows the text types for target objects.\r\n\r\n<p>Java class for TargetObjectTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TargetObjectTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TargetObjectDataType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TargetObjectTextFormatType",
            "type": "object"
        },
        "xml_ns5_TextFormatType": {
            "allOf": [
                {
                    "properties": {
                        "decimals": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "endTime": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "endValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "interval": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "isMultiLingual": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "isSequence": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "maxLength": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "maxValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "minLength": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "minValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "pattern": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "startTime": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "startValue": {
                            "description": "",
                            "type": "number",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "textType": {
                            "$ref": "#/definitions/xml_ns4_DataType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "timeInterval": {
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
            "description": "TextFormatType defines the information for describing a full range of text formats and may place restrictions on the values of the other attributes, referred to as \"facets\".\r\n\r\n<p>Java class for TextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataType\" default=\"String\" />\r\n       &lt;attribute name=\"isSequence\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n       &lt;attribute name=\"interval\" type=\"{http://www.w3.org/2001/XMLSchema}decimal\" />\r\n       &lt;attribute name=\"startValue\" type=\"{http://www.w3.org/2001/XMLSchema}decimal\" />\r\n       &lt;attribute name=\"endValue\" type=\"{http://www.w3.org/2001/XMLSchema}decimal\" />\r\n       &lt;attribute name=\"timeInterval\" type=\"{http://www.w3.org/2001/XMLSchema}duration\" />\r\n       &lt;attribute name=\"startTime\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StandardTimePeriodType\" />\r\n       &lt;attribute name=\"endTime\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StandardTimePeriodType\" />\r\n       &lt;attribute name=\"minLength\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"maxLength\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"minValue\" type=\"{http://www.w3.org/2001/XMLSchema}decimal\" />\r\n       &lt;attribute name=\"maxValue\" type=\"{http://www.w3.org/2001/XMLSchema}decimal\" />\r\n       &lt;attribute name=\"decimals\" type=\"{http://www.w3.org/2001/XMLSchema}positiveInteger\" />\r\n       &lt;attribute name=\"pattern\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n       &lt;attribute name=\"isMultiLingual\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"true\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TextFormatType",
            "type": "object"
        },
        "xml_ns5_TimeDimensionRepresentationType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_SimpleDataStructureRepresentationType"
                },
                {}
            ],
            "description": "TimeDimensionRepresentationType defines the representation for the time dimension. Enumerated values are not allowed.\r\n\r\n<p>Java class for TimeDimensionRepresentationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeDimensionRepresentationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleDataStructureRepresentationType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"TextFormat\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TimeTextFormatType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeDimensionRepresentationType",
            "type": "object"
        },
        "xml_ns5_TimeDimensionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_BaseDimensionType"
                },
                {}
            ],
            "description": "TimeDimensionType describes the structure of a time dimension. The time dimension takes its semantic from its concept identity (usually the TIME_PERIOD concept), yet is always has a fixed identifier (TIME_PERIOD). The time dimension always has a fixed text format, which specifies that its format is always the in the value set of the observational time period (see common:ObservationalTimePeriodType). It is possible that the format may be a sub-set of the observational time period value set. For example, it is possible to state that the representation might always be a calendar year. See the enumerations of the textType attribute in the LocalRepresentation/TextFormat for more details of the possible sub-sets. It is also possible to facet this representation with start and end dates. The purpose of such facts is to restrict the value of the time dimension to occur within the specified range. If the time dimension is expected to allow for the standard reporting periods (see common:ReportingTimePeriodType) to be used, then it is strongly recommended that the reporting year start day attribute also be included in the data structure definition. When the reporting year start day attribute is used, any standard reporting period values will be assumed to be based on the start day contained in this attribute. If the reporting year start day attribute is not included and standard reporting periods are used, these values will be assumed to be based on a reporting year which begins January 1.\r\n\r\n<p>Java class for TimeDimensionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeDimensionType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}BaseDimensionType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"ConceptIdentity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptReferenceType\"/>\r\n         &lt;element name=\"LocalRepresentation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}TimeDimensionRepresentationType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NCNameIDType\" fixed=\"TIME_PERIOD\" />\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeType\" fixed=\"TimeDimension\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeDimensionType",
            "type": "object"
        },
        "xml_ns5_TimeTextFormatType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_SimpleComponentTextFormatType"
                },
                {}
            ],
            "description": "TimeTextFormat is a restricted version of the SimpleComponentTextFormatType that only allows time based format and specifies a default ObservationalTimePeriod representation and facets of a start and end time.\r\n\r\n<p>Java class for TimeTextFormatType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeTextFormatType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}SimpleComponentTextFormatType\">\r\n       &lt;attribute name=\"textType\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimeDataType\" default=\"ObservationalTimePeriod\" />\r\n       &lt;attribute name=\"startTime\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StandardTimePeriodType\" />\r\n       &lt;attribute name=\"endTime\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StandardTimePeriodType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeTextFormatType",
            "type": "object"
        },
        "xml_ns5_ToValueTypeType": {
            "description": "<p>Java class for ToValueTypeType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"ToValueTypeType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}NMTOKEN\">\r\n     &lt;enumeration value=\"Value\"/>\r\n     &lt;enumeration value=\"Name\"/>\r\n     &lt;enumeration value=\"Description\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Value",
                "Name",
                "Description"
            ],
            "title": "ToValueTypeType",
            "type": "string"
        },
        "xml_ns5_TransitionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_IdentifiableType"
                },
                {
                    "properties": {
                        "Condition": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "TargetStep": {
                            "$ref": "#/definitions/xml_ns4_LocalProcessStepReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        },
                        "localID": {
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
            "description": "TransitionType describes the details of a transition, which is an expression in a textual or formalised way of the transformation of data between two specific operations performed on the data.\r\n\r\n<p>Java class for TransitionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TransitionType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}IdentifiableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"TargetStep\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalProcessStepReferenceType\"/>\r\n         &lt;element name=\"Condition\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"localID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "TargetStep",
                "Condition"
            ],
            "title": "TransitionType",
            "type": "object"
        },
        "xml_ns5_UsageStatusType": {
            "description": "<p>Java class for UsageStatusType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"UsageStatusType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}NMTOKEN\">\r\n     &lt;enumeration value=\"Mandatory\"/>\r\n     &lt;enumeration value=\"Conditional\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Mandatory",
                "Conditional"
            ],
            "title": "UsageStatusType",
            "type": "string"
        },
        "xml_ns5_ValueMapType": {
            "allOf": [
                {
                    "properties": {
                        "ValueMapping": {
                            "$ref": "#/definitions/xml_ns5_ValueMappingType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure"
                            }
                        }
                    }
                }
            ],
            "description": "ValueMapType contains a collection of value mappings, which give a source and target value.\r\n\r\n<p>Java class for ValueMapType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ValueMapType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ValueMapping\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}ValueMappingType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ValueMapping"
            ],
            "title": "ValueMapType",
            "type": "object"
        },
        "xml_ns5_ValueMappingType": {
            "allOf": [
                {
                    "properties": {
                        "source": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "target": {
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
            "description": "ValueMappingType specifies the relationship between two values as a source and target.\r\n\r\n<p>Java class for ValueMappingType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ValueMappingType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;attribute name=\"source\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n       &lt;attribute name=\"target\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "source",
                "target"
            ],
            "title": "ValueMappingType",
            "type": "object"
        },
        "xml_ns5_VersionableType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns5_NameableType"
                },
                {
                    "properties": {
                        "validFrom": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "validTo": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "version": {
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
            "description": "VersionableType is an abstract base type for all versionable objects.\r\n\r\n<p>Java class for VersionableType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"VersionableType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure}NameableType\">\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"validFrom\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" />\r\n       &lt;attribute name=\"validTo\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "VersionableType",
            "type": "object"
        },
        "xml_ns6_MappedObjectRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefType"
                },
                {}
            ],
            "description": "MappedObjectRefType defines a set of reference fields for any type of mappable object.\r\n\r\n<p>Java class for MappedObjectRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MappedObjectRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}MappedObjectTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MappedObjectRefType",
            "type": "object"
        },
        "xml_ns6_MappedObjectReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceType"
                },
                {}
            ],
            "description": "MappedObjectReferenceType is a type for referencing any mappable object. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for MappedObjectReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MappedObjectReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}MappedObjectRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MappedObjectReferenceType",
            "type": "object"
        },
        "xml_ns6_MappedObjectType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns6_MappedObjectReferenceType"
                },
                {
                    "properties": {
                        "type": {
                            "$ref": "#/definitions/xml_ns6_SourceTargetType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "MappedObjectType defines a structure for referencing an object and indicating whether it is the source, target, or either for the purposes of query for structure set containing the referenced object in one of the maps it defines.\r\n\r\n<p>Java class for MappedObjectType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MappedObjectType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}MappedObjectReferenceType\">\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/query}SourceTargetType\" default=\"Any\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MappedObjectType",
            "type": "object"
        },
        "xml_ns6_QueryTextType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_TextType"
                },
                {
                    "properties": {
                        "operator": {
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
            "description": "QueryTextType describes the structure of a textual query value. A language must be specified if parallel multi-lingual values are available, otherwise it is ignored.\r\n\r\n<p>Java class for QueryTextType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"QueryTextType\">\r\n   &lt;simpleContent>\r\n     &lt;extension base=\"&lt;http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common>TextType\">\r\n       &lt;attribute name=\"operator\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextOperatorType\" default=\"equal\" />\r\n     &lt;/extension>\r\n   &lt;/simpleContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "QueryTextType",
            "type": "object"
        },
        "xml_ns6_SourceTargetType": {
            "description": "<p>Java class for SourceTargetType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"SourceTargetType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"Any\"/>\r\n     &lt;enumeration value=\"Source\"/>\r\n     &lt;enumeration value=\"Target\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Any",
                "Source",
                "Target"
            ],
            "title": "SourceTargetType",
            "type": "string"
        },
        "xml_ns7_FooterMessageType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_CodedStatusMessageType"
                },
                {
                    "properties": {
                        "severity": {
                            "$ref": "#/definitions/xml_ns7_SeverityCodeType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "FooterMessageType defines the structure of a message that is contained in the footer of a message. It is a status message that have a severity code of Error, Information, or Warning added to it.\r\n\r\n<p>Java class for FooterMessageType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"FooterMessageType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodedStatusMessageType\">\r\n       &lt;attribute name=\"severity\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}SeverityCodeType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "FooterMessageType",
            "type": "object"
        },
        "xml_ns7_FooterType": {
            "allOf": [
                {
                    "properties": {
                        "Message": {
                            "$ref": "#/definitions/xml_ns7_FooterMessageType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer"
                            }
                        }
                    }
                }
            ],
            "description": "FooterType describes the structure of a message footer. The footer is used to convey any error, information, or warning messages. This is to be used when the message has payload, but also needs to communicate additional information. If an error occurs and no payload is generated, an Error message should be returned.\r\n\r\n<p>Java class for FooterType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"FooterType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Message\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/message/footer}FooterMessageType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Message"
            ],
            "title": "FooterType",
            "type": "object"
        },
        "xml_ns7_SeverityCodeType": {
            "description": "<p>Java class for SeverityCodeType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"SeverityCodeType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"Error\"/>\r\n     &lt;enumeration value=\"Warning\"/>\r\n     &lt;enumeration value=\"Information\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Error",
                "Warning",
                "Information"
            ],
            "title": "SeverityCodeType",
            "type": "string"
        },
        "xml_ns7_QueryableDataSourceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_QueryableDataSourceType"
                },
                {
                    "properties": {
                        "TYPE": {
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
            "description": "QueryableDataSourceType describes a queryable data source, and add a fixed attribute for ensuring only one queryable source can be provided.\r\n\r\n<p>Java class for QueryableDataSourceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"QueryableDataSourceType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}QueryableDataSourceType\">\r\n       &lt;attribute name=\"TYPE\" type=\"{http://www.w3.org/2001/XMLSchema}string\" fixed=\"QUERY\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "QueryableDataSourceType",
            "type": "object"
        },
        "xml_ns8_DataScopeType": {
            "description": "<p>Java class for DataScopeType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"DataScopeType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"DataStructure\"/>\r\n     &lt;enumeration value=\"ConstrainedDataStructure\"/>\r\n     &lt;enumeration value=\"Dataflow\"/>\r\n     &lt;enumeration value=\"ProvisionAgreement\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "DataStructure",
                "ConstrainedDataStructure",
                "Dataflow",
                "ProvisionAgreement"
            ],
            "title": "DataScopeType",
            "type": "string"
        },
        "xml_ns8_DataSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "Group": {
                            "$ref": "#/definitions/xml_ns8_GroupType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "Obs": {
                            "$ref": "#/definitions/xml_ns8_ObsType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "REPORTING_YEAR_START_DAY": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "Series": {
                            "$ref": "#/definitions/xml_ns8_SeriesType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "action": {
                            "$ref": "#/definitions/xml_ns4_ActionType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "dataScope": {
                            "$ref": "#/definitions/xml_ns8_DataScopeType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "publicationPeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "publicationYear": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "reportingBeginDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "reportingEndDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "setID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "structureRef": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "validFromDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        },
                        "validToDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific"
                            }
                        }
                    }
                }
            ],
            "description": "<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;DataSetType is the abstract type which defines the base structure for any data structure definition specific data set. A derived data set type will be created that is specific to a data structure definition and the details of the organisation of the data (i.e. which dimension is the observation dimension and whether explicit measures should be used). Data is organised into either a collection of series (grouped observations) or a collection of un-grouped observations. The derived data set type will restrict this choice to be either grouped or un-grouped observations. If this dimension is \"AllDimensions\" then the derived data set type must consist of a collection of un-grouped observations; otherwise the data set will contain a collection of series with the observations in the series disambiguated by the specified dimension at the observation level. This data set is capable of containing data (observed values) and/or documentation (attribute values) and can be used for incremental updates and deletions (i.e. only the relevant updates or deletes are exchanged). It is assumed that each series or un-grouped observation will be distinct in its purpose. For example, if series contains both data and documentation, it assumed that each series will have a unique key. If the series contains only data or only documentation, then it is possible that another series with the same key might exist, but with not with the same purpose (i.e. to provide data or documentation) as the first series.&lt;/p&gt;\r\n </pre>\r\n\r\n<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;This base type is designed such that derived types can be processed in a generic manner; it assures that data structure definition specific data will have a consistent structure. The group, series, and observation elements are unqualified, meaning that they are not qualified with a namespace in an instance. This means that in the derived data set types, the elements will always be the same, regardless of the target namespace of the schemas which defines these derived types. This allows for consistent processing of the structure without regard to what the namespace might be for the data structure definition specific schema.&lt;/p&gt;\r\n </pre>\r\n\r\n<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;The data set can contain values for attributes which do not have an attribute relationship with any data structure definition components. These attribute values will exist in XML attributes in this element based on this type (DataSet). This is specified in the content model with the declaration of anyAttributes in the \"local\" namespace. The derived data set type will refine this structure so that the attributes are explicit. The XML attributes will be given a name based on the attribute's identifier. These XML attributes will be unqualified (meaning they do not have a namespace associated with them). To allow for generic processing, it is required that the only unqualified XML attributes in the derived data set type (outside of the standard data set attributes) be for attributes declared in the data structure definition. If additional attributes are required, these should be qualified with a namespace so that a generic application can easily distinguish them as not being meant to represent a data structure definition attribute.&lt;/p&gt;\r\n </pre>\r\n\r\n\r\n<p>Java class for DataSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSetType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;element name=\"Group\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}GroupType\" maxOccurs=\"unbounded\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Series\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}SeriesType\" maxOccurs=\"unbounded\" form=\"unqualified\"/>\r\n           &lt;element name=\"Obs\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}ObsType\" maxOccurs=\"unbounded\" form=\"unqualified\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n       &lt;attGroup ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}SetAttributeGroup\"/>\r\n       &lt;attribute name=\"REPORTING_YEAR_START_DAY\" type=\"{http://www.w3.org/2001/XMLSchema}gMonthDay\" />\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "structureRef",
                "dataScope"
            ],
            "title": "DataSetType",
            "type": "object"
        },
        "xml_ns8_GroupType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "REPORTING_YEAR_START_DAY": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "type": {
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
            "description": "<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;GroupType is the abstract type which defines a structure which is used to communicate attribute values for a group defined in a data structure definition. The group can consist of either a subset of the dimensions defined by the data structure definition, or an association to an attachment constraint, which in turn defines key sets to which attributes can be attached. In the case that the group is based on an attachment constraint, only the identification of group is provided. It is expected that a system which is processing this will relate that identifier to the key sets defined in the constraint and apply the values provided for the attributes appropriately.&lt;/p&gt;\r\n </pre>\r\n\r\n<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;Data structure definition schemas will drive types based on this for each group defined in the data structure definition. Both the dimension values which make up the key (if applicable) and the attribute values associated with the group will be represented with XML attributes. This is specified in the content model with the declaration of anyAttributes in the \"local\" namespace. The derived group type will refine this structure so that the attributes are explicit. The XML attributes will be given a name based on the attribute's identifier. These XML attributes will be unqualified (meaning they do not have a namespace associated with them). The dimension XML attributes will be required while the attribute XML attributes will be optional. To allow for generic processing, it is required that the only unqualified XML attributes in the derived group type be for the group dimensions and attributes declared in the data structure definition. If additional attributes are required, these should be qualified with a namespace so that a generic application can easily distinguish them as not being meant to represent a data structure definition dimension or attribute.&lt;/p&gt;\r\n </pre>\r\n\r\n\r\n<p>Java class for GroupType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"REPORTING_YEAR_START_DAY\" type=\"{http://www.w3.org/2001/XMLSchema}gMonthDay\" />\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GroupType",
            "type": "object"
        },
        "xml_ns8_ObsType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "OBS_VALUE": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "REPORTING_YEAR_START_DAY": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "TIME_PERIOD": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "type": {
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
            "description": "<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;ObsType is the abstract type which defines the structure of a grouped or un-grouped observation. The observation must be provided a key, which is either a value for the dimension which is declared to be at the observation level if the observation is grouped, or a full set of values for all dimensions in the data structure definition if the observation is un-grouped. This key should disambiguate the observation within the context in which it is defined (e.g. there should not be another observation with the same dimension value in a series). The observation can contain an observed value and/or attribute values.&lt;/p&gt;\r\n </pre>\r\n\r\n<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;Data structure definition schemas will drive a type or types based on this that is specific to the data structure definition and the variation of the format being expressed in the schema. The dimension value(s) which make up the key and the attribute values associated with the key dimension(s) or the primary measure will be represented with XML attributes. This is specified in the content model with the declaration of anyAttributes in the \"local\" namespace. The derived observation type will refine this structure so that the attributes are explicit. The XML attributes will be given a name based on the attribute's identifier. These XML attributes will be unqualified (meaning they do not have a namespace associated with them). The dimension XML attribute(s) will be required while the attribute XML attributes will be optional. To allow for generic processing, it is required that the only unqualified XML attributes in the derived observation type be for the observation dimension(s) and attributes declared in the data structure definition. If additional attributes are required, these should be qualified with a namespace so that a generic application can easily distinguish them as not being meant to represent a data structure definition dimension or attribute.&lt;/p&gt;\r\n </pre>\r\n\r\n<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;If the data structure definition specific schema requires that explicit measures be used (only possible when the measure dimension is specified at the observation), then there will be types derived for each measure defined by the measure dimension. In this case, the types will be specific to each measure, which is to say that the representation of the primary measure (i.e. the observed value) will be restricted to that which is specified by the specific measure.&lt;/p&gt;\r\n </pre>\r\n\r\n\r\n<p>Java class for ObsType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ObsType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;attribute name=\"type\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"TIME_PERIOD\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" />\r\n       &lt;attribute name=\"REPORTING_YEAR_START_DAY\" type=\"{http://www.w3.org/2001/XMLSchema}gMonthDay\" />\r\n       &lt;attribute name=\"OBS_VALUE\" type=\"{http://www.w3.org/2001/XMLSchema}anySimpleType\" />\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ObsType",
            "type": "object"
        },
        "xml_ns8_SeriesType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "Obs": {
                            "$ref": "#/definitions/xml_ns8_ObsType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "REPORTING_YEAR_START_DAY": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "TIME_PERIOD": {
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
            "description": "<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;SeriesType is the abstract type which defines a structure which is used to group a collection of observations which have a key in common. The key for a series is every dimension defined in the data structure definition, save the dimension declared to be at the observation level for this data set. In addition to observations, values can be provided for attributes which are associated with the dimensions which make up this series key (so long as the attributes do not specify a group attachment or also have an relationship with the observation dimension). It is possible for the series to contain only observations or only attribute values, or both.&lt;/p&gt;\r\n </pre>\r\n\r\n<pre>\r\n &lt;?xml version=\"1.0\" encoding=\"UTF-8\"?&gt;&lt;p xmlns=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific\" xmlns:common=\"http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\"&gt;Data structure definition schemas will drive a type based on this that is specific to the data structure definition and the variation of the format being expressed in the schema. Both the dimension values which make up the key and the attribute values associated with the key dimensions will be represented with XML attributes. This is specified in the content model with the declaration of anyAttributes in the \"local\" namespace. The derived series type will refine this structure so that the attributes are explicit. The XML attributes will be given a name based on the attribute's identifier. These XML attributes will be unqualified (meaning they do not have a namespace associated with them). The dimension XML attributes will be required while the attribute XML attributes will be optional. To allow for generic processing, it is required that the only unqualified XML attributes in the derived group type be for the series dimensions and attributes declared in the data structure definition. If additional attributes are required, these should be qualified with a namespace so that a generic application can easily distinguish them as not being meant to represent a data structure definition dimension or attribute.&lt;/p&gt;\r\n </pre>\r\n\r\n\r\n<p>Java class for SeriesType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SeriesType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Obs\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}ObsType\" maxOccurs=\"unbounded\" minOccurs=\"0\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"TIME_PERIOD\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" />\r\n       &lt;attribute name=\"REPORTING_YEAR_START_DAY\" type=\"{http://www.w3.org/2001/XMLSchema}gMonthDay\" />\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SeriesType",
            "type": "object"
        },
        "xml_ns8_TimeSeriesDataSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns8_DataSetType"
                },
                {}
            ],
            "description": "TimeSeriesDataSetType is the abstract type which defines the base structure for any data structure definition specific time series based data set. A derived data set type will be created that is specific to a data structure definition. Unlike the base format, only one variation of this is allowed for a data structure definition. This variation is the time dimension as the observation dimension. Data is organised into a collection of time series. Because this derivation is achieved using restriction, data sets conforming to this type will inherently conform to the base data set structure as well. In fact, data structure specific here will be identical to data in the base data set when the time dimension is the observation dimension, even for the derived data set types. This means that the data contained in this structure can be processed in exactly the same manner as the base structure. The same rules for derivation as the base data set type apply to this specialized data set.\r\n\r\n<p>Java class for TimeSeriesDataSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeSeriesDataSetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}DataSetType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;element name=\"Group\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}GroupType\" maxOccurs=\"unbounded\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element name=\"Series\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}TimeSeriesType\" maxOccurs=\"unbounded\" form=\"unqualified\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n       &lt;attGroup ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}SetAttributeGroup\"/>\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeSeriesDataSetType",
            "type": "object"
        },
        "xml_ns8_TimeSeriesObsType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns8_ObsType"
                },
                {}
            ],
            "description": "TimeSeriesObsType defines the abstract structure of a time series observation. The observation must be provided a value for the time dimension. This time value should disambiguate the observation within the series in which it is defined (i.e. there should not be another observation with the same time value). The observation can contain an observed value and/or attribute values. The same rules for derivation as the base observation type apply to this specialized observation.\r\n\r\n<p>Java class for TimeSeriesObsType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeSeriesObsType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}ObsType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"TIME_PERIOD\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" />\r\n       &lt;attribute name=\"OBS_VALUE\" type=\"{http://www.w3.org/2001/XMLSchema}anySimpleType\" />\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeSeriesObsType",
            "type": "object"
        },
        "xml_ns8_TimeSeriesType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns8_SeriesType"
                },
                {}
            ],
            "description": "TimeSeriesType defines an abstract structure which is used to group a collection of observations which have a key in common, organised by time. The key for a series is every dimension defined in the data structure definition, save the time dimension. In addition to observations, values can be provided for attributes which are associated with the dimensions which make up this series key (so long as the attributes do not specify a group attachment or also have an relationship with the time dimension). It is possible for the series to contain only observations or only attribute values, or both. The same rules for derivation as the base series type apply to this specialized series.\r\n\r\n<p>Java class for TimeSeriesType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeSeriesType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}SeriesType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Obs\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/data/structurespecific}TimeSeriesObsType\" maxOccurs=\"unbounded\" minOccurs=\"0\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeSeriesType",
            "type": "object"
        },
        "xml_ns9_MetadataSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "Name": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Report": {
                            "$ref": "#/definitions/xml_ns9_ReportType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "action": {
                            "$ref": "#/definitions/xml_ns4_ActionType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "publicationPeriod": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "publicationYear": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "reportingBeginDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "reportingEndDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "setID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "structureRef": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "validFromDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "validToDate": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        }
                    }
                }
            ],
            "description": "MetadataSetType is an abstract base type the forms the basis for a metadata structure specific metadata set. It is restricted by the metadata structure definition specific schema to meet its needs.\r\n\r\n<p>Java class for MetadataSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataSetType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Name\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;element name=\"Report\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific}ReportType\" maxOccurs=\"unbounded\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n       &lt;attGroup ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific}SetAttributeGroup\"/>\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "structureRef",
                "Report"
            ],
            "title": "MetadataSetType",
            "type": "object"
        },
        "xml_ns9_ReferenceValueType": {
            "allOf": [
                {
                    "properties": {
                        "ConstraintContentReference": {
                            "$ref": "#/definitions/xml_ns4_AttachmentConstraintReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "DataKey": {
                            "$ref": "#/definitions/xml_ns4_DataKeyType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "DataSetReference": {
                            "$ref": "#/definitions/xml_ns4_SetReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "ObjectReference": {
                            "$ref": "#/definitions/xml_ns4_ReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "ReportPeriod": {
                            "description": "",
                            "items": {
                                "type": "string"
                            },
                            "type": "array",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "id": {
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
            "description": "ReferenceValueType is an abstract base type that forms the basis of a target reference value. A target reference value will either be a reference to an identifiable object, a data key, a reference to a data set, or a report period. The choice of these options will be refined to only one according to the definition of the target in the metadata structure definition.\r\n\r\n<p>Java class for ReferenceValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReferenceValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;element name=\"ObjectReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\" form=\"unqualified\"/>\r\n         &lt;element name=\"DataKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyType\" form=\"unqualified\"/>\r\n         &lt;element name=\"DataSetReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\" form=\"unqualified\"/>\r\n         &lt;element name=\"ConstraintContentReference\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AttachmentConstraintReferenceType\" form=\"unqualified\"/>\r\n         &lt;element name=\"ReportPeriod\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationalTimePeriodType\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReferenceValueType",
            "type": "object"
        },
        "xml_ns9_ReportType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "AttributeSet": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "Target": {
                            "$ref": "#/definitions/xml_ns9_TargetType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "id": {
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
            "description": "ReportType is an abstract base type the forms the basis for a metadata structure definition specific report, based on the defined report structures. This type is restricted in the metadata structure definition specific schema so that the Target and AttributeSet conform to the prescribed report structure.\r\n\r\n<p>Java class for ReportType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Target\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific}TargetType\" form=\"unqualified\"/>\r\n         &lt;element name=\"AttributeSet\" type=\"{http://www.w3.org/2001/XMLSchema}anyType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Target",
                "AttributeSet"
            ],
            "title": "ReportType",
            "type": "object"
        },
        "xml_ns9_ReportedAttributeType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_AnnotableType"
                },
                {
                    "properties": {
                        "AttributeSet": {
                            "description": "",
                            "type": "object",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "StructuredText": {
                            "$ref": "#/definitions/xml_ns4_XHTMLType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Text": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "id": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "isMetadataAttribute": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific"
                            }
                        },
                        "value": {
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
            "description": "ReportedAttributeType is an abstract base type that forms the basis for a metadata structure specific metadata attribute. A value for the attribute can be supplied as either a single value, or multi-lingual text values (either structured or unstructured). An optional set of child metadata attributes is also available if the metadata attribute definition defines nested metadata attributes. The metadata structure definition specific schema will refine this type for each metadata attribute such that the content can be validation against what is defined in the metadata structure definition.\r\n\r\n<p>Java class for ReportedAttributeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportedAttributeType\">\r\n   &lt;complexContent>\r\n     &lt;extension base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotableType\">\r\n       &lt;sequence>\r\n         &lt;choice minOccurs=\"0\">\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Text\" maxOccurs=\"unbounded\"/>\r\n           &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructuredText\" maxOccurs=\"unbounded\"/>\r\n         &lt;/choice>\r\n         &lt;element name=\"AttributeSet\" type=\"{http://www.w3.org/2001/XMLSchema}anyType\" minOccurs=\"0\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"value\" type=\"{http://www.w3.org/2001/XMLSchema}anySimpleType\" />\r\n       &lt;attribute name=\"isMetadataAttribute\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"true\" />\r\n     &lt;/extension>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportedAttributeType",
            "type": "object"
        },
        "xml_ns9_TargetType": {
            "allOf": [
                {
                    "properties": {
                        "ReferenceValue": {
                            "$ref": "#/definitions/xml_ns9_ReferenceValueType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "id": {
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
            "description": "TargetType is an abstract base type that forms the basis of a the metadata report's metadata target value. This type is restricted in the metadata structure definition specific schema so that the ReferenceValue elements conform to the targets specified in the metadata target defined in the metadata structure definition.\r\n\r\n<p>Java class for TargetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TargetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"ReferenceValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/metadata/structurespecific}ReferenceValueType\" maxOccurs=\"unbounded\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "ReferenceValue"
            ],
            "title": "TargetType",
            "type": "object"
        },
      <jsp:include page="definitions-sr.jsp" />
   }