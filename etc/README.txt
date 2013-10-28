....................
URLS EXAMPLES FORMAT
....................


PUBLIC:
=======

-->	http://localhost:8080/metamac-registry-web/apis/registry/v2.1/agencyscheme
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/organisationunitscheme
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/dataproviderscheme
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/dataconsumerscheme
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/datastructure
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/conceptscheme
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/codelist
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/categoryscheme
-->	http://localhost:8080/metamac-registry-web/apis/registry/v2.1/data/flowID
-->	http://localhost:8080/metamac-registry-web/apis/registry/v2.1/dataflow
--> http://localhost:8080/metamac-registry-web/apis/registry/v2.1/categorisation

PRIVATE:
========

Examples::

-->	http://localhost:8080/metamac-registry-web/structure/registry/v2.1/agencyscheme

-->	http://localhost:8080/metamac-registry-web/data/registry/v2.1/data/flowID
--> http://localhost:8080/metamac-registry-web/data/registry/v2.1/dataflow
--> http://localhost:8080/metamac-registry-web/data/registry/v2.1/categorisation


	WADL:
	------
	
	Cualquier URL con parámetro ?_wadl (ejemplo: http://localhost:8080/metamac-registry-web/data/registry/v2.1?_wadl)
	se convierte a:	
	--> http://localhost:8080/metamac-registry-web/static/wadl/sdmx-rest.wadl


	PRINCIPAL:
	------
	-->	http://localhost:8080/metamac-registry-web/data
	-->	http://localhost:8080/metamac-registry-web/structure
	
	