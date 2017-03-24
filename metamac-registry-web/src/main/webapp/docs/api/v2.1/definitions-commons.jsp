<%@page pageEncoding="UTF-8"%>
	"xml_cdomain_ChildLinks":{
         "type":"object",
         "title":"ChildLinks",
         "allOf":[
            {
               "properties":{
                  "total":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Número total de recursos a los que se puede acceder a partir del actual",
                     "type":"number"
                  },
                  "childLink":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"Enlace a recurso accesible desde el actual",
                     "$ref":"#/definitions/ResourceLink"
                  }
               }
            }
         ],
         "description":"Recuersos a los que se puede acceder desde el actual"
      },
      "InternationalString":{
         "type":"object",
         "title":"InternationalString",
         "allOf":[
            {
               "properties":{
                  "text":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"Traducciones del texto",
                     "$ref":"#/definitions/LocalisedString"
                  }
               }
            }
         ],
         "description":"Texto en múltiples idiomas"
      },
      "xml_cdomain_Item": {
         "allOf": [
             {
                 "properties": {
                     "id": {
                         "description": "",
                         "type": "string",
                         "xml": {
                             "namespace": "http://www.siemac.org/metamac/rest/common/v1.0/domain"
                         }
                     },
                     "name": {
                         "$ref": "#/definitions/InternationalString",
                         "description": "",
                         "xml": {
                             "namespace": "http://www.siemac.org/metamac/rest/common/v1.0/domain"
                         }
                     }
                 }
             }
         ],
         "description": "",
         "required": [
             "id"
         ],
         "title": "Item",
         "type": "object"
      },
      "xml_cdomain_ListBase":{
         "type":"object",
         "title":"ListBase",
         "allOf":[
            {
               "properties":{
                  "firstLink":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Dado que se trata de un resultado paginado, este enlace nos permite desplazarnos a la primera página. Si no se muestra es porque ya estamos en ella. Tener en cuenta que cuando sólo existe una página, no existirá ni primera ni útlima",
                     "type":"string"
                  },
                  "kind":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Tipo del recurso",
                     "type":"string"
                  },
                  "lastLink":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Dado que se trata de un resultado paginado, este enlace nos permite desplazarnos a la útlima página. Si no se muestra es porque ya estamos en ella. Tener en cuenta que cuando sólo existe una página, no existirá ni primera ni útlima",
                     "type":"string"
                  },
                  "limit":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Número máximo de resultados a obtener",
                     "type":"number"
                  },
                  "nextLink":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Dado que se trata de un resultado paginado, este enlace nos permite desplazarnos a la página siguiente a la que nos encontramos. Si no se muestra es porque no existe siguiente",
                     "type":"string"
                  },
                  "offset":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Desplazamiento. Número a partir del cual se comienzan a obtener los resultados",
                     "type":"number"
                  },
                  "previousLink":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Dado que se trata de un resultado paginado, este enlace nos permite desplazarnos a la página anterior a la que nos encontramos. Si no se muestra es porque no existe siguiente",
                     "type":"string"
                  },
                  "selfLink":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Enlace al propio recurso. Dado un resultado nos permite saber cómo realizar la petición a la API para volver a obtenerlo",
                     "type":"string"
                  },
                  "total":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Número total de resultados existentes",
                     "type":"number"
                  }
               }
            }
         ],
         "description":"Listado paginado de recursos"
      },
      "LocalisedString":{
         "type":"object",
         "title":"LocalisedString",
         "allOf":[
            {
               "properties":{
                  "lang":{
                     "xml":{
                        "attribute":true,
                        "namespace":"http://www.w3.org/XML/1998/namespace"
                     },
                     "description":"Idioma del texto",
                     "type":"string"
                  },
                  "(value)":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"Traducción del texto en el idioma indicado",
                     "type":"string"
                  }
               }
            }
         ],
         "description":"Texto traducido a un idioma determinado"
      },
      "xml_cdomain_Resource":{
         "type":"object",
         "title":"Resource",
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
                  "id":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"código del recurso",
                     "type":"string"
                  },
                  "name":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"Nombre del recurso",
                     "$ref":"#/definitions/InternationalString"
                  },
                  "nestedId":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"código completo del recurso. sólo se especifica en los casos en los que un recurso pertenece a una jerarquía. Este código concatena el código de todos los recursos que le preceden en la jerarquía",
                     "type":"string"
                  },
                  "selfLink":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"Enlace al propio recurso",
                     "$ref":"#/definitions/ResourceLink"
                  },
                  "urn":{
                     "xml":{
                        "namespace":"http://www.siemac.org/metamac/rest/common/v1.0/domain"
                     },
                     "description":"URN del recurso",
                     "type":"string"
                  }
               }
            }
         ],
         "description":"Datos identificativos de un recurso"
      },
      "ResourceLink":{
         "type":"object",
         "title":"ResourceLink",
         "allOf":[
            {
               "properties":{
                  "href":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Enlace al recurso",
                     "type":"string"
                  },
                  "kind":{
                     "xml":{
                        "attribute":true,
                        "namespace":""
                     },
                     "description":"Tipo del recurso",
                     "type":"string"
                  }
               }
            }
         ],
         "description":"Enlace a un recurso"
      }