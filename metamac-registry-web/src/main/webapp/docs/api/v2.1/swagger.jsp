<%@page import="org.siemac.metamac.core.common.util.swagger.SwaggerUtils"%>
<%@page pageEncoding="UTF-8"%>
{
   "swagger":"2.0",
   "info":{
      "description":"",
      "version":"2.0.1-SNAPSHOT",
      "title":"API de Registro SDMX v2.1"
   },
   "host":"<%=SwaggerUtils.getApiBaseURLForSwagger()%>",
   "schemes":[

   ],
   "tags" : [
    {
      "name" : "Estructura",
      "description" : ""
    },
    {
      "name" : "Datos",
      "description" : ""
    }
  ],
   "definitions": <jsp:include page="definitions.jsp" /> ,
   "paths":{
      "/v2.1/datastructure":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataStructure_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/datastructure/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataStructure_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/datastructure/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataStructure_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/datastructure/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataStructure_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categoryscheme":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategoryScheme_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categoryscheme/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategoryScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categoryscheme/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategoryScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categoryscheme/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategoryScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/conceptscheme":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findConceptScheme_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/conceptscheme/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findConceptScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/conceptscheme/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findConceptScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/conceptscheme/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findConceptScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/codelist":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCodelist_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/codelist/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCodelist_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/codelist/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCodelist_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/codelist/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCodelist_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationscheme":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationScheme_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationscheme/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationscheme/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationscheme/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/agencyscheme":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findAgencyScheme_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/agencyscheme/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findAgencyScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/agencyscheme/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findAgencyScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/agencyscheme/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findAgencyScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataproviderscheme":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataProviderScheme_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataproviderscheme/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataProviderScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataproviderscheme/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataProviderScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataproviderscheme/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataProviderScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataconsumerscheme":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataConsumerScheme_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataconsumerscheme/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataConsumerScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataconsumerscheme/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataConsumerScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataconsumerscheme/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataConsumerScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationunitscheme":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationUnitScheme_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationunitscheme/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationUnitScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationunitscheme/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationUnitScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/organisationunitscheme/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findOrganisationUnitScheme_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataflow":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataFlow_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataflow/{agencyID}":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataFlow_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataflow/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataFlow_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/dataflow/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findDataFlow_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categorisation":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategorisation_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categorisation/{agencyID}":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategorisation_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categorisation/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategorisation_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/categorisation/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura", "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findCategorisation_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/contentconstraint":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findContentConstraint_GET",
            "produces":[
               "application/xml"
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/contentconstraint/{agencyID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findContentConstraint_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/contentconstraint/{agencyID}/{resourceID}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findContentConstraint_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/contentconstraint/{agencyID}/{resourceID}/{version}":{
         "get":{
            "tags" : [ "Estructura" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findContentConstraint_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"agencyID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"resourceID",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"version",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/data/{flowRef}":{
         "get":{
            "tags" : [ "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findData_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"flowRef",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/data/{flowRef}/{key}":{
         "get":{
            "tags" : [ "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findData_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"flowRef",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"key",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      },
      "/v2.1/data/{flowRef}/{key}/{providerRef}":{
         "get":{
            "tags" : [ "Datos" ],
            "description":"",
            "operationId":"resource_SDMXRegistryV2_1_findData_GET",
            "produces":[
               "application/xml"
            ],
            "parameters":[
               {
                  "name":"flowRef",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"key",
                  "in":"path",
                  "type":"string",
                  "description":""
               },
               {
                  "name":"providerRef",
                  "in":"path",
                  "type":"string",
                  "description":""
               }
            ],
            "responses":{
               "200":{
                  "schema":{
                     "description":"",
                     "$ref":"#/definitions/xml_ns3_StructureType"
                  },
                  "headers":{

                  },
                  "description":"Éxito. Indica que la petición ha sido resuelta correctamente"
               },
               "404":{
                  "description":"No encontrado. El recurso solicitado no existe"
               },
               "406":{
                  "description":"No aceptable. El formato solicitado no es válido"
               },
               "500":{
                  "description":"Error interno del servidor. Se ha producido un error que impide que se obtenga el recurso solicitado"
               },
               "503":{
                  "description":"Servicio no disponible. Indica que actualmente el servidor no está disponible y por tanto, la solicitud no puede procesarse. El error puede deberse a una sobrecarga temporal o a labores de mantenimiento del servidor. Se trata de una situación temporal"
               }
            }
         }
      }
   }
}