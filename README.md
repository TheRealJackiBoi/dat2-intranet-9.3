# Dokumentation
Dette er min egen dokumentation af Java Webstack. Vi skal lave et intratnet 
og vil bruge denne dokumentation til bedre at kunne huske hvad vi lavede.

## Start af et nyt webprojekt

1. Opret nyt projekt i IntelliJ
2. Vælg JavaEE projektskabelon
3. Java + Maven
4. Servlet dependencies

![img.png](img/img.png)

## Arkitektur

Vi anvender en slags MVC-pattern.

![img.png](img/mvc.png)

- M(odel) - Entiteter og hjælpe- metoder og klasser. Business-logic
- V(iew) - JSP og frontend (css, bootstrap mm)
- C(ontrol) - Servlets

Husk! Ingen kommunikation mellem Model og View. Gå altid igennem controlleren.

## Opret GIT repo
```shell
git init
git add .
git commit -m "first commit"
git remote add origin git@github.com:jonbertelsen/intranet.git
git push -u origin main
```

## Scopes (virkefelter)
- request scope: gemme objekter: request.setAttribute(key, value)
- session scope: gemme objekter: session.setAttribute(key, value)
- application scope (context)

## Sende form-parametre fra en jsp-side til en servlet
I servletten: request.getParameter(key)
I jsp: lav en form og sæt name = "parameter" for de værdier som skal sende afsted over http.
```html
<form action="login" method="post">
    Login: <input type="text" name="login"/> <br/>
    Password: <input type="password" name="password"/> <br/>
    <button type="submit">Log ind</button>
    <br/>
</form>
```
```java
String login = request.getParameter("login");
String password = request.getParameter("password");
```
## Forward til websider
```java
request.getRequestDispatcher("index.jsp").forward(request, response);
```

## JSTL
Husk at sætte JSTL dependency i pomfil:
```xml
<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
    <version>1.2</version>
</dependency>
```
Indsæt følgende i toppen af jsp-siden:
```html
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
```
- if
- forEach

## Expression Language
- ${}
