CAS Overlay Template
============================

Generic CAS maven war overlay to exercise the latest versions of CAS. This overlay could be freely used as a starting template for local CAS maven war overlays. The CAS services management overlay is available [here](https://github.com/Jasig/cas-services-management-overlay).

# Versions
```xml
<cas.version>4.2.x</cas.version>
```

# Requirements
* JDK 1.7+

# Configuration

Copy folder `etc_yang _harus_dicopy_ke_root` ke root misal ke c:\ rename menjadi etc
Kemudian ubah file `propertyFileConfigurer.xml` di dalam folder `cas-overlay-template-bana\src\main\webapp\WEB-INF\spring-configuration`

# Build

```bash
mvnw clean package
```

or

```bash
mvnw.bat clean package
```

# Deployment

## Embedded Jetty

* Create a Java keystore at `/etc/cas/jetty/thekeystore` with the password `changeit`.
* Import your CAS server certificate inside this keystore.

```bash
mvnw jetty:run-forked
```

CAS will be available at:

* `http://cas.server.name:8080/cas`
* `https://cas.server.name:8443/cas`

## External
Deploy resultant `target/cas.war` to a Servlet container of choice.

## Features
* Ticket Registry Using apache ignite,
* postgresql jdbc authentication
