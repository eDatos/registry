<%@page pageEncoding="UTF-8"%>
	"xml_ns4_ActionType": {
            "description": "<p>Java class for ActionType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"ActionType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}NMTOKEN\">\r\n     &lt;enumeration value=\"Append\"/>\r\n     &lt;enumeration value=\"Replace\"/>\r\n     &lt;enumeration value=\"Delete\"/>\r\n     &lt;enumeration value=\"Information\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Append",
                "Replace",
                "Delete",
                "Information"
            ],
            "title": "ActionType",
            "type": "string"
        },
        "xml_ns4_AgencyRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationRefBaseType"
                },
                {}
            ],
            "description": "AgencyRefType contains a set of reference fields for referencing an agency within an agency scheme.\r\n\r\n<p>Java class for AgencyRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AgencyRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"Agency\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AgencyRefType",
            "type": "object"
        },
        "xml_ns4_AgencyReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "AgencyReferenceType is a type for referencing an agency. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for AgencyReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AgencyReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AgencyRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AgencyReferenceType",
            "type": "object"
        },
        "xml_ns4_AgencySchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeRefBaseType"
                },
                {}
            ],
            "description": "AgencySchemeRefType contains a set of reference fields for an agency scheme.\r\n\r\n<p>Java class for AgencySchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AgencySchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeTypeCodelistType\" fixed=\"AgencyScheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AgencySchemeRefType",
            "type": "object"
        },
        "xml_ns4_AgencySchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "AgencySchemeReferenceType is a type for referencing an agency scheme object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for AgencySchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AgencySchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AgencySchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AgencySchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_AnnotableType": {
            "allOf": [
                {
                    "properties": {
                        "Annotations": {
                            "$ref": "#/definitions/xml_ns4_AnnotationsType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        }
                    }
                }
            ],
            "description": "AnnotableType is an abstract base type used for all annotable artefacts. Any type that provides for annotations should extend this type.\r\n\r\n<p>Java class for AnnotableType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AnnotableType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}Annotations\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AnnotableType",
            "type": "object"
        },
        "xml_ns4_AnnotationType": {
            "allOf": [
                {
                    "properties": {
                        "AnnotationText": {
                            "$ref": "#/definitions/xml_ns4_TextType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "AnnotationTitle": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "AnnotationType": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "AnnotationURL": {
                            "description": "",
                            "type": "string",
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
            "description": "AnnotationType provides for non-documentation notes and annotations to be embedded in data and structure messages. It provides optional fields for providing a title, a type description, a URI, and the text of the annotation.\r\n\r\n<p>Java class for AnnotationType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AnnotationType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"AnnotationTitle\" type=\"{http://www.w3.org/2001/XMLSchema}string\" minOccurs=\"0\"/>\r\n         &lt;element name=\"AnnotationType\" type=\"{http://www.w3.org/2001/XMLSchema}string\" minOccurs=\"0\"/>\r\n         &lt;element name=\"AnnotationURL\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\"/>\r\n         &lt;element name=\"AnnotationText\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TextType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" type=\"{http://www.w3.org/2001/XMLSchema}string\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AnnotationType",
            "type": "object"
        },
        "xml_ns4_AnnotationsType": {
            "allOf": [
                {
                    "properties": {
                        "Annotation": {
                            "$ref": "#/definitions/xml_ns4_AnnotationType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        }
                    }
                }
            ],
            "description": "AnnotationsType provides for a list of annotations to be attached to data and structure messages.\r\n\r\n<p>Java class for AnnotationsType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AnnotationsType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Annotation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnnotationType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "Annotation"
            ],
            "title": "AnnotationsType",
            "type": "object"
        },
        "xml_ns4_AnyCodelistRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "AnyCodelistRefType is a type for referencing any codelist object (either a codelist or a hierarchical codelist).\r\n\r\n<p>Java class for AnyCodelistRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AnyCodelistRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AnyCodelistRefType",
            "type": "object"
        },
        "xml_ns4_AnyCodelistReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "AnyCodelistReferenceType is a specific type of a reference for referencing either a codelist or a hierarchical codelist usage. It consists of a URN and/or a complete set of reference fields; agency, id and version. If the complete set of reference fields is used, it is required that a class be provided so that the type of object referenced is clear.\r\n\r\n<p>Java class for AnyCodelistReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AnyCodelistReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnyCodelistRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AnyCodelistReferenceType",
            "type": "object"
        },
        "xml_ns4_AnyLocalCodeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RefBaseType"
                },
                {}
            ],
            "description": "AnyLocalCodeRefType provides a local reference to any code object.\r\n\r\n<p>Java class for AnyLocalCodeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AnyLocalCodeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RefBaseType\">\r\n       &lt;attribute name=\"containerID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"true\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodeTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AnyLocalCodeRefType",
            "type": "object"
        },
        "xml_ns4_AnyLocalCodeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "AnyLocalCodeReferenceType provides a simple references to any code or hierarchical code where the identification of the codelist or hierarchical codelist which defines it is contained in another context.\r\n\r\n<p>Java class for AnyLocalCodeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AnyLocalCodeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AnyLocalCodeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AnyLocalCodeReferenceType",
            "type": "object"
        },
        "xml_ns4_AttachmentConstraintRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ConstraintRefType"
                },
                {}
            ],
            "description": "AttachmentConstraintRefType contains a set of reference fields for an attachment constraint.\r\n\r\n<p>Java class for AttachmentConstraintRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttachmentConstraintRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintRefType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintTypeCodelistType\" fixed=\"AttachmentConstraint\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttachmentConstraintRefType",
            "type": "object"
        },
        "xml_ns4_AttachmentConstraintReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ConstraintReferenceType"
                },
                {}
            ],
            "description": "AttachmentConstraintReferenceType is a type for referencing a attachment constraint object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for AttachmentConstraintReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttachmentConstraintReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AttachmentConstraintRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttachmentConstraintReferenceType",
            "type": "object"
        },
        "xml_ns4_AttributeDescriptorRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListRefBaseType"
                },
                {}
            ],
            "description": "AttributeDescriptorRefType contains a reference to the attribute descriptor within a data structure definition.\r\n\r\n<p>Java class for AttributeDescriptorRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeDescriptorRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"ATTRIBUTE_DESCRIPTOR\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"AttributeDescriptor\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeDescriptorRefType",
            "type": "object"
        },
        "xml_ns4_AttributeDescriptorReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListReferenceType"
                },
                {}
            ],
            "description": "AttributeDescriptorReferenceType is a type for referencing an attribute descriptor object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for AttributeDescriptorReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeDescriptorReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AttributeDescriptorRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeDescriptorReferenceType",
            "type": "object"
        },
        "xml_ns4_AttributeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "AttributeRefType contains a reference to an attribute within a data structure definition. Note that since there is only one attribute descriptor, the container reference fields are prohibited.\r\n\r\n<p>Java class for AttributeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"Attribute\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeRefType",
            "type": "object"
        },
        "xml_ns4_AttributeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "AttributeReferenceType is a type for referencing an attribute object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for AttributeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AttributeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeReferenceType",
            "type": "object"
        },
        "xml_ns4_AttributeValueSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentValueSetType"
                },
                {}
            ],
            "description": "AttributeValueSetType defines the structure for providing values for a data attribute. If no values are provided, the attribute is implied to include/excluded from the region in which it is defined, with no regard to the value of the data attribute. Note that for metadata attributes which occur within other metadata attributes, a nested identifier can be provided. For example, a value of CONTACT.ADDRESS.STREET refers to the metadata attribute with the identifier STREET which exists in the ADDRESS metadata attribute in the CONTACT metadata attribute, which is defined at the root of the report structure.\r\n\r\n<p>Java class for AttributeValueSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"AttributeValueSetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentValueSetType\">\r\n       &lt;choice minOccurs=\"0\">\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleValueType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"TimeRange\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimeRangeValueType\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SingleNCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "AttributeValueSetType",
            "type": "object"
        },
        "xml_ns4_CategorisationRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "CategorisationRefType provides a reference to a categorisation via a complete set of reference fields.\r\n\r\n<p>Java class for CategorisationRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorisationRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableTypeCodelistType\" fixed=\"Categorisation\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"categoryscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorisationRefType",
            "type": "object"
        },
        "xml_ns4_CategorisationReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "CategorisationReferenceType is a type for referencing a categorisation object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for CategorisationReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorisationReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CategorisationRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorisationReferenceType",
            "type": "object"
        },
        "xml_ns4_CategoryRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemRefBaseType"
                },
                {}
            ],
            "description": "CategoryRefType references a category from within a category scheme. Reference fields are required for both the scheme and the item.\r\n\r\n<p>Java class for CategoryRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategoryRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemRefBaseType\">\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"Category\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"categoryscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategoryRefType",
            "type": "object"
        },
        "xml_ns4_CategoryReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemReferenceType"
                },
                {}
            ],
            "description": "CategoryReferenceType is a type for referencing a category object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for CategoryReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategoryReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CategoryRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategoryReferenceType",
            "type": "object"
        },
        "xml_ns4_CategorySchemeMapRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "CategorySchemeMapRefType contains a set of reference fields for a category scheme map.\r\n\r\n<p>Java class for CategorySchemeMapRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorySchemeMapRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"CategorySchemeMap\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"mapping\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorySchemeMapRefType",
            "type": "object"
        },
        "xml_ns4_CategorySchemeMapReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "CategorySchemeMapReferenceType is a type for referencing a category scheme map object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for CategorySchemeMapReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorySchemeMapReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CategorySchemeMapRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorySchemeMapReferenceType",
            "type": "object"
        },
        "xml_ns4_CategorySchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeRefBaseType"
                },
                {}
            ],
            "description": "CategorySchemeRefType provides a reference to a category scheme via a complete set of reference fields.\r\n\r\n<p>Java class for CategorySchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorySchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeTypeCodelistType\" fixed=\"CategoryScheme\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"categoryscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorySchemeRefType",
            "type": "object"
        },
        "xml_ns4_CategorySchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "CategorySchemeReferenceType is a type for referencing a category scheme object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for CategorySchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CategorySchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CategorySchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CategorySchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_ChildObjectRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RefBaseType"
                },
                {}
            ],
            "description": "ChildObjectRefBaseType is an abstract base type for referencing any child object defined directly within a maintainable object.\r\n\r\n<p>Java class for ChildObjectRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ChildObjectRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ChildObjectRefBaseType",
            "type": "object"
        },
        "xml_ns4_ChildObjectReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "ChildObjectReferenceType is an abstract base type used for referencing a particular object defined directly within a maintainable object. It consists of a URN and/or a complete set of reference fields; agency, maintainable id (maintainableParentID), maintainable version (maintainableParentVersion), the object id (which can be nested), and optionally the object version (if applicable).\r\n\r\n<p>Java class for ChildObjectReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ChildObjectReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ChildObjectReferenceType",
            "type": "object"
        },
        "xml_ns4_CodeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemRefBaseType"
                },
                {}
            ],
            "description": "CodeRefType references a code from within a codelist. Reference fields are required for both the scheme and the item.\r\n\r\n<p>Java class for CodeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemRefBaseType\">\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"Code\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodeRefType",
            "type": "object"
        },
        "xml_ns4_CodeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemReferenceType"
                },
                {}
            ],
            "description": "CodeReferenceType is a type for referencing a code object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for CodeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodeReferenceType",
            "type": "object"
        },
        "xml_ns4_CodelistMapRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "CodelistMapRefType contains a set of reference fields for a codelist map.\r\n\r\n<p>Java class for CodelistMapRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodelistMapRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"CodelistMap\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"mapping\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodelistMapRefType",
            "type": "object"
        },
        "xml_ns4_CodelistMapReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "CodelistMapReferenceType is a type for referencing a codelist map object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for CodelistMapReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodelistMapReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistMapRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodelistMapReferenceType",
            "type": "object"
        },
        "xml_ns4_CodelistRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeRefBaseType"
                },
                {}
            ],
            "description": "CodelistRefType provides a reference to a codelist via a complete set of reference fields.\r\n\r\n<p>Java class for CodelistRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodelistRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeTypeCodelistType\" fixed=\"Codelist\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodelistRefType",
            "type": "object"
        },
        "xml_ns4_CodelistReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "CodelistReferenceType is a type for referencing a codelist object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for CodelistReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CodelistReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CodelistRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CodelistReferenceType",
            "type": "object"
        },
        "xml_ns4_ComponentListRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "ComponentListRefBaseType is an abstract base type for referencing a component list within a structure.\r\n\r\n<p>Java class for ComponentListRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentListRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentListRefBaseType",
            "type": "object"
        },
        "xml_ns4_ComponentListReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "ComponentListReferenceType is an abstract base type used for referencing component lists within a structure. It consists of a URN and/or a complete set of reference fields (structure agency, structure id, structure version, and component list id).\r\n\r\n<p>Java class for ComponentListReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentListReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentListReferenceType",
            "type": "object"
        },
        "xml_ns4_ComponentRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ContainerChildObjectRefBaseType"
                },
                {}
            ],
            "description": "ComponentRefBaseType is an abstract base type for referencing a component contained in a component list within a structure.\r\n\r\n<p>Java class for ComponentRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContainerChildObjectRefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"containerID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentRefBaseType",
            "type": "object"
        },
        "xml_ns4_ComponentReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ContainerChildObjectReferenceType"
                },
                {}
            ],
            "description": "ComponentReferenceType is an abstract base type used for referencing components within a structure definition. It consists of a URN and/or a complete set of reference fields (structure agency, structure id, structure version, component list id, and component id).\r\n\r\n<p>Java class for ComponentReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContainerChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ComponentReferenceType",
            "type": "object"
        },
        "xml_ns4_ComponentValueSetType": {
            "allOf": [
                {
                    "properties": {
                        "DataKey": {
                            "$ref": "#/definitions/xml_ns4_DataKeyType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "DataSet": {
                            "$ref": "#/definitions/xml_ns4_SetReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Object": {
                            "$ref": "#/definitions/xml_ns4_ObjectReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "TimeRange": {
                            "$ref": "#/definitions/xml_ns4_TimeRangeValueType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Value": {
                            "$ref": "#/definitions/xml_ns4_SimpleValueType",
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
                        "include": {
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
            "description": "ComponentValueSetType is an abstract base type which is used to provide a set of value for a referenced component. Implementations of this type will be based on a particular component type and refine the allowed values to reflect the types of values that are possible for that type of component.\r\n\r\n<p>Java class for ComponentValueSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ComponentValueSetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice minOccurs=\"0\">\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleValueType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"Object\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"TimeRange\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimeRangeValueType\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"include\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"true\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "id"
            ],
            "title": "ComponentValueSetType",
            "type": "object"
        },
        "xml_ns4_ConceptRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemRefBaseType"
                },
                {}
            ],
            "description": "ConceptRefType references a concept from within a concept scheme. Reference fields are required for both the scheme and the item.\r\n\r\n<p>Java class for ConceptRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemRefBaseType\">\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"Concept\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"conceptscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptRefType",
            "type": "object"
        },
        "xml_ns4_ConceptReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemReferenceType"
                },
                {}
            ],
            "description": "ConceptReferenceType is a type for referencing a concept object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ConceptReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptReferenceType",
            "type": "object"
        },
        "xml_ns4_ConceptSchemeMapRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "ConceptSchemeMapRefType contains a set of reference fields for a concept scheme map.\r\n\r\n<p>Java class for ConceptSchemeMapRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptSchemeMapRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"ConceptSchemeMap\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"mapping\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptSchemeMapRefType",
            "type": "object"
        },
        "xml_ns4_ConceptSchemeMapReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "ConceptSchemeMapReferenceType is a type for referencing a concept scheme map object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ConceptSchemeMapReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptSchemeMapReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptSchemeMapRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptSchemeMapReferenceType",
            "type": "object"
        },
        "xml_ns4_ConceptSchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeRefBaseType"
                },
                {}
            ],
            "description": "ConceptSchemeRefType provides a reference to a concept scheme via a complete set of reference fields.\r\n\r\n<p>Java class for ConceptSchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptSchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeTypeCodelistType\" fixed=\"ConceptScheme\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"conceptscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptSchemeRefType",
            "type": "object"
        },
        "xml_ns4_ConceptSchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "ConceptSchemeReferenceType is a type for referencing a concept scheme object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ConceptSchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConceptSchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConceptSchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConceptSchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_ConstraintRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "ConstraintRefType contains a set of reference fields for a constraint.\r\n\r\n<p>Java class for ConstraintRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"registry\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintRefType",
            "type": "object"
        },
        "xml_ns4_ConstraintReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "ConstraintReferenceType is a type for referencing a constraint object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ConstraintReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintReferenceType",
            "type": "object"
        },
        "xml_ns4_ConstraintTargetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "ConstraintTargetRefType contains a reference to a constraint target within a metadata target of a data structure definition.\r\n\r\n<p>Java class for ConstraintTargetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintTargetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"CONSTRAINT_TARGET\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"ConstraintTarget\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintTargetRefType",
            "type": "object"
        },
        "xml_ns4_ConstraintTargetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "ConstraintTargetReferenceType is a type for referencing a constraint target object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ConstraintTargetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ConstraintTargetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintTargetRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ConstraintTargetReferenceType",
            "type": "object"
        },
        "xml_ns4_ContainerChildObjectRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RefBaseType"
                },
                {}
            ],
            "description": "ContainerChildObjectRefBaseType is an abstract base type for referencing any child object within container defined in a maintainable object.\r\n\r\n<p>Java class for ContainerChildObjectRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContainerChildObjectRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"containerID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContainerChildObjectRefBaseType",
            "type": "object"
        },
        "xml_ns4_ContainerChildObjectReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "ContainerChildObjectReferenceType is an abstract base type used for referencing a particular object defined in a container object within a maintainable object. It consists of a URN and/or a complete set of reference fields; agency, maintainable id (maintainableParentID), maintainable version (maintainableParentVersion), container id (which is optional in order to allow for containers with fixed values to be omitted), container version (if applicable), the object id (which can be nested), and optionally the object version (if applicable).\r\n\r\n<p>Java class for ContainerChildObjectReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContainerChildObjectReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContainerChildObjectRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContainerChildObjectReferenceType",
            "type": "object"
        },
        "xml_ns4_ContentConstraintRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ConstraintRefType"
                },
                {}
            ],
            "description": "ContentConstraintRefType contains a set of reference fields for a content constraint.\r\n\r\n<p>Java class for ContentConstraintRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContentConstraintRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintRefType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintTypeCodelistType\" fixed=\"ContentConstraint\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContentConstraintRefType",
            "type": "object"
        },
        "xml_ns4_ContentConstraintReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ConstraintReferenceType"
                },
                {}
            ],
            "description": "ContentConstraintReferenceType is a type for referencing a content constraint object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ContentConstraintReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ContentConstraintReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConstraintReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContentConstraintRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ContentConstraintReferenceType",
            "type": "object"
        },
        "xml_ns4_ContentConstraintTypeCodeType": {
            "description": "<p>Java class for ContentConstraintTypeCodeType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"ContentConstraintTypeCodeType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"Allowed\"/>\r\n     &lt;enumeration value=\"Actual\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Allowed",
                "Actual"
            ],
            "title": "ContentConstraintTypeCodeType",
            "type": "string"
        },
        "xml_ns4_CubeRegionKeyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentValueSetType"
                },
                {}
            ],
            "description": "CubeRegionKeyType is a type for providing a set of values for a dimension for the purpose of defining a data cube region. A set of distinct value can be provided, or if this dimension is represented as time, and time range can be specified.\r\n\r\n<p>Java class for CubeRegionKeyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CubeRegionKeyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentValueSetType\">\r\n       &lt;choice>\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleValueType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"TimeRange\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimeRangeValueType\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SingleNCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CubeRegionKeyType",
            "type": "object"
        },
        "xml_ns4_CubeRegionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RegionType"
                },
                {}
            ],
            "description": "CubeRegionType defines the structure of a data cube region. This is based on the abstract RegionType and simply refines the key and attribute values to conform with what is applicable for dimensions and attributes, respectively. See the documentation of the base type for more details on how a region is defined.\r\n\r\n<p>Java class for CubeRegionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"CubeRegionType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RegionType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"KeyValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}CubeRegionKeyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attribute\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}AttributeValueSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "CubeRegionType",
            "type": "object"
        },
        "xml_ns4_DataConsumerRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationRefBaseType"
                },
                {}
            ],
            "description": "DataConsumerRefType contains a set of reference fields for referencing a data consumer within a data consumer scheme.\r\n\r\n<p>Java class for DataConsumerRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataConsumerRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"DataConsumer\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataConsumerRefType",
            "type": "object"
        },
        "xml_ns4_DataConsumerReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "DataConsumerReferenceType is a type for referencing a data consumer. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataConsumerReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataConsumerReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataConsumerRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataConsumerReferenceType",
            "type": "object"
        },
        "xml_ns4_DataConsumerSchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeRefBaseType"
                },
                {}
            ],
            "description": "DataConsumerSchemeRefType contains a set of reference fields for a data consumer scheme.\r\n\r\n<p>Java class for DataConsumerSchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataConsumerSchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeTypeCodelistType\" fixed=\"DataConsumerScheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataConsumerSchemeRefType",
            "type": "object"
        },
        "xml_ns4_DataConsumerSchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "DataConsumerSchemeReferenceType is a type for referencing a data consumer scheme object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataConsumerSchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataConsumerSchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataConsumerSchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataConsumerSchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_DataKeyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_DistinctKeyType"
                },
                {}
            ],
            "description": "DataKeyType is a region which defines a distinct full or partial data key. The key consists of a set of values, each referencing a dimension and providing a single value for that dimension. The purpose of the key is to define a subset of a data set (i.e. the observed value and data attribute) which have the dimension values provided in this definition. Any dimension not stated explicitly in this key is assumed to be wild carded, thus allowing for the definition of partial data keys.\r\n\r\n<p>Java class for DataKeyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataKeyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DistinctKeyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"KeyValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyValueType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataKeyType",
            "type": "object"
        },
        "xml_ns4_DataKeyValueType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_DinstinctKeyValueType"
                },
                {}
            ],
            "description": "DataKeyValueType is a type for providing a dimension value for the purpose of defining a distinct data key. Only a single value can be provided for the dimension.\r\n\r\n<p>Java class for DataKeyValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataKeyValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DinstinctKeyValueType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleKeyValueType\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SingleNCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataKeyValueType",
            "type": "object"
        },
        "xml_ns4_DataProviderRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationRefBaseType"
                },
                {}
            ],
            "description": "DataProviderRefType contains a set of reference fields for referencing a data provider within a data provider scheme.\r\n\r\n<p>Java class for DataProviderRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataProviderRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"DataProvider\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataProviderRefType",
            "type": "object"
        },
        "xml_ns4_DataProviderReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "DataProviderReferenceType is a type for referencing a data provider. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataProviderReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataProviderReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataProviderReferenceType",
            "type": "object"
        },
        "xml_ns4_DataProviderSchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeRefBaseType"
                },
                {}
            ],
            "description": "DataProviderSchemeRefType contains a set of reference fields for a data provider scheme.\r\n\r\n<p>Java class for DataProviderSchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataProviderSchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeTypeCodelistType\" fixed=\"DataProviderScheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataProviderSchemeRefType",
            "type": "object"
        },
        "xml_ns4_DataProviderSchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "DataProviderSchemeReferenceType is a type for referencing a data provider scheme object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataProviderSchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataProviderSchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderSchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataProviderSchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_DataSetTargetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "DataSetTargetRefType contains a reference to a data set target within a metadata target of a data structure definition.\r\n\r\n<p>Java class for DataSetTargetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSetTargetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"DATA_SET_TARGET\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"DataSetTarget\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataSetTargetRefType",
            "type": "object"
        },
        "xml_ns4_DataSetTargetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "DataSetTargetReferenceType is a type for referencing a data set target object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataSetTargetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataSetTargetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataSetTargetRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataSetTargetReferenceType",
            "type": "object"
        },
        "xml_ns4_DataStructureEnumerationSchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeRefType"
                },
                {}
            ],
            "description": "DataStructureEnumerationSchemeRefType contains the reference fields for referencing any item scheme that is allowable as the enumeration of the representation of a data structure definition component.\r\n\r\n<p>Java class for DataStructureEnumerationSchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataStructureEnumerationSchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionEumerationSchemeTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataStructureEnumerationSchemeRefType",
            "type": "object"
        },
        "xml_ns4_DataStructureEnumerationSchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceType"
                },
                {}
            ],
            "description": "DataStructureEnumerationSchemeReferenceType is a type for referencing any type of item scheme that is allowable as the enumeration of the representation of a data structure definition component. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataStructureEnumerationSchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataStructureEnumerationSchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataStructureEnumerationSchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataStructureEnumerationSchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_DataStructureRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureRefBaseType"
                },
                {}
            ],
            "description": "DataStructureRefType contains a set of reference fields for a data structure definition.\r\n\r\n<p>Java class for DataStructureRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataStructureRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureTypeCodelistType\" fixed=\"DataStructure\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataStructureRefType",
            "type": "object"
        },
        "xml_ns4_DataStructureReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureReferenceBaseType"
                },
                {}
            ],
            "description": "DataStructureReferenceType is a type for referencing a data structure definition object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataStructureReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataStructureReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataStructureRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataStructureReferenceType",
            "type": "object"
        },
        "xml_ns4_DataType": {
            "description": "<p>Java class for DataType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"DataType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}NMTOKEN\">\r\n     &lt;enumeration value=\"String\"/>\r\n     &lt;enumeration value=\"Alpha\"/>\r\n     &lt;enumeration value=\"AlphaNumeric\"/>\r\n     &lt;enumeration value=\"Numeric\"/>\r\n     &lt;enumeration value=\"BigInteger\"/>\r\n     &lt;enumeration value=\"Integer\"/>\r\n     &lt;enumeration value=\"Long\"/>\r\n     &lt;enumeration value=\"Short\"/>\r\n     &lt;enumeration value=\"Decimal\"/>\r\n     &lt;enumeration value=\"Float\"/>\r\n     &lt;enumeration value=\"Double\"/>\r\n     &lt;enumeration value=\"Boolean\"/>\r\n     &lt;enumeration value=\"URI\"/>\r\n     &lt;enumeration value=\"Count\"/>\r\n     &lt;enumeration value=\"InclusiveValueRange\"/>\r\n     &lt;enumeration value=\"ExclusiveValueRange\"/>\r\n     &lt;enumeration value=\"Incremental\"/>\r\n     &lt;enumeration value=\"ObservationalTimePeriod\"/>\r\n     &lt;enumeration value=\"StandardTimePeriod\"/>\r\n     &lt;enumeration value=\"BasicTimePeriod\"/>\r\n     &lt;enumeration value=\"GregorianTimePeriod\"/>\r\n     &lt;enumeration value=\"GregorianYear\"/>\r\n     &lt;enumeration value=\"GregorianYearMonth\"/>\r\n     &lt;enumeration value=\"GregorianDay\"/>\r\n     &lt;enumeration value=\"ReportingTimePeriod\"/>\r\n     &lt;enumeration value=\"ReportingYear\"/>\r\n     &lt;enumeration value=\"ReportingSemester\"/>\r\n     &lt;enumeration value=\"ReportingTrimester\"/>\r\n     &lt;enumeration value=\"ReportingQuarter\"/>\r\n     &lt;enumeration value=\"ReportingMonth\"/>\r\n     &lt;enumeration value=\"ReportingWeek\"/>\r\n     &lt;enumeration value=\"ReportingDay\"/>\r\n     &lt;enumeration value=\"DateTime\"/>\r\n     &lt;enumeration value=\"TimeRange\"/>\r\n     &lt;enumeration value=\"Month\"/>\r\n     &lt;enumeration value=\"MonthDay\"/>\r\n     &lt;enumeration value=\"Day\"/>\r\n     &lt;enumeration value=\"Time\"/>\r\n     &lt;enumeration value=\"Duration\"/>\r\n     &lt;enumeration value=\"XHTML\"/>\r\n     &lt;enumeration value=\"KeyValues\"/>\r\n     &lt;enumeration value=\"IdentifiableReference\"/>\r\n     &lt;enumeration value=\"DataSetReference\"/>\r\n     &lt;enumeration value=\"AttachmentConstraintReference\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
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
                "Duration",
                "XHTML",
                "KeyValues",
                "IdentifiableReference",
                "DataSetReference",
                "AttachmentConstraintReference"
            ],
            "title": "DataType",
            "type": "string"
        },
        "xml_ns4_DataflowRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureUsageRefBaseType"
                },
                {}
            ],
            "description": "DataflowRefType contains a set of reference fields for a data flow.\r\n\r\n<p>Java class for DataflowRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataflowRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageTypeCodelistType\" fixed=\"Dataflow\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataflowRefType",
            "type": "object"
        },
        "xml_ns4_DataflowReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureUsageReferenceBaseType"
                },
                {}
            ],
            "description": "DataflowReferenceType is a type for referencing a dataflow object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DataflowReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DataflowReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataflowRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DataflowReferenceType",
            "type": "object"
        },
        "xml_ns4_DimensionRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "DimensionRefType contains a reference to a dimension within a data structure definition. Note that since there is only one key descriptor, the container reference fields are prohibited.\r\n\r\n<p>Java class for DimensionRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DimensionRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeCodelistType\" fixed=\"Dimension\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DimensionRefType",
            "type": "object"
        },
        "xml_ns4_DimensionReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "DimensionReferenceType is a type for referencing a dimension object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for DimensionReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DimensionReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DimensionReferenceType",
            "type": "object"
        },
        "xml_ns4_DimensionTypeType": {
            "description": "<p>Java class for DimensionTypeType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"DimensionTypeType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"Dimension\"/>\r\n     &lt;enumeration value=\"MeasureDimension\"/>\r\n     &lt;enumeration value=\"TimeDimension\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Dimension",
                "MeasureDimension",
                "TimeDimension"
            ],
            "title": "DimensionTypeType",
            "type": "string"
        },
        "xml_ns4_DinstinctKeyValueType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentValueSetType"
                },
                {}
            ],
            "description": "DinstinctKeyValueType is an abstract base type which defines a singular, required value for a key component.\r\n\r\n<p>Java class for DinstinctKeyValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DinstinctKeyValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentValueSetType\">\r\n       &lt;choice>\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleKeyValueType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\"/>\r\n         &lt;element name=\"DataKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyType\"/>\r\n         &lt;element name=\"Object\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectReferenceType\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SingleNCNameIDType\" />\r\n       &lt;attribute name=\"include\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"true\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DinstinctKeyValueType",
            "type": "object"
        },
        "xml_ns4_DistinctKeyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RegionType"
                },
                {}
            ],
            "description": "DistinctKeyType is an abstract base type which is a special type of region that only defines a distinct region of data or metadata. For each component defined in the region, only a single values is provided. However, the same rules that apply to the general region about unstated components being wild carded apply here as well. Thus, this type can define a distinct full or partial key for data or metadata.\r\n\r\n<p>Java class for DistinctKeyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"DistinctKeyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RegionType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"KeyValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DinstinctKeyValueType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"include\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"true\" />\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "DistinctKeyType",
            "type": "object"
        },
        "xml_ns4_EmptyType": {
            "allOf": [
                {}
            ],
            "description": "EmptyType is an empty complex type for elements where the presence of the tag indicates all that is necessary.\r\n\r\n<p>Java class for EmptyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"EmptyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "EmptyType",
            "type": "object"
        },
        "xml_ns4_GroupKeyDescriptorRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListRefBaseType"
                },
                {}
            ],
            "description": "GroupKeyDescriptorRefType contains a reference to a group key descriptor within a data structure definition.\r\n\r\n<p>Java class for GroupKeyDescriptorRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupKeyDescriptorRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"GroupDimensionDescriptor\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GroupKeyDescriptorRefType",
            "type": "object"
        },
        "xml_ns4_GroupKeyDescriptorReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListReferenceType"
                },
                {}
            ],
            "description": "GroupKeyDescriptorReferenceType is a type for referencing a group key descriptor object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for GroupKeyDescriptorReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"GroupKeyDescriptorReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}GroupKeyDescriptorRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "GroupKeyDescriptorReferenceType",
            "type": "object"
        },
        "xml_ns4_HierarchicalCodeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ContainerChildObjectRefBaseType"
                },
                {}
            ],
            "description": "HierarchicalCodeRefType references a code from within a hierarchical codelist. Reference fields are required for both the code and the codelist.\r\n\r\n<p>Java class for HierarchicalCodeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContainerChildObjectRefBaseType\">\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"HierarchicalCode\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodeRefType",
            "type": "object"
        },
        "xml_ns4_HierarchicalCodeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ContainerChildObjectReferenceType"
                },
                {}
            ],
            "description": "HierarchicalCodeReferenceType is a type for referencing a hierarchical code object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for HierarchicalCodeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContainerChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}HierarchicalCodeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodeReferenceType",
            "type": "object"
        },
        "xml_ns4_HierarchicalCodelistRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "HierarchicalCodelistRefType contains a set of reference fields for a hierarchical codelist.\r\n\r\n<p>Java class for HierarchicalCodelistRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodelistRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableTypeCodelistType\" fixed=\"HierarchicalCodelist\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodelistRefType",
            "type": "object"
        },
        "xml_ns4_HierarchicalCodelistReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "HierarchicalCodelistReferenceType is a type for referencing a hierarchical codelist object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for HierarchicalCodelistReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchicalCodelistReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}HierarchicalCodelistRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchicalCodelistReferenceType",
            "type": "object"
        },
        "xml_ns4_HierarchyRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "HierarchyRefType is type which references a hierarchy from within a hierarchical codelist. Reference fields are required for both the hierarchy and the codelist.\r\n\r\n<p>Java class for HierarchyRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchyRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"Hierarchy\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchyRefType",
            "type": "object"
        },
        "xml_ns4_HierarchyReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "HierarchyReferenceType is a type for referencing a hierarchy within a hierarchical codelist.\r\n\r\n<p>Java class for HierarchyReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"HierarchyReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}HierarchyRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "HierarchyReferenceType",
            "type": "object"
        },
        "xml_ns4_IdentifiableObjectTargetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "IdentifiableObjectTargetRefType contains a reference to an identifiable object target within a metadata target of a data structure definition.\r\n\r\n<p>Java class for IdentifiableObjectTargetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IdentifiableObjectTargetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"IdentifiableObjectTarget\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "IdentifiableObjectTargetRefType",
            "type": "object"
        },
        "xml_ns4_IdentifiableObjectTargetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "IdentifiableObjectTargetReferenceType is a type for referencing an identifiable object target object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for IdentifiableObjectTargetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"IdentifiableObjectTargetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IdentifiableObjectTargetRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "IdentifiableObjectTargetReferenceType",
            "type": "object"
        },
        "xml_ns4_ItemRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "ItemRefBaseType is an abstract base type for referencing an item within an item scheme.\r\n\r\n<p>Java class for ItemRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemRefBaseType",
            "type": "object"
        },
        "xml_ns4_ItemReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "ItemReferenceType is an abstract base type used for referencing a particular item within an item scheme. Note that this reference also has the ability to reference items contained within other items inside of the item scheme. It consists of a URN and/or a complete set of reference fields; agency, scheme id (maintainableParentID), scheme version (maintainableParentVersion), and item id (which can be nested).\r\n\r\n<p>Java class for ItemReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemReferenceType",
            "type": "object"
        },
        "xml_ns4_ItemSchemeRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "ItemSchemeRefBaseType is an abstract base type for referencing an item scheme.\r\n\r\n<p>Java class for ItemSchemeRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemSchemeRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemSchemeRefBaseType",
            "type": "object"
        },
        "xml_ns4_ItemSchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeRefBaseType"
                },
                {}
            ],
            "description": "ItemSchemeRefType contains a complete set of reference fields for referencing any item scheme. The class and package a required so that the reference is explicit as to the exact object being referenced.\r\n\r\n<p>Java class for ItemSchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemSchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemSchemeRefType",
            "type": "object"
        },
        "xml_ns4_ItemSchemeReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "ItemSchemeReferenceBaseType is a specific type of MaintainableReference that is used for referencing item schemes. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for ItemSchemeReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemSchemeReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemSchemeReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_ItemSchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "ItemSchemeReferenceType is a reference that is used for referencing any type of item scheme. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for ItemSchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ItemSchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ItemSchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_KeyDescriptorRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListRefBaseType"
                },
                {}
            ],
            "description": "KeyDescriptorRefType contains a reference to the key descriptor within a data structure definition.\r\n\r\n<p>Java class for KeyDescriptorRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeyDescriptorRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"DIMENSION_DESCRIPTOR\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"DimensionDescriptor\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "KeyDescriptorRefType",
            "type": "object"
        },
        "xml_ns4_KeyDescriptorReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListReferenceType"
                },
                {}
            ],
            "description": "KeyDescriptorReferenceType is a type for referencing a key descriptor object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for KeyDescriptorReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeyDescriptorReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}KeyDescriptorRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "KeyDescriptorReferenceType",
            "type": "object"
        },
        "xml_ns4_KeyDescriptorValuesTargetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "KeyDescriptorValuesTargetRefType contains a reference to a key descriptor values target within a metadata target of a data structure definition.\r\n\r\n<p>Java class for KeyDescriptorValuesTargetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeyDescriptorValuesTargetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"DIMENSION_DESCRIPTOR_VALUES_TARGET\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"DimensionDescriptorValuesTarget\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "KeyDescriptorValuesTargetRefType",
            "type": "object"
        },
        "xml_ns4_KeyDescriptorValuesTargetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "KeyDescriptorValuesTargetType is a type for referencing a key descriptor values target object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for KeyDescriptorValuesTargetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"KeyDescriptorValuesTargetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}KeyDescriptorValuesTargetRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "KeyDescriptorValuesTargetReferenceType",
            "type": "object"
        },
        "xml_ns4_LevelRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "LevelRefType references a level from within a hierarchical codelist. Reference fields are required for both the level and the codelist.\r\n\r\n<p>Java class for LevelRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LevelRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"Level\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LevelRefType",
            "type": "object"
        },
        "xml_ns4_LevelReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "LevelReferenceType is a type for referencing a level object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for LevelReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LevelReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LevelRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LevelReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalAgencyRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationRefBaseType"
                },
                {}
            ],
            "description": "LocalAgencyRefType references an agency locally where the reference to the agency scheme which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalAgencyRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalAgencyRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"Agency\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalAgencyRefType",
            "type": "object"
        },
        "xml_ns4_LocalAgencyReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "LocalAgencyReferenceType provides a simple reference to an agency, where the reference to the agency scheme which defines it is provided in another context.\r\n\r\n<p>Java class for LocalAgencyReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalAgencyReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalAgencyRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalAgencyReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalCategoryRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemRefBaseType"
                },
                {}
            ],
            "description": "LocalCategoryRefType references a category locally where the references to the category scheme which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalCategoryRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalCategoryRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"Category\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"categoryscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalCategoryRefType",
            "type": "object"
        },
        "xml_ns4_LocalCategoryReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemReferenceType"
                },
                {}
            ],
            "description": "LocalCategoryReferenceType provides a simple references to a category where the identification of the category scheme which defines it is contained in another context.\r\n\r\n<p>Java class for LocalCategoryReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalCategoryReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCategoryRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalCategoryReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalCodeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemRefBaseType"
                },
                {}
            ],
            "description": "LocalCodeRefType references a code locally where the references to the codelist which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalCodeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalCodeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"Code\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"codelist\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalCodeRefType",
            "type": "object"
        },
        "xml_ns4_LocalCodeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemReferenceType"
                },
                {}
            ],
            "description": "LocalCodeReferenceType provides a simple references to a code where the identification of the codelist which defines it is contained in another context.\r\n\r\n<p>Java class for LocalCodeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalCodeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCodeRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalCodeReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalCodelistMapRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalIdentifiableRefBaseType"
                },
                {}
            ],
            "description": "LocalCodelistMapRefType contains a set of reference fields for a codelist map locally.\r\n\r\n<p>Java class for LocalCodelistMapRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalCodelistMapRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"CodelistMap\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"mapping\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalCodelistMapRefType",
            "type": "object"
        },
        "xml_ns4_LocalCodelistMapReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "LocalCodelistMapReferenceType is a type for referencing a codelist map object where the reference to the structure set which defines it is provided in another context (e.g. the structure set in which this reference occurs).\r\n\r\n<p>Java class for LocalCodelistMapReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalCodelistMapReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalCodelistMapRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalCodelistMapReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalComponentListComponentRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalIdentifiableRefBaseType"
                },
                {}
            ],
            "description": "LocalComponentRefBaseType is an abstract base type which provides a local reference to a component object.\r\n\r\n<p>Java class for LocalComponentListComponentRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentListComponentRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableRefBaseType\">\r\n       &lt;attribute name=\"containerID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentListComponentRefBaseType",
            "type": "object"
        },
        "xml_ns4_LocalComponentListComponentRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalComponentListComponentRefType provides a local reference to any component object within a specific component list. References for both of these are required as well as an indication of which type of type of component is being referenced via the class attribute.\r\n\r\n<p>Java class for LocalComponentListComponentRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentListComponentRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"true\" />\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentListComponentRefType",
            "type": "object"
        },
        "xml_ns4_LocalComponentListComponentReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "LocalComponentListComponentReferenceBaseType is an abstract base type which provides a simple reference to any type of component in a specific component list where the reference to the structure which defines it are provided in another context, and the component list may or may not be defined in another context.\r\n\r\n<p>Java class for LocalComponentListComponentReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentListComponentReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentRefBaseType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentListComponentReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_LocalComponentListComponentReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalComponentListComponentReferenceType provides a simple reference to any type of component in a specific component list where the reference to the structure which defines it are provided in another context.\r\n\r\n<p>Java class for LocalComponentListComponentReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentListComponentReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentListComponentReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalComponentListRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalIdentifiableRefBaseType"
                },
                {}
            ],
            "description": "LocalComponentListRefBaseType is an abstract base type which provides a local reference to a component list object.\r\n\r\n<p>Java class for LocalComponentListRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentListRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentListRefBaseType",
            "type": "object"
        },
        "xml_ns4_LocalComponentListReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "LocalComponentListReferenceType is an abstract base type which provides a simple reference to a component list where the reference to the structure which defines it is provided in another context.\r\n\r\n<p>Java class for LocalComponentListReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentListReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListRefBaseType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentListReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalComponentRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalComponentRefBaseType is an abstract base type which provides a local reference to a component object.\r\n\r\n<p>Java class for LocalComponentRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentRefBaseType\">\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentRefBaseType",
            "type": "object"
        },
        "xml_ns4_LocalComponentRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalComponentRefType provides a local reference to any type component object.\r\n\r\n<p>Java class for LocalComponentRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentRefType",
            "type": "object"
        },
        "xml_ns4_LocalComponentReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalComponentReferenceBaseType is an abstract base type which provides a simple reference to a component where the references to the component list which contains it and the structure which defines it are provided in another context.\r\n\r\n<p>Java class for LocalComponentReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentRefBaseType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_LocalComponentReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalComponentReferenceType provides a simple reference to any type of component in a component list where the references to the component list and the structure which defines them are provided in another context.\r\n\r\n<p>Java class for LocalComponentReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalComponentReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalComponentReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalConceptRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemRefBaseType"
                },
                {}
            ],
            "description": "LocalConceptRefType references a concept locally where the references to the concept scheme which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalConceptRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalConceptRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"Concept\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"conceptscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalConceptRefType",
            "type": "object"
        },
        "xml_ns4_LocalConceptReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemReferenceType"
                },
                {}
            ],
            "description": "LocalConceptReferenceType provides a simple references to a concept where the identification of the concept scheme which defines it is contained in another context.\r\n\r\n<p>Java class for LocalConceptReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalConceptReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalConceptRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalConceptReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalDataConsumerRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationRefBaseType"
                },
                {}
            ],
            "description": "LocalDataConsumerRefType references a data consumer locally where the reference to the data consumer scheme which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalDataConsumerRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDataConsumerRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"DataConsumer\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDataConsumerRefType",
            "type": "object"
        },
        "xml_ns4_LocalDataConsumerReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "LocalDataConsumerReferenceType provides a simple reference to a data consumer, where the reference to the data consumer scheme which defines it is provided in another context.\r\n\r\n<p>Java class for LocalDataConsumerReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDataConsumerReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalDataConsumerRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDataConsumerReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalDataProviderRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationRefBaseType"
                },
                {}
            ],
            "description": "LocalDataProviderRefType references a data provider locally where the reference to the data provider scheme which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalDataProviderRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDataProviderRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"DataProvider\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDataProviderRefType",
            "type": "object"
        },
        "xml_ns4_LocalDataProviderReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "LocalDataProviderReferenceType provides a simple reference to a data provider, where the reference to the data provider scheme which defines it is provided in another context.\r\n\r\n<p>Java class for LocalDataProviderReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDataProviderReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalDataProviderRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDataProviderReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalDataStructureComponentRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalDataStructureComponentRefType contains the reference fields for referencing any data structure component locally. This reference must specify the class of the component being referenced.\r\n\r\n<p>Java class for LocalDataStructureComponentRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDataStructureComponentRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataStructureComponentTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDataStructureComponentRefType",
            "type": "object"
        },
        "xml_ns4_LocalDataStructureComponentReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalDataStructureComponentReferenceType is a type for referencing any type of data structure component locally, where the reference for the data structure definition which defines the components is available in another context.\r\n\r\n<p>Java class for LocalDataStructureComponentReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDataStructureComponentReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalDataStructureComponentRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDataStructureComponentReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalDimensionRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalDimensionRefType contains the reference fields for referencing a dimension locally.\r\n\r\n<p>Java class for LocalDimensionRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDimensionRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeCodelistType\" default=\"Dimension\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDimensionRefType",
            "type": "object"
        },
        "xml_ns4_LocalDimensionReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalDimensionReferenceType is a type for referencing any type of dimension locally, where the reference to the data structure definition which defines the dimension is provided in another context (for example the data structure definition in which the reference occurs).\r\n\r\n<p>Java class for LocalDimensionReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalDimensionReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalDimensionRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalDimensionReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalGroupKeyDescriptorRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListRefBaseType"
                },
                {}
            ],
            "description": "LocalGroupKeyDescriptorRefType contains a local reference to a group key descriptor.\r\n\r\n<p>Java class for LocalGroupKeyDescriptorRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalGroupKeyDescriptorRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"GroupDimensionDescriptor\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalGroupKeyDescriptorRefType",
            "type": "object"
        },
        "xml_ns4_LocalGroupKeyDescriptorReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListReferenceType"
                },
                {}
            ],
            "description": "LocalGroupKeyDescriptorReferenceType is a type for referencing a group key descriptor locally, where the reference to the data structure definition which defines it is provided in another context (for example the data structure definition in which the reference occurs).\r\n\r\n<p>Java class for LocalGroupKeyDescriptorReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalGroupKeyDescriptorReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalGroupKeyDescriptorRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalGroupKeyDescriptorReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalIdentifiableRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RefBaseType"
                },
                {}
            ],
            "description": "LocalIdentifiableRefBaseType is an abstract base type which provides a local reference to any identifiable object.\r\n\r\n<p>Java class for LocalIdentifiableRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalIdentifiableRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RefBaseType\">\r\n       &lt;attribute name=\"containerID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"true\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalIdentifiableRefBaseType",
            "type": "object"
        },
        "xml_ns4_LocalIdentifiableReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "LocalIdentifiableReferenceType is an abstract base type for referencing an identifiable object locally, where the maintainable object in which it is defined is referenced in another context..\r\n\r\n<p>Java class for LocalIdentifiableReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalIdentifiableReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableRefBaseType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalIdentifiableReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalItemRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalIdentifiableRefBaseType"
                },
                {}
            ],
            "description": "LocalItemRefBaseType is an abstract base type which provides a local reference to a item object.\r\n\r\n<p>Java class for LocalItemRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalItemRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalItemRefBaseType",
            "type": "object"
        },
        "xml_ns4_LocalItemReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "LocalItemReferenceType is an abstract base type which provides a simple reference to an item where the reference to the item scheme which defines it are provided in another context.\r\n\r\n<p>Java class for LocalItemReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalItemReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemRefBaseType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalItemReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalLevelRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalIdentifiableRefBaseType"
                },
                {}
            ],
            "description": "LocalLevelRefType references a level object where the reference to the hierarchy in which it is contained and the hierarchical codelist which define it are provided in another context.\r\n\r\n<p>Java class for LocalLevelRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalLevelRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"Level\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalLevelRefType",
            "type": "object"
        },
        "xml_ns4_LocalLevelReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "LocalLevelReferenceType is a type for referencing a level object where the reference to the hierarchical codelist and the hierarchy in which it is defined is provided in another context (e.g. is inferred from the hierarchy in which the reference is defined).\r\n\r\n<p>Java class for LocalLevelReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalLevelReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalLevelRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalLevelReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalMetadataStructureComponentRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalMetadataStructureComponentRefType contains the reference fields for referencing any metadata structure component locally. This reference must specify the class of the component being referenced.\r\n\r\n<p>Java class for LocalMetadataStructureComponentRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalMetadataStructureComponentRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataStructureComponentTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalMetadataStructureComponentRefType",
            "type": "object"
        },
        "xml_ns4_LocalMetadataStructureComponentReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalMetadataStructureComponentReferenceType is a type for referencing any type of metadata structure component locally, where the reference for the metadata structure definition which defines the components is available in another context.\r\n\r\n<p>Java class for LocalMetadataStructureComponentReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalMetadataStructureComponentReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalMetadataStructureComponentRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalMetadataStructureComponentReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalMetadataTargetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListRefBaseType"
                },
                {}
            ],
            "description": "LocalMetadataTargetRefType contains a local reference to a metadata target object.\r\n\r\n<p>Java class for LocalMetadataTargetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalMetadataTargetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"MetadataTarget\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalMetadataTargetRefType",
            "type": "object"
        },
        "xml_ns4_LocalMetadataTargetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListReferenceType"
                },
                {}
            ],
            "description": "LocalMetadataTargetReferenceType is a type for referencing a metadata target locally, where the reference to the metadata structure definition which defines it is provided in another context (for example the metadata structure definition in which the reference occurs).\r\n\r\n<p>Java class for LocalMetadataTargetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalMetadataTargetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalMetadataTargetRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalMetadataTargetReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalOrganisationRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemRefBaseType"
                },
                {}
            ],
            "description": "LocalOrganisationRefBaseType is an abstract base type that references an organisation locally where the reference to the organisation scheme which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalOrganisationRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalOrganisationRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"base\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalOrganisationRefBaseType",
            "type": "object"
        },
        "xml_ns4_LocalOrganisationRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationRefBaseType"
                },
                {}
            ],
            "description": "LocalOrganisationRefType references an organisation locally where the reference to the organisation scheme which defines it is provided elsewhere. The reference requires that the class (i.e. the type) or the organisation being reference be provided.\r\n\r\n<p>Java class for LocalOrganisationRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalOrganisationRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"base\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalOrganisationRefType",
            "type": "object"
        },
        "xml_ns4_LocalOrganisationReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemReferenceType"
                },
                {}
            ],
            "description": "LocalOrganisationReferenceBaseType is an abstract base type which provides a simple references to an organisation, regardless of type, where the identification of the organisation scheme which defines it is contained in another context.\r\n\r\n<p>Java class for LocalOrganisationReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalOrganisationReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationRefBaseType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalOrganisationReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_LocalOrganisationReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "LocalOrganisationReferenceType provides a simple reference to an organisation, regardless of type, where the identification of the organisation scheme which defines it is contained in another context.\r\n\r\n<p>Java class for LocalOrganisationReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalOrganisationReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalOrganisationReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalOrganisationUnitRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationRefBaseType"
                },
                {}
            ],
            "description": "LocalOrganisationUnitRefType references an organisation unit locally where the reference to the organisation unit scheme which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalOrganisationUnitRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalOrganisationUnitRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"OrganisationUnit\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalOrganisationUnitRefType",
            "type": "object"
        },
        "xml_ns4_LocalOrganisationUnitReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalOrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "LocalOrganisationUnitReferenceType provides a simple reference to an organisation unit, where the reference to the organisation unit scheme which defines it is provided in another context.\r\n\r\n<p>Java class for LocalOrganisationUnitReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalOrganisationUnitReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalOrganisationUnitRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalOrganisationUnitReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalPrimaryMeasureRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalPrimaryMeasureRefType contains the reference fields for referencing a primary measure locally.\r\n\r\n<p>Java class for LocalPrimaryMeasureRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalPrimaryMeasureRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"OBS_VALUE\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"PrimaryMeasure\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalPrimaryMeasureRefType",
            "type": "object"
        },
        "xml_ns4_LocalPrimaryMeasureReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalPrimaryMeasureReferenceType is a type for referencing a primary measure locally, where the reference to the data structure definition which defines the primary measure is provided in another context (for example the data structure definition in which the reference occurs).\r\n\r\n<p>Java class for LocalPrimaryMeasureReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalPrimaryMeasureReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalPrimaryMeasureRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalPrimaryMeasureReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalProcessStepRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalIdentifiableRefBaseType"
                },
                {}
            ],
            "description": "LocalProcessStepRefType contains a local reference to a process step object.\r\n\r\n<p>Java class for LocalProcessStepRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalProcessStepRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"ProcessStep\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"process\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalProcessStepRefType",
            "type": "object"
        },
        "xml_ns4_LocalProcessStepReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalIdentifiableReferenceType"
                },
                {}
            ],
            "description": "LocalProcessStepReferenceType is a type for referencing a process step locally, where the reference to the process which defines it is provided in another context (for example the metadata structure definition in which the reference occurs).\r\n\r\n<p>Java class for LocalProcessStepReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalProcessStepReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalIdentifiableReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalProcessStepRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalProcessStepReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalReportStructureRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListRefBaseType"
                },
                {}
            ],
            "description": "LocalReportStructureRefType contains a local reference to a report structure object.\r\n\r\n<p>Java class for LocalReportStructureRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalReportStructureRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"ReportStructure\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalReportStructureRefType",
            "type": "object"
        },
        "xml_ns4_LocalReportStructureReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentListReferenceType"
                },
                {}
            ],
            "description": "LocalReportStructureReferenceType is a type for referencing a report structure locally, where the reference to the metadata structure definition which defines it is provided in another context (for example the metadata structure definition in which the reference occurs).\r\n\r\n<p>Java class for LocalReportStructureReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalReportStructureReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentListReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalReportStructureRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalReportStructureReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalReportingCategoryRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemRefBaseType"
                },
                {}
            ],
            "description": "LocalReportingCategoryRefType references a reporting category locally where the references to the reporting taxonomy which defines it is provided elsewhere.\r\n\r\n<p>Java class for LocalReportingCategoryRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalReportingCategoryRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"ReportingCategory\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"categoryscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalReportingCategoryRefType",
            "type": "object"
        },
        "xml_ns4_LocalReportingCategoryReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalItemReferenceType"
                },
                {}
            ],
            "description": "LocalReportingCategoryReferenceType provides a simple references to a reporting category where the identification of the reporting taxonomy which defines it is contained in another context.\r\n\r\n<p>Java class for LocalReportingCategoryReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalReportingCategoryReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalItemReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalReportingCategoryRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalReportingCategoryReferenceType",
            "type": "object"
        },
        "xml_ns4_LocalTargetObjectRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentRefBaseType"
                },
                {}
            ],
            "description": "LocalTargetObjectRefType contains the reference fields for referencing a target object locally.\r\n\r\n<p>Java class for LocalTargetObjectRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalTargetObjectRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TargetObjectTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalTargetObjectRefType",
            "type": "object"
        },
        "xml_ns4_LocalTargetObjectReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_LocalComponentReferenceBaseType"
                },
                {}
            ],
            "description": "LocalTargetObjectReferenceType is a type for referencing any type of target object within a metadata target locally, where the references to the metadata target and the  metadata structure definition which defines the target reference are provided in another context.\r\n\r\n<p>Java class for LocalTargetObjectReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"LocalTargetObjectReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalComponentReferenceBaseType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}LocalTargetObjectRefType\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "LocalTargetObjectReferenceType",
            "type": "object"
        },
        "xml_ns4_MaintainableRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RefBaseType"
                },
                {}
            ],
            "description": "MaintainableRefBaseType is an abstract base type for referencing a maintainable object.\r\n\r\n<p>Java class for MaintainableRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MaintainableRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MaintainableRefBaseType",
            "type": "object"
        },
        "xml_ns4_MaintainableRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "MaintainableRefType contains a complete set of reference fields for referencing any maintainable object.\r\n\r\n<p>Java class for MaintainableRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MaintainableRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ConcreteMaintainableTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MaintainableRefType",
            "type": "object"
        },
        "xml_ns4_MaintainableReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "MaintainableReferenceBaseType is an abstract base type for referencing a maintainable object. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for MaintainableReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MaintainableReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MaintainableReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_MaintainableReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "MaintainableReferenceType is a type for referencing any maintainable object. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for MaintainableReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MaintainableReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MaintainableReferenceType",
            "type": "object"
        },
        "xml_ns4_MeasureDescriptorRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListRefBaseType"
                },
                {}
            ],
            "description": "MeasureDescriptorRefType contains a reference to the measure descriptor within a data structure definition.\r\n\r\n<p>Java class for MeasureDescriptorRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MeasureDescriptorRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"MEASURE_DESCRIPTOR\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"MeasureDescriptor\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MeasureDescriptorRefType",
            "type": "object"
        },
        "xml_ns4_MeasureDescriptorReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListReferenceType"
                },
                {}
            ],
            "description": "MeasureDescriptorReferenceType is a type for referencing a measure descriptor object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for MeasureDescriptorReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MeasureDescriptorReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MeasureDescriptorRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MeasureDescriptorReferenceType",
            "type": "object"
        },
        "xml_ns4_MeasureDimensionRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "MeasureDimensionRefType contains a reference to the measure dimension within a data structure definition. Note that since there is only one key descriptor, the container reference fields are prohibited.\r\n\r\n<p>Java class for MeasureDimensionRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MeasureDimensionRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeCodelistType\" fixed=\"MeasureDimension\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MeasureDimensionRefType",
            "type": "object"
        },
        "xml_ns4_MeasureDimensionReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "MeasureDimensionReferenceType is a type for referencing a measure dimension object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for MeasureDimensionReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MeasureDimensionReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MeasureDimensionRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MeasureDimensionReferenceType",
            "type": "object"
        },
        "xml_ns4_MetadataAttributeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "MetadataAttributeRefType contains a reference to a metadata attribute within a report structure in a metadata structure definition.\r\n\r\n<p>Java class for MetadataAttributeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataAttributeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"MetadataAttribute\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataAttributeRefType",
            "type": "object"
        },
        "xml_ns4_MetadataAttributeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "MetadataAttributeReferenceType is a type for referencing a metadata attribute object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for MetadataAttributeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataAttributeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataAttributeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataAttributeReferenceType",
            "type": "object"
        },
        "xml_ns4_MetadataAttributeValueSetType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentValueSetType"
                },
                {}
            ],
            "description": "MetadataAttributeValueSetType defines the structure for providing values for a metadata attribute. If no values are provided, the attribute is implied to include/excluded from the region in which it is defined, with no regard to the value of the metadata attribute.\r\n\r\n<p>Java class for MetadataAttributeValueSetType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataAttributeValueSetType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentValueSetType\">\r\n       &lt;choice minOccurs=\"0\">\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleValueType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"TimeRange\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimeRangeValueType\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataAttributeValueSetType",
            "type": "object"
        },
        "xml_ns4_MetadataKeyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_DistinctKeyType"
                },
                {}
            ],
            "description": "MetadataKeyType is a region which defines a distinct full or partial metadata key. The key consists of a set of values, each referencing a target object for the metadata target referenced in the metadataTarget attribute, which must be defined in the report structure referenced in the report attribute. Each target object can be assigned a single value. If an target object from the reference metadata target is not included in this key, the value of that is assumed to be all known objects for a reference target object, all possible keys for a key descriptor values target object, or all dates for report period target object. The purpose of this key reference a metadata conforming to a particular report structure for given object or set of objects.\r\n\r\n<p>Java class for MetadataKeyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataKeyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DistinctKeyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"KeyValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataKeyValueType\" maxOccurs=\"unbounded\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"report\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"metadataTarget\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataKeyType",
            "type": "object"
        },
        "xml_ns4_MetadataKeyValueType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_DinstinctKeyValueType"
                },
                {}
            ],
            "description": "MetadataKeyValueType is a type for providing a target object value for the purpose of defining a distinct metadata key. Only a single value can be provided for the target object.\r\n\r\n<p>Java class for MetadataKeyValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataKeyValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DinstinctKeyValueType\">\r\n       &lt;choice>\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleKeyValueType\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\"/>\r\n         &lt;element name=\"DataKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyType\"/>\r\n         &lt;element name=\"Object\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectReferenceType\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SingleNCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataKeyValueType",
            "type": "object"
        },
        "xml_ns4_MetadataStructureRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureRefBaseType"
                },
                {}
            ],
            "description": "MetadataStructureRefType contains a set of reference fields for a metadata structure definition.\r\n\r\n<p>Java class for MetadataStructureRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataStructureRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureTypeCodelistType\" fixed=\"MetadataStructure\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataStructureRefType",
            "type": "object"
        },
        "xml_ns4_MetadataStructureReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureReferenceBaseType"
                },
                {}
            ],
            "description": "MetadataStructureReferenceType is a type for referencing a metadata structure definition object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for MetadataStructureReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataStructureReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataStructureRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataStructureReferenceType",
            "type": "object"
        },
        "xml_ns4_MetadataTargetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListRefBaseType"
                },
                {}
            ],
            "description": "MetadataTargetRefType contains a reference to a metadata target within a metadata structure definition.\r\n\r\n<p>Java class for MetadataTargetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataTargetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"MetadataTarget\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataTargetRefType",
            "type": "object"
        },
        "xml_ns4_MetadataTargetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListReferenceType"
                },
                {}
            ],
            "description": "MetadataTargetReferenceType is a type for referencing a metadata target object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for MetadataTargetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataTargetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataTargetRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataTargetReferenceType",
            "type": "object"
        },
        "xml_ns4_MetadataTargetRegionKeyType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentValueSetType"
                },
                {}
            ],
            "description": "MetadataTargetRegionKeyType is a type for providing a set of values for a target object in a metadata target of a re fence metadata report. A set of values or a time range can be provided for a report period target object. A collection of the respective types of references can be provided for data set reference and identifiable object reference target objects. For a key descriptor values target object, a collection of data keys can be provided.\r\n\r\n<p>Java class for MetadataTargetRegionKeyType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataTargetRegionKeyType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentValueSetType\">\r\n       &lt;choice>\r\n         &lt;element name=\"Value\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SimpleKeyValueType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataSet\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SetReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"DataKey\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataKeyType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"Object\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectReferenceType\" maxOccurs=\"unbounded\"/>\r\n         &lt;element name=\"TimeRange\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimeRangeValueType\"/>\r\n       &lt;/choice>\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}SingleNCNameIDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataTargetRegionKeyType",
            "type": "object"
        },
        "xml_ns4_MetadataTargetRegionType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RegionType"
                },
                {}
            ],
            "description": "MetadataTargetRegionType defines the structure of a metadata target region. A metadata target region must define the report structure and the metadata target from that structure on which the region is based. This type is based on the abstract RegionType and simply refines the key and attribute values to conform with what is applicable for target objects and metadata attributes, respectively. See the documentation of the base type for more details on how a region is defined.\r\n\r\n<p>Java class for MetadataTargetRegionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataTargetRegionType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RegionType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"KeyValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataTargetRegionKeyType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attribute\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataAttributeValueSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"report\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"metadataTarget\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataTargetRegionType",
            "type": "object"
        },
        "xml_ns4_MetadataflowRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureUsageRefBaseType"
                },
                {}
            ],
            "description": "MetadataflowRefType contains a set of reference fields for a metadata flow.\r\n\r\n<p>Java class for MetadataflowRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataflowRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageTypeCodelistType\" fixed=\"Metadataflow\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataflowRefType",
            "type": "object"
        },
        "xml_ns4_MetadataflowReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureUsageReferenceBaseType"
                },
                {}
            ],
            "description": "MetadataflowReferenceType is a type for referencing a metadata flow object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for MetadataflowReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"MetadataflowReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MetadataflowRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "MetadataflowReferenceType",
            "type": "object"
        },
        "xml_ns4_ObjectRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_RefBaseType"
                },
                {}
            ],
            "description": "ObjectRefType contains a set of reference fields for the purpose of referencing any object. This cannot be a local reference, therefore the agency identifier is required. It is also required that the class and package be supplied for the referenced object such that a complete URN reference can be built from the values provided. Note that this is not capable of fully validating that all necessary fields are supplied for a given object type.\r\n\r\n<p>Java class for ObjectRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ObjectRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ObjectRefType",
            "type": "object"
        },
        "xml_ns4_ObjectReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "ObjectReferenceType is a generic reference which allows for any object to be referenced. The type of object actually referenced can be determined from the URN or from the class attribute of the full set of reference fields.\r\n\r\n<p>Java class for ObjectReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ObjectReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ObjectReferenceType",
            "type": "object"
        },
        "xml_ns4_ObjectTypeCodelistType": {
            "description": "<p>Java class for ObjectTypeCodelistType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"ObjectTypeCodelistType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"Any\"/>\r\n     &lt;enumeration value=\"Agency\"/>\r\n     &lt;enumeration value=\"AgencyScheme\"/>\r\n     &lt;enumeration value=\"AttachmentConstraint\"/>\r\n     &lt;enumeration value=\"Attribute\"/>\r\n     &lt;enumeration value=\"AttributeDescriptor\"/>\r\n     &lt;enumeration value=\"Categorisation\"/>\r\n     &lt;enumeration value=\"Category\"/>\r\n     &lt;enumeration value=\"CategorySchemeMap\"/>\r\n     &lt;enumeration value=\"CategoryScheme\"/>\r\n     &lt;enumeration value=\"Code\"/>\r\n     &lt;enumeration value=\"CodeMap\"/>\r\n     &lt;enumeration value=\"Codelist\"/>\r\n     &lt;enumeration value=\"CodelistMap\"/>\r\n     &lt;enumeration value=\"ComponentMap\"/>\r\n     &lt;enumeration value=\"Concept\"/>\r\n     &lt;enumeration value=\"ConceptMap\"/>\r\n     &lt;enumeration value=\"ConceptScheme\"/>\r\n     &lt;enumeration value=\"ConceptSchemeMap\"/>\r\n     &lt;enumeration value=\"Constraint\"/>\r\n     &lt;enumeration value=\"ConstraintTarget\"/>\r\n     &lt;enumeration value=\"ContentConstraint\"/>\r\n     &lt;enumeration value=\"Dataflow\"/>\r\n     &lt;enumeration value=\"DataConsumer\"/>\r\n     &lt;enumeration value=\"DataConsumerScheme\"/>\r\n     &lt;enumeration value=\"DataProvider\"/>\r\n     &lt;enumeration value=\"DataProviderScheme\"/>\r\n     &lt;enumeration value=\"DataSetTarget\"/>\r\n     &lt;enumeration value=\"DataStructure\"/>\r\n     &lt;enumeration value=\"Dimension\"/>\r\n     &lt;enumeration value=\"DimensionDescriptor\"/>\r\n     &lt;enumeration value=\"DimensionDescriptorValuesTarget\"/>\r\n     &lt;enumeration value=\"GroupDimensionDescriptor\"/>\r\n     &lt;enumeration value=\"HierarchicalCode\"/>\r\n     &lt;enumeration value=\"HierarchicalCodelist\"/>\r\n     &lt;enumeration value=\"Hierarchy\"/>\r\n     &lt;enumeration value=\"HybridCodelistMap\"/>\r\n     &lt;enumeration value=\"HybridCodeMap\"/>\r\n     &lt;enumeration value=\"IdentifiableObjectTarget\"/>\r\n     &lt;enumeration value=\"Level\"/>\r\n     &lt;enumeration value=\"MeasureDescriptor\"/>\r\n     &lt;enumeration value=\"MeasureDimension\"/>\r\n     &lt;enumeration value=\"Metadataflow\"/>\r\n     &lt;enumeration value=\"MetadataAttribute\"/>\r\n     &lt;enumeration value=\"MetadataSet\"/>\r\n     &lt;enumeration value=\"MetadataStructure\"/>\r\n     &lt;enumeration value=\"MetadataTarget\"/>\r\n     &lt;enumeration value=\"Organisation\"/>\r\n     &lt;enumeration value=\"OrganisationMap\"/>\r\n     &lt;enumeration value=\"OrganisationScheme\"/>\r\n     &lt;enumeration value=\"OrganisationSchemeMap\"/>\r\n     &lt;enumeration value=\"OrganisationUnit\"/>\r\n     &lt;enumeration value=\"OrganisationUnitScheme\"/>\r\n     &lt;enumeration value=\"PrimaryMeasure\"/>\r\n     &lt;enumeration value=\"Process\"/>\r\n     &lt;enumeration value=\"ProcessStep\"/>\r\n     &lt;enumeration value=\"ProvisionAgreement\"/>\r\n     &lt;enumeration value=\"ReportingCategory\"/>\r\n     &lt;enumeration value=\"ReportingCategoryMap\"/>\r\n     &lt;enumeration value=\"ReportingTaxonomy\"/>\r\n     &lt;enumeration value=\"ReportingTaxonomyMap\"/>\r\n     &lt;enumeration value=\"ReportingYearStartDay\"/>\r\n     &lt;enumeration value=\"ReportPeriodTarget\"/>\r\n     &lt;enumeration value=\"ReportStructure\"/>\r\n     &lt;enumeration value=\"StructureMap\"/>\r\n     &lt;enumeration value=\"StructureSet\"/>\r\n     &lt;enumeration value=\"TimeDimension\"/>\r\n     &lt;enumeration value=\"Transition\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "Any",
                "Agency",
                "AgencyScheme",
                "AttachmentConstraint",
                "Attribute",
                "AttributeDescriptor",
                "Categorisation",
                "Category",
                "CategorySchemeMap",
                "CategoryScheme",
                "Code",
                "CodeMap",
                "Codelist",
                "CodelistMap",
                "ComponentMap",
                "Concept",
                "ConceptMap",
                "ConceptScheme",
                "ConceptSchemeMap",
                "Constraint",
                "ConstraintTarget",
                "ContentConstraint",
                "Dataflow",
                "DataConsumer",
                "DataConsumerScheme",
                "DataProvider",
                "DataProviderScheme",
                "DataSetTarget",
                "DataStructure",
                "Dimension",
                "DimensionDescriptor",
                "DimensionDescriptorValuesTarget",
                "GroupDimensionDescriptor",
                "HierarchicalCode",
                "HierarchicalCodelist",
                "Hierarchy",
                "HybridCodelistMap",
                "HybridCodeMap",
                "IdentifiableObjectTarget",
                "Level",
                "MeasureDescriptor",
                "MeasureDimension",
                "Metadataflow",
                "MetadataAttribute",
                "MetadataSet",
                "MetadataStructure",
                "MetadataTarget",
                "Organisation",
                "OrganisationMap",
                "OrganisationScheme",
                "OrganisationSchemeMap",
                "OrganisationUnit",
                "OrganisationUnitScheme",
                "PrimaryMeasure",
                "Process",
                "ProcessStep",
                "ProvisionAgreement",
                "ReportingCategory",
                "ReportingCategoryMap",
                "ReportingTaxonomy",
                "ReportingTaxonomyMap",
                "ReportingYearStartDay",
                "ReportPeriodTarget",
                "ReportStructure",
                "StructureMap",
                "StructureSet",
                "TimeDimension",
                "Transition"
            ],
            "title": "ObjectTypeCodelistType",
            "type": "string"
        },
        "xml_ns4_OrganisationRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemRefBaseType"
                },
                {}
            ],
            "description": "OrganisationRefBaseType is an abstract base type which references an organisation from within a organisation scheme. Reference fields are required for both the scheme and the organisation.\r\n\r\n<p>Java class for OrganisationRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemRefBaseType\">\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"base\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationRefBaseType",
            "type": "object"
        },
        "xml_ns4_OrganisationRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationRefBaseType"
                },
                {}
            ],
            "description": "OrganisationRefType provides a reference to any organisation via a complete set of reference fields. It is required that the class (i.e. the type) of organisation being referenced be specified.\r\n\r\n<p>Java class for OrganisationRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationRefType",
            "type": "object"
        },
        "xml_ns4_OrganisationReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemReferenceType"
                },
                {}
            ],
            "description": "OrganisationReferenceBaseType is a type for referencing any organisation object, regardless of its type. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for OrganisationReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_OrganisationReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "OrganisationReferenceType references an organisation regardless of the specific type. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for OrganisationReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationReferenceType",
            "type": "object"
        },
        "xml_ns4_OrganisationSchemeMapRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "OrganisationSchemeMapRefType contains a set of reference fields for an organisation scheme map.\r\n\r\n<p>Java class for OrganisationSchemeMapRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeMapRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"OrganisationSchemeMap\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"mapping\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeMapRefType",
            "type": "object"
        },
        "xml_ns4_OrganisationSchemeMapReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "OrganisationSchemeMapReferenceType is a type for referencing a organisation scheme map object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for OrganisationSchemeMapReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeMapReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeMapRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeMapReferenceType",
            "type": "object"
        },
        "xml_ns4_OrganisationSchemeRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeRefBaseType"
                },
                {}
            ],
            "description": "OrganisationSchemeRefBaseType contains a set of reference fields for an organisation scheme.\r\n\r\n<p>Java class for OrganisationSchemeRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"base\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeRefBaseType",
            "type": "object"
        },
        "xml_ns4_OrganisationSchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeRefBaseType"
                },
                {}
            ],
            "description": "OrganisationSchemeRefType provides a reference to an organisation scheme via a complete set of reference fields. It is required that the class (i.e. the type) of organisation scheme being referenced be specified.\r\n\r\n<p>Java class for OrganisationSchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeRefType",
            "type": "object"
        },
        "xml_ns4_OrganisationSchemeReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "OrganisationSchemeReferenceBaseType is a type for referencing a organisation scheme object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for OrganisationSchemeReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_OrganisationSchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "OrganisationSchemeReferenceType references an organisation scheme regardless of the specific type. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for OrganisationSchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationSchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationSchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_OrganisationUnitRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationRefBaseType"
                },
                {}
            ],
            "description": "OrganisationUnitRefType contains a set of reference fields for referencing an organisation unit within an organisation unit scheme.\r\n\r\n<p>Java class for OrganisationUnitRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationUnitRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationTypeCodelistType\" fixed=\"OrganisationUnit\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationUnitRefType",
            "type": "object"
        },
        "xml_ns4_OrganisationUnitReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationReferenceBaseType"
                },
                {}
            ],
            "description": "OrganisationUnitReferenceType is a type for referencing an organisation unit. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for OrganisationUnitReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationUnitReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationUnitRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationUnitReferenceType",
            "type": "object"
        },
        "xml_ns4_OrganisationUnitSchemeRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeRefBaseType"
                },
                {}
            ],
            "description": "OrganisationUnitSchemeRefType contains a set of reference fields for an organisation unit scheme.\r\n\r\n<p>Java class for OrganisationUnitSchemeRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationUnitSchemeRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeTypeCodelistType\" fixed=\"OrganisationUnitScheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationUnitSchemeRefType",
            "type": "object"
        },
        "xml_ns4_OrganisationUnitSchemeReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_OrganisationSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "OrganisationUnitSchemeReferenceType is a type for referencing an organisation unit scheme object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for OrganisationUnitSchemeReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"OrganisationUnitSchemeReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}OrganisationUnitSchemeRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "OrganisationUnitSchemeReferenceType",
            "type": "object"
        },
        "xml_ns4_PackageTypeCodelistType": {
            "description": "<p>Java class for PackageTypeCodelistType.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n<p>\r\n<pre>\r\n &lt;simpleType name=\"PackageTypeCodelistType\">\r\n   &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}string\">\r\n     &lt;enumeration value=\"base\"/>\r\n     &lt;enumeration value=\"datastructure\"/>\r\n     &lt;enumeration value=\"metadatastructure\"/>\r\n     &lt;enumeration value=\"process\"/>\r\n     &lt;enumeration value=\"registry\"/>\r\n     &lt;enumeration value=\"mapping\"/>\r\n     &lt;enumeration value=\"codelist\"/>\r\n     &lt;enumeration value=\"categoryscheme\"/>\r\n     &lt;enumeration value=\"conceptscheme\"/>\r\n   &lt;/restriction>\r\n &lt;/simpleType>\r\n </pre>",
            "enum": [
                "base",
                "datastructure",
                "metadatastructure",
                "process",
                "registry",
                "mapping",
                "codelist",
                "categoryscheme",
                "conceptscheme"
            ],
            "title": "PackageTypeCodelistType",
            "type": "string"
        },
        "xml_ns4_PayloadStructureType": {
            "allOf": [
                {
                    "properties": {
                        "ProvisionAgrement": {
                            "$ref": "#/definitions/xml_ns4_ProvisionAgreementReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "Structure": {
                            "$ref": "#/definitions/xml_ns4_StructureReferenceBaseType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "StructureUsage": {
                            "$ref": "#/definitions/xml_ns4_StructureUsageReferenceBaseType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "dimensionAtObservation": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "explicitMeasures": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "namespace": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "schemaURL": {
                            "description": "",
                            "type": "string",
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
                        "structureID": {
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
            "description": "PayloadStructureType is an abstract base type used to define the structural information for data or metadata sets. A reference to the structure is provided (either explicitly or through a reference to a structure usage).\r\n\r\n<p>Java class for PayloadStructureType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"PayloadStructureType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;choice>\r\n           &lt;element name=\"ProvisionAgrement\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ProvisionAgreementReferenceType\"/>\r\n           &lt;element name=\"StructureUsage\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageReferenceBaseType\"/>\r\n           &lt;element name=\"Structure\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureReferenceBaseType\"/>\r\n         &lt;/choice>\r\n       &lt;/sequence>\r\n       &lt;attGroup ref=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ExternalReferenceAttributeGroup\"/>\r\n       &lt;attribute name=\"structureID\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}ID\" />\r\n       &lt;attribute name=\"schemaURL\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" />\r\n       &lt;attribute name=\"namespace\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" />\r\n       &lt;attribute name=\"dimensionAtObservation\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObservationDimensionType\" />\r\n       &lt;attribute name=\"explicitMeasures\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "structureID"
            ],
            "title": "PayloadStructureType",
            "type": "object"
        },
        "xml_ns4_PrimaryMeasureRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "PrimaryMeasureRefType contains a reference to the primary measure within a data structure definition. Note that since there is only one key descriptor, the container reference fields are prohibited.\r\n\r\n<p>Java class for PrimaryMeasureRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"PrimaryMeasureRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"OBS_VALUE\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"PrimaryMeasure\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "PrimaryMeasureRefType",
            "type": "object"
        },
        "xml_ns4_PrimaryMeasureReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "PrimaryMeasureReferenceType is a type for referencing a primary measure object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for PrimaryMeasureReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"PrimaryMeasureReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PrimaryMeasureRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "PrimaryMeasureReferenceType",
            "type": "object"
        },
        "xml_ns4_ProcessRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "ProcessRefType contains a set of reference fields for a process.\r\n\r\n<p>Java class for ProcessRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableTypeCodelistType\" fixed=\"Process\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"process\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessRefType",
            "type": "object"
        },
        "xml_ns4_ProcessReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "ProcessReferenceType is a type for referencing a process object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ProcessReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ProcessRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessReferenceType",
            "type": "object"
        },
        "xml_ns4_ProcessStepRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "ProcessStepRefType provides for a reference to a process step through its id. Support for referencing nested process steps is provided through a nested identifier.\r\n\r\n<p>Java class for ProcessStepRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessStepRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"ProcessStep\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"process\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessStepRefType",
            "type": "object"
        },
        "xml_ns4_ProcessStepReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "ProcessStepReferenceType is a type for referencing a process step object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ProcessStepReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProcessStepReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ProcessStepRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProcessStepReferenceType",
            "type": "object"
        },
        "xml_ns4_ProvisionAgreementRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "ProvisionAgreementRefType contains a set of reference fields for a provision agreement.\r\n\r\n<p>Java class for ProvisionAgreementRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProvisionAgreementRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableTypeCodelistType\" fixed=\"ProvisionAgreement\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"registry\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProvisionAgreementRefType",
            "type": "object"
        },
        "xml_ns4_ProvisionAgreementReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "ProvisionAgreementReferenceType is a type for referencing a provision agreement. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ProvisionAgreementReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ProvisionAgreementReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ProvisionAgreementRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ProvisionAgreementReferenceType",
            "type": "object"
        },
        "xml_ns4_QueryableDataSourceType": {
            "allOf": [
                {
                    "properties": {
                        "DataURL": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "WADLURL": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "WSDLURL": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "isRESTDatasource": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "isWebServiceDatasource": {
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
            "description": "QueryableDataSourceType describes a data source which is accepts an standard SDMX Query message and responds appropriately.\r\n\r\n<p>Java class for QueryableDataSourceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"QueryableDataSourceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"DataURL\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\"/>\r\n         &lt;element name=\"WSDLURL\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\"/>\r\n         &lt;element name=\"WADLURL\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"isRESTDatasource\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n       &lt;attribute name=\"isWebServiceDatasource\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "isRESTDatasource",
                "isWebServiceDatasource",
                "DataURL"
            ],
            "title": "QueryableDataSourceType",
            "type": "object"
        },
        "xml_ns4_RefBaseType": {
            "allOf": [
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
                        "class": {
                            "$ref": "#/definitions/xml_ns4_ObjectTypeCodelistType",
                            "description": "",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "containerID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
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
                        },
                        "local": {
                            "description": "",
                            "type": "boolean",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "maintainableParentID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "maintainableParentVersion": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": ""
                            }
                        },
                        "package": {
                            "$ref": "#/definitions/xml_ns4_PackageTypeCodelistType",
                            "description": "",
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
            "description": "RefBaseType is an abstract base type the defines the basis for any set of complete reference fields. This should be refined by derived types so that only the necessary fields are available and required as necessary. This can be used for both full and local references (when some of the values are implied from another context). A local reference is indicated with the local attribute. The values in this type correspond directly to the components of the URN structure, and thus can be used to compose a URN when the local attribute value is false. As this is the case, any reference components which are not part of the URN structure should not be present in the derived types.\r\n\r\n<p>Java class for RefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"RefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;attribute name=\"agencyID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"maintainableParentID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" />\r\n       &lt;attribute name=\"containerID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "id"
            ],
            "title": "RefBaseType",
            "type": "object"
        },
        "xml_ns4_ReferencePeriodType": {
            "allOf": [
                {
                    "properties": {
                        "endTime": {
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
                        }
                    }
                }
            ],
            "description": "Specifies the inclusive start and end times.\r\n\r\n<p>Java class for ReferencePeriodType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReferencePeriodType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;attribute name=\"startTime\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" />\r\n       &lt;attribute name=\"endTime\" use=\"required\" type=\"{http://www.w3.org/2001/XMLSchema}dateTime\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "endTime",
                "startTime"
            ],
            "title": "ReferencePeriodType",
            "type": "object"
        },
        "xml_ns4_ReferenceType": {
            "allOf": [
                {
                    "properties": {
                        "Ref": {
                            "$ref": "#/definitions/xml_ns4_RefBaseType",
                            "description": "",
                            "xml": {
                                "namespace": ""
                            }
                        },
                        "URN": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": ""
                            }
                        }
                    }
                }
            ],
            "description": "ReferenceType is an abstract base type. It is used as the basis for all references, to all for a top level generic object reference that can be substituted with an explicit reference to any object. Any reference can consist of a Ref (which contains all required reference fields separately) and/or a URN. These must result in the identification of the same object. Note that the Ref and URN elements are local and unqualified in order to allow for refinement of this structure outside of the namespace. This allows any reference to further refined by a different namespace. For example, a metadata structure definition specific metadata set might wish to restrict the URN to only allow for a value from an enumerated list. The general URN structure, for the purpose of mapping the reference fields is as follows: urn:sdmx:org.package-name.class-name=agency-id:(maintainable-parent-object-id[maintainable-parent-object-version].)?(container-object-id.)?object-id([object-version])?.\r\n\r\n<p>Java class for ReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}RefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReferenceType",
            "type": "object"
        },
        "xml_ns4_RegionType": {
            "allOf": [
                {
                    "properties": {
                        "Attribute": {
                            "$ref": "#/definitions/xml_ns4_ComponentValueSetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "KeyValue": {
                            "$ref": "#/definitions/xml_ns4_ComponentValueSetType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "include": {
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
            "description": "RegionType is an abstract type which defines a generic constraint region. This type can be refined to define regions for data or metadata sets. A region is defined by a collection of key values - each of which a collection of values for a component which disambiguates data or metadata (i.e. dimensions or the target objects of a metadata target). For each region, as collection of attribute values can be provided. Taken together, the key values and attributes serve to identify or describe a subset of a data or metadata set. Finally, the region can flagged as being included or excluded, although this flag only makes sense when the region is used in a particular context.\r\n\r\n<p>Java class for RegionType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"RegionType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"KeyValue\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentValueSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n         &lt;element name=\"Attribute\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentValueSetType\" maxOccurs=\"unbounded\" minOccurs=\"0\"/>\r\n       &lt;/sequence>\r\n       &lt;attribute name=\"include\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"true\" />\r\n       &lt;anyAttribute namespace=''/>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "RegionType",
            "type": "object"
        },
        "xml_ns4_ReportCategoryRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemRefBaseType"
                },
                {}
            ],
            "description": "ReportCategoryRefType contains a set of fields for referencing a reporting category within a reporting taxonomy.\r\n\r\n<p>Java class for ReportCategoryRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportCategoryRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemRefBaseType\">\r\n       &lt;attribute name=\"maintainableParentID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"maintainableParentVersion\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemTypeCodelistType\" fixed=\"ReportingCategory\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"categoryscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportCategoryRefType",
            "type": "object"
        },
        "xml_ns4_ReportPeriodTargetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "ReportPeriodTargetRefType contains a reference to a report period target within a metadata target of a data structure definition.\r\n\r\n<p>Java class for ReportPeriodTargetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportPeriodTargetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"REPORT_PERIOD_TARGET\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentTypeCodelistType\" fixed=\"ReportPeriodTarget\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportPeriodTargetRefType",
            "type": "object"
        },
        "xml_ns4_ReportPeriodTargetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "ReportPeriodTargetReferenceType is a type for referencing a report period target object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ReportPeriodTargetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportPeriodTargetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReportPeriodTargetRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportPeriodTargetReferenceType",
            "type": "object"
        },
        "xml_ns4_ReportStructureRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListRefBaseType"
                },
                {}
            ],
            "description": "ReportStructureRefType contains a reference to a report structure within a metadata structure definition.\r\n\r\n<p>Java class for ReportStructureRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportStructureRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListTypeCodelistType\" fixed=\"ReportStructure\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"metadatastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportStructureRefType",
            "type": "object"
        },
        "xml_ns4_ReportStructureReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentListReferenceType"
                },
                {}
            ],
            "description": "ReportStructureReferenceType is a type for referencing a report structure object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ReportStructureReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportStructureReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentListReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReportStructureRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportStructureReferenceType",
            "type": "object"
        },
        "xml_ns4_ReportingCategoryReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemReferenceType"
                },
                {}
            ],
            "description": "ReportingCategoryReferenceType is a type for referencing a reporting category object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ReportingCategoryReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingCategoryReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReportCategoryRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingCategoryReferenceType",
            "type": "object"
        },
        "xml_ns4_ReportingTaxonomyRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeRefBaseType"
                },
                {}
            ],
            "description": "ReportingTaxonomyRefType provides a reference to a reporting taxonomy via a complete set of reference fields.\r\n\r\n<p>Java class for ReportingTaxonomyRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingTaxonomyRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeTypeCodelistType\" fixed=\"ReportingTaxonomy\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemePackageTypeCodelistType\" fixed=\"categoryscheme\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingTaxonomyRefType",
            "type": "object"
        },
        "xml_ns4_ReportingTaxonomyReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ItemSchemeReferenceBaseType"
                },
                {}
            ],
            "description": "ReportingTaxonomyReferenceType is a type for referencing a reporting taxonomy object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for ReportingTaxonomyReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"ReportingTaxonomyReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ItemSchemeReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReportingTaxonomyRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "ReportingTaxonomyReferenceType",
            "type": "object"
        },
        "xml_ns4_SetReferenceType": {
            "allOf": [
                {
                    "properties": {
                        "DataProvider": {
                            "$ref": "#/definitions/xml_ns4_DataProviderReferenceType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "ID": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        }
                    }
                }
            ],
            "description": "SetReferenceType defines the structure of a reference to a data/metadata set. A full reference to a data provider and the identifier for the data set must be provided. Note that this is not derived from the base reference structure since data/metadata sets are not technically identifiable.\r\n\r\n<p>Java class for SetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"DataProvider\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DataProviderReferenceType\"/>\r\n         &lt;element name=\"ID\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "DataProvider",
                "ID"
            ],
            "title": "SetReferenceType",
            "type": "object"
        },
        "xml_ns4_SimpleKeyValueType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_SimpleValueType"
                },
                {}
            ],
            "description": "SimpleKeyValueType derives from the SimpleValueType, but does not allow for the cascading of value in the hierarchy, as keys are meant to describe a distinct full or partial key.\r\n\r\n<p>Java class for SimpleKeyValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SimpleKeyValueType\">\r\n   &lt;simpleContent>\r\n     &lt;restriction base=\"&lt;http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common>SimpleValueType\">\r\n     &lt;/restriction>\r\n   &lt;/simpleContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "SimpleKeyValueType",
            "type": "object"
        },
        "xml_ns4_SimpleValueType": {
            "allOf": [
                {
                    "properties": {
                        "(value)": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "cascadeValues": {
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
            "description": "SimpleValueType contains a simple value for a component, and if that value is from a code list, the ability to indicate that child codes in a simple hierarchy are part of the value set of the component for the region.\r\n\r\n<p>Java class for SimpleValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"SimpleValueType\">\r\n   &lt;simpleContent>\r\n     &lt;extension base=\"&lt;http://www.w3.org/2001/XMLSchema>string\">\r\n       &lt;attribute name=\"cascadeValues\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"false\" />\r\n     &lt;/extension>\r\n   &lt;/simpleContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "(value)"
            ],
            "title": "SimpleValueType",
            "type": "object"
        },
        "xml_ns4_StructureMapRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectRefBaseType"
                },
                {}
            ],
            "description": "StructureMapRefType contains fields for referencing a structure map within a structure set.\r\n\r\n<p>Java class for StructureMapRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureMapRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"StructureMap\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"mapping\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureMapRefType",
            "type": "object"
        },
        "xml_ns4_StructureMapReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ChildObjectReferenceType"
                },
                {}
            ],
            "description": "StructureMapReferenceType is a type for referencing a structure map object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for StructureMapReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureMapReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureMapRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureMapReferenceType",
            "type": "object"
        },
        "xml_ns4_StructureOrUsageRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "StructureOrUsageRefBaseType is an abstract base type for referencing a structure or structure usage.\r\n\r\n<p>Java class for StructureOrUsageRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureOrUsageRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureOrUsageRefBaseType",
            "type": "object"
        },
        "xml_ns4_StructureOrUsageRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureOrUsageRefBaseType"
                },
                {}
            ],
            "description": "StructureOrUsageRefType is a type for referencing a structure or structure usage.\r\n\r\n<p>Java class for StructureOrUsageRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureOrUsageRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureOrUsageRefType",
            "type": "object"
        },
        "xml_ns4_StructureOrUsageReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "StructureOrUsageReferenceType is a specific type of a reference for referencing either a structure or a structure usage. It consists of a URN and/or a complete set of reference fields; agency, id and version. If the complete set of reference fields is used, it is required that a class and package be provided so that the type of object referenced is clear.\r\n\r\n<p>Java class for StructureOrUsageReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureOrUsageReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureOrUsageReferenceType",
            "type": "object"
        },
        "xml_ns4_StructureRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureOrUsageRefBaseType"
                },
                {}
            ],
            "description": "StructureRefBaseType is an abstract base type for referencing a structure.\r\n\r\n<p>Java class for StructureRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageRefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureRefBaseType",
            "type": "object"
        },
        "xml_ns4_StructureRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureRefBaseType"
                },
                {}
            ],
            "description": "StructureRefType contains a set of reference fields for referencing any structure.\r\n\r\n<p>Java class for StructureRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureRefType",
            "type": "object"
        },
        "xml_ns4_StructureReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "StructureReferneceBaseType is a specific type of MaintainableReference that is used for referencing structure definitions. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for StructureReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_StructureReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureReferenceBaseType"
                },
                {}
            ],
            "description": "StructureReferenceType is a specific type of MaintainableReference that is used for referencing any structure. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for StructureReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureReferenceType",
            "type": "object"
        },
        "xml_ns4_StructureSetRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableRefBaseType"
                },
                {}
            ],
            "description": "StructureSetRefType contains a set of reference fields for a structure set.\r\n\r\n<p>Java class for StructureSetRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSetRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableRefBaseType\">\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableTypeCodelistType\" fixed=\"StructureSet\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"mapping\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSetRefType",
            "type": "object"
        },
        "xml_ns4_StructureSetReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "StructureSetReferenceType is a type for referencing a structure set object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for StructureSetReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureSetReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureSetRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureSetReferenceType",
            "type": "object"
        },
        "xml_ns4_StructureUsageRefBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureOrUsageRefBaseType"
                },
                {}
            ],
            "description": "StructureUsageRefBaseType is an abstract base type for referencing a structure usage.\r\n\r\n<p>Java class for StructureUsageRefBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureUsageRefBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureOrUsageRefBaseType\">\r\n       &lt;attribute name=\"agencyID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedNCNameIDType\" />\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" />\r\n       &lt;attribute name=\"version\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}VersionType\" default=\"1.0\" />\r\n       &lt;attribute name=\"local\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" fixed=\"false\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureUsageRefBaseType",
            "type": "object"
        },
        "xml_ns4_StructureUsageRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureUsageRefBaseType"
                },
                {}
            ],
            "description": "StructureUsageRefType contains a set of reference fields for referencing any structure usage.\r\n\r\n<p>Java class for StructureUsageRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureUsageRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageRefBaseType\">\r\n       &lt;attribute name=\"class\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageTypeCodelistType\" />\r\n       &lt;attribute name=\"package\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureUsageRefType",
            "type": "object"
        },
        "xml_ns4_StructureUsageReferenceBaseType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_MaintainableReferenceBaseType"
                },
                {}
            ],
            "description": "StructureUsageReferenceBaseType is a specific type of MaintainableReference that is used for referencing structure usages. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for StructureUsageReferenceBaseType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureUsageReferenceBaseType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}MaintainableReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageRefBaseType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureUsageReferenceBaseType",
            "type": "object"
        },
        "xml_ns4_StructureUsageReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_StructureUsageReferenceBaseType"
                },
                {}
            ],
            "description": "StructureUsageReferenceType is a specific type of MaintainableReference that is used for referencing any structure usages. It consists of a URN and/or a complete set of reference fields; agency, id, and version.\r\n\r\n<p>Java class for StructureUsageReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"StructureUsageReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageReferenceBaseType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructureUsageRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "StructureUsageReferenceType",
            "type": "object"
        },
        "xml_ns4_TextType": {
            "allOf": [
                {
                    "properties": {
                        "(value)": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "lang": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.w3.org/XML/1998/namespace"
                            }
                        }
                    }
                }
            ],
            "description": "TextType provides for a set of language-specific alternates to be provided for any human-readable constructs in the instance.\r\n\r\n<p>Java class for TextType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TextType\">\r\n   &lt;simpleContent>\r\n     &lt;extension base=\"&lt;http://www.w3.org/2001/XMLSchema>string\">\r\n       &lt;attribute ref=\"{http://www.w3.org/XML/1998/namespace}lang default=\"en\"\"/>\r\n     &lt;/extension>\r\n   &lt;/simpleContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "(value)"
            ],
            "title": "TextType",
            "type": "object"
        },
        "xml_ns4_TimeDimensionRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentRefBaseType"
                },
                {}
            ],
            "description": "TimeDimensionRefType contains a reference to the time dimension within a data structure definition. Note that since there is only one key descriptor, the container reference fields are prohibited.\r\n\r\n<p>Java class for TimeDimensionRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeDimensionRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentRefBaseType\">\r\n       &lt;attribute name=\"id\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}IDType\" fixed=\"TIME_PERIOD\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}DimensionTypeCodelistType\" fixed=\"TimeDimension\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}StructurePackageTypeCodelistType\" fixed=\"datastructure\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeDimensionRefType",
            "type": "object"
        },
        "xml_ns4_TimeDimensionReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ComponentReferenceType"
                },
                {}
            ],
            "description": "TimeDimensionReferenceType is a type for referencing a time dimension object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for TimeDimensionReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeDimensionReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ComponentReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimeDimensionRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeDimensionReferenceType",
            "type": "object"
        },
        "xml_ns4_TimePeriodRangeType": {
            "allOf": [
                {
                    "properties": {
                        "(value)": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "isInclusive": {
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
            "description": "TimePeriodRangeType defines a time period, and indicates whether it is inclusive in a range.\r\n\r\n<p>Java class for TimePeriodRangeType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimePeriodRangeType\">\r\n   &lt;simpleContent>\r\n     &lt;extension base=\"&lt;http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common>ObservationalTimePeriodType\">\r\n       &lt;attribute name=\"isInclusive\" type=\"{http://www.w3.org/2001/XMLSchema}boolean\" default=\"true\" />\r\n     &lt;/extension>\r\n   &lt;/simpleContent>\r\n &lt;/complexType>\r\n </pre>",
            "required": [
                "(value)"
            ],
            "title": "TimePeriodRangeType",
            "type": "object"
        },
        "xml_ns4_TimeRangeValueType": {
            "allOf": [
                {
                    "properties": {
                        "AfterPeriod": {
                            "$ref": "#/definitions/xml_ns4_TimePeriodRangeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "BeforePeriod": {
                            "$ref": "#/definitions/xml_ns4_TimePeriodRangeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "EndPeriod": {
                            "$ref": "#/definitions/xml_ns4_TimePeriodRangeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        },
                        "StartPeriod": {
                            "$ref": "#/definitions/xml_ns4_TimePeriodRangeType",
                            "description": "",
                            "xml": {
                                "namespace": "http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common"
                            }
                        }
                    }
                }
            ],
            "description": "TimeRangeValueType allows a time period value to be expressed as a range. It can be expressed as the period before a period, after a period, or between two periods. Each of these properties can specify their inclusion in regards to the range.\r\n\r\n<p>Java class for TimeRangeValueType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TimeRangeValueType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;choice>\r\n         &lt;element name=\"BeforePeriod\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimePeriodRangeType\"/>\r\n         &lt;element name=\"AfterPeriod\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimePeriodRangeType\"/>\r\n         &lt;sequence>\r\n           &lt;element name=\"StartPeriod\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimePeriodRangeType\"/>\r\n           &lt;element name=\"EndPeriod\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TimePeriodRangeType\"/>\r\n         &lt;/sequence>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TimeRangeValueType",
            "type": "object"
        },
        "xml_ns4_TransitionRefType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ContainerChildObjectRefBaseType"
                },
                {}
            ],
            "description": "TransitionRefType provides for a reference to a transition definition in process step through its id.\r\n\r\n<p>Java class for TransitionRefType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TransitionRefType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContainerChildObjectRefBaseType\">\r\n       &lt;attribute name=\"containerID\" use=\"required\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}NestedIDType\" />\r\n       &lt;attribute name=\"class\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ObjectTypeCodelistType\" fixed=\"Transition\" />\r\n       &lt;attribute name=\"package\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}PackageTypeCodelistType\" fixed=\"process\" />\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TransitionRefType",
            "type": "object"
        },
        "xml_ns4_TransitionReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ContainerChildObjectReferenceType"
                },
                {}
            ],
            "description": "TransiationReferenceType is a type for referencing a process step object. It consists of a URN and/or a complete set of reference fields.\r\n\r\n<p>Java class for TransitionReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"TransitionReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ContainerChildObjectReferenceType\">\r\n       &lt;choice>\r\n         &lt;sequence>\r\n           &lt;element name=\"Ref\" type=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}TransitionRefType\" form=\"unqualified\"/>\r\n           &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" minOccurs=\"0\" form=\"unqualified\"/>\r\n         &lt;/sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/choice>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "TransitionReferenceType",
            "type": "object"
        },
        "xml_ns4_URNReferenceType": {
            "allOf": [
                {
                    "$ref": "#/definitions/xml_ns4_ReferenceType"
                },
                {}
            ],
            "description": "URNReferenceType is a type referencing any object via its URN. The exact type of object is not specified, although it can be determined from the URN value.\r\n\r\n<p>Java class for URNReferenceType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"URNReferenceType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common}ReferenceType\">\r\n       &lt;sequence>\r\n         &lt;element name=\"URN\" type=\"{http://www.w3.org/2001/XMLSchema}anyURI\" form=\"unqualified\"/>\r\n       &lt;/sequence>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "URNReferenceType",
            "type": "object"
        },
        "xml_ns4_XHTMLType": {
            "allOf": [
                {
                    "properties": {
                        "lang": {
                            "description": "",
                            "type": "string",
                            "xml": {
                                "attribute": true,
                                "namespace": "http://www.w3.org/XML/1998/namespace"
                            }
                        }
                    }
                }
            ],
            "description": "XHTMLType allows for mixed content of text and XHTML tags. When using this type, one will have to provide a reference to the XHTML schema, since the processing of the tags within this type is strict, meaning that they are validated against the XHTML schema provided.\r\n\r\n<p>Java class for XHTMLType complex type.\r\n\r\n<p>The following schema fragment specifies the expected content contained within this class.\r\n\r\n<pre>\r\n &lt;complexType name=\"XHTMLType\">\r\n   &lt;complexContent>\r\n     &lt;restriction base=\"{http://www.w3.org/2001/XMLSchema}anyType\">\r\n       &lt;sequence maxOccurs=\"unbounded\" minOccurs=\"0\">\r\n         &lt;any namespace='http://www.w3.org/1999/xhtml'/>\r\n       &lt;/sequence>\r\n       &lt;attribute ref=\"{http://www.w3.org/XML/1998/namespace}lang default=\"en\"\"/>\r\n     &lt;/restriction>\r\n   &lt;/complexContent>\r\n &lt;/complexType>\r\n </pre>",
            "title": "XHTMLType",
            "type": "object"
        }