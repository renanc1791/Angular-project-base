# Angular Project Template &middot; ![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)

<div align="center">
  <a href="https://angular.io/" target="blank"><img src="./img/angular.png" width="320" height="280" alt="Angular Logo" /></a>
</div>
<div>

<h1 align="center"> Template de desarrollo Angular 2+ frontend</h1>

> Angular 2+

> Typescript

> Nginx

> Docker

> CI/CD

Descripción del proyecto : Proyecto template de directrices para la estandarización de un proyecto, el objetivo del proyecto es que los desarrolladores puedan seguir la estructura conformada por este proyecto tanto como su archivo README, estructuras de carpeta estándar y su ciclo básico de CI/CD, con el motivo de mejorar y facilitar los tiempos de desarrollo y despliegue en cada uno de los proyectos.

## Tabla de contenido

- [Comenzando](#comenzando)
    - [Prerrequisitos](#prerrequisitos)
    - [Clonación](#clonación)
    - [Instalación](#instalación)
    - [Docker](#docker)
    - [Desarrollo](#desarrollo)
- [Pruebas](#pruebas)
    - [Unitarias](#unitarias)
    - [e2e](#e2e)
    - [Linter](#linter)
    - [coverage](#coverage)
- [Compilación](#compilación)
- [Documentación](#documentación)
    - [Estructura](#estructura)
    - [Conceptos](#conceptos)
- [Equipo](#equipo)

## Comenzando

A continuación se listarán todos los puntos necesarios para comenzar a desarrollar con el proyecto actual desde su fase de instalación hasta levantar un ambiente local de desarrollo sin problemas, se incluirán instrucciones de ejecución de comandos, testing, reglas y contexto de como esta estructurado el proyecto incluyendo su estructura de carpetas junto con su descripción.

## Prerrequisitos

1. Node js
    * https://nodejs.org/es/download/
2. Docker
    * https://docs.docker.com/get-docker/


## Clonación

```bash
git clone git@gitlab.com:arquitectura-agilesoft/example-front.git
```
* **Recuerda configurar tus llaves ssh**
    * https://docs.gitlab.com/ee/ssh/


## Instalación

```bash
$ npm install
```

## Docker

```bash
$ docker build -t example .
$ docker run -d -p 80:80 example
```

## Desarrollo

Ejecutar `ng serve` para un servidor de desarrollo. Navega a `http://localhost:4200/`. La aplicación se recargará automáticamente si cambias cualquiera de los archivos fuente si estas en el modo watch.

```bash
$ ng serve
```

## Pruebas

Las pruebas son necesarias para la construcción de nuevas funcionalidades dentro del proyecto, estas pruebas están ligadas a un ciclo de vida de CI/CD que se ejecutará al subir un nuevo cambio en las ramas, se aconseja ejecutar pruebas unitarias o de integración antes de subir una nueva funcionalidad al respositorio, esto es importante para evitar posibles errores en el futuro.

## Unitarias

Ejecutar `ng test` para ejecutar las pruebas de la unidad a través de [karma](https://karma-runner.github.io).

```bash
$ ng test
```

## e2e

Ejecuta `ng e2e` para ejecutar las pruebas de extremo a extremo a través de [Protractor](http://www.protractortest.org/).

```bash
$ ng e2e
```

## Linter

Ejecuta `ng lint` para ejecutar las pruebas linter de todo el proyecto.

```bash
$ ng lint
```

## Coverage

La cobertura de código es una medida (porcentual) en las pruebas de software que mide el grado en que el código fuente de un programa ha sido comprobado.

Sirve para determinar la calidad del test que se lleve a cabo​ y para determinar las partes críticas del código que no han sido comprobadas y las partes que ya lo fueron,​ además se puede utilizar como técnica de optimización dentro de un compilador optimizador para llevar a cabo una eliminación de código muerto, más específicamente sirve para detectar código inalcanzable.

Instrucciones básicas para ejecutar covertura de código en ambiente de desarrollo local.

Ejecuta `ng test --code-coverage` para crear el reporte de covertura, el reporte construirá una carpeta llamada coverage ubicada en la raíz del proyecto.

```bash
$ ng test --code-coverage
```

## Compilación

Ejecuta `ng build` para construir el proyecto. Los artefactos de la construcción serán almacenados en el directorio `dist/`.

```bash
$ ng build
```

## Documentación

A continuación se realizará una referencia a la arquitectura establecida en el proyecto junto a su convención de nombres y conceptos de ferencia. Arquitectura recomendada por el equipo de Agilesoft

## Estructura

```bash
|-- core
    |-- [+] guards
        |-- [+] auth.guard.ts
        |-- [+] guest.guard.ts
        |-- [+] admin.guard.ts

    |-- [+] services
        |-- [+] employer.service.ts
        |-- [+] logger.service.ts
        |-- [+] local-storage.service.ts

    |-- [+] interceptors
        |-- token.interceptor.ts
        |-- auth.interceptor.ts

    |-- [+] handlers
        |-- sentry.handler.ts

    |-- [+] exceptions
        |-- not-found.exception.ts
        |-- internal-server.exception.ts

|-- modules
    |-- employers
        |-- [+] components
            |-- [+] employer-form.component.ts | html | css
            |-- [+] employer-card.component.ts | html | css
            |-- [+] employer-navbar.component.ts | html | css

        |-- [+] pages
            |-- [+] employer-create-page.component.ts | html | css
            |-- [+] employer-update-page.component.ts | html | css
            |-- [+] employer-list-page.component | html | css

        |-- employers-routing.module.ts
        |-- employers.module.ts

|-- [+] shared
    |-- [+] components
        |-- [+] footer.component.ts | html | css
        |-- [+] header.component.ts | html | css
        |-- [+] jumbotron.component.ts | html | css
        |-- [+] navbar.component.ts | html | css

    |-- [+] pages
        |-- [+] wrapper-page.component.ts | html | css
        |-- [+] admin-page.component.ts | html | css
        |-- [+] not-found-page.component.ts | html | css
        |-- [+] internal-server-page.component.ts | html | css

    |-- [+] directives
        |-- custom.directive.ts

    |-- [+] pipes
        |-- capitalize.pipe.ts
        |-- upper.pipe.ts

    |-- [+] validators
        |-- confirm-password.validator.ts

    |-- [+] models
        |-- user.model.ts
        |-- employer.model.ts

    |-- [+] interfaces
        |-- user.interface.ts
        |-- employer.interface.ts

|-- app-routing.module.ts
|-- app.component.ts | html | css
|-- app.module.ts
```

## Conceptos

* **Componentes**
   + Software personalizado y reutilizable compuesto por una vista y una lógica

* **Servicios**
    + Mecanismo para compartir funcionalidad entre componentes
    + Muchas veces consumen datos de una fuente externa

* **Enrutadores**
    + Pieza para navegar entre páginas
    + Proteja rutas con lógica empresarial

* **Módulos**
    + Conjunto de piezas de nuestra aplicación
    + Su objetivo es agrupar y ordenar funcionalidades de nuestra aplicación

* **Store**
    + Datos almacenados alojados en la memoria
    + Se comporta como la única fuente de información en la aplicación
    + El uso del almacén está controlado por patrones de estado e implementaciones como redux

* **Store**
    + Datos almacenados alojados en la memoria
    + Se comporta como la única fuente de información en la aplicación
    + El uso del almacén está controlado por patrones de estado e implementaciones como redux

* **Interceptores**
    + Inspecciona y modifica peticiones
    + Encargado de manipular la petición y respuesta según la lógica de negocio
    + Estos mecanismos se pueden agrupar secuencuialmente

* **Guardias**
    + Mecanismos de protección de rutas
    + Puden devolver tanto un boolean, promesa o un observable según la lógica de negocio
    + Puden redireccionar a otras pág según el caso

* **Carpeta core**
    + Servicios globales de la aplicación
    + Servicios singletón
    + Encargados de proveer datos a los componentes o implementar una capa de negoció extra hacia los componentes

* **Carpeta modules**
    + Carpeta de separación según lógica de negocio
    + Su finalidad es distinguir y agrupar una funcionalidad en común
    + Cada módulo debe contener su propio componente de tipo módulo y su propio router agrupando sus propios componentes

* **Carpeta shared**
    + Carpeta con componentes, páginas, clases, etc que se comparten en toda la aplicación
    + Si un componente es utilizado en más de 1 módulo probablemente deba ir en la carpeta compartida, lo mismo aplica a todos los demás elementos descritos en la estructura de carpetas mostrada