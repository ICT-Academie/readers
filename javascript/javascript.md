---
title: "Javascript"
author: "Tim Quax (tquax@novacollege.nl)"
geometry: "left=1cm,right=1cm,top=1cm,bottom=2.5cm"
mainfont: Open Sans
documentclass: scrartcl
---
\pagebreak
# JavaScript (JS)
JavaScript is een veel-gebruikte taal om o.a. websites (die je maakt met HTML en CSS) *dynamisch* te maken. Dynamisch betekent dat de website meer kan doen dan alleen maar op je browser-scherm stilstaan (dat is statisch).

Denk bijvoorbeeld aan een refresh-knop, of een foutmelding als je e-mail adres een typfout bevat, of een melding dat je moet opschieten met bestellen want de voorraad is bijna op.

In deze reader ga je leren over **JavaScript**, maar ook **JSON**: JSON is een manier om informatie neer te zetten; een manier dat mensen EN programmeertalen goed kunnen snappen. Dat wordt vaak gebruikt als doorgeef-luik. Bijvoorbeeld:

- JavaScript doet een verzoek aan PHP;
- PHP haalt vervolgens informatie uit de database en geeft dat terug in JSON;
- JavaScript ontvangt dat en kan precies zien welke informatie terug is gegeven;
- Javascript plukt de informatie eruit die het nodig heeft en zet dat neer in de HTML.

## Benodigdheden
- Editor (PHPStorm bijvoorbeeld)
- PHP (XAMPP bijvoorbeeld).
- Browser (Firefox of Chrome bijvoorbeeld).
- Google (Begrijp je iets niet? Dit is je beste vriend!)

## Front-end en Back-end
Dit zijn termen die vaker voor gaan komen, gezien je werkt met HTML/CSS/JavaScript zowel als PHP:
- Front-end is de kant die je ziet: HTML, CSS maar ook Javascript
- Back-end is de kant die je niet ziet: PHP, Java, C# wat draait op een laptop of server.

## Geschiedenis van JavaScript
JavaScript is gemaakt in 10 dagen, in 1995. Laat dat even inzinken. Tien dagen. Door 1 persoon, die destijds werkte voor het bedrijf Netscape (de browser).

JavaScript is initieel ontworpen als script taal in de browser, om zo soepel mogelijk samen te kunnen werken met Java. De naam JavaScript komt daar ook vandaan. Waarom Java specifiek, als het ook werkt met alle andere talen? Heel simpel: Java was destijds een van de populairste programmeertalen, en kon zelfs draaien in browsers als mini-applicaties (*applets*). Op die populariteit kan je dan mooi meeliften.

Tegenwoordig zijn er enorm veel bedrijven en organisaties die meewerken aan het ontwikkelen van JavaScript. De taal veranderd enorm snel en is heel erg flexibel. De laatste jaren is JavaScript zelfs ook populair als *back-end*. Je kan het op dezelfde manier draaien als b.v. PHP, Java en C# met behulp van de **V8 engine**, gemaakt door Google.

\pagebreak

# Hoofdstuk 1: Kennis maken met JavaScript
Omdat we JavaScript gaan gebruiken om een webpagina aan te passen, moeten we eerst een webpagina hebben. We gaan een stuk HTML en CSS schrijven en dat vervolgens veranderen met JavaScript.

## 1.1 HTML & CSS
We beginnen door onderstaande pagina te maken:

![](images/html-css-two-blocks.png){ width=50% }

Maak een nieuw project in `PHPStorm` en maak het bestand `index.html` aan met deze inhoud:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>JavaScript hoofdstuk 1</title>
    <link rel="stylesheet" href="website.css">
  </head>
  <body>
    <div id="box1" class="box"></div>
    <div id="box2" class="box"></div>
	<script src="website.js"></script>
  </body>
</html>
```

Er staan twee dozen in de HTML: *box1* en *box2*. Die gaan we mooier maken. Maak `website.css` aan met:

```css
#box1 {
    background-color: red;
    margin-left: 300px;
}
#box2 {
    background-color: blue;
    margin-left: 200px;
}
.box {
    height: 200px;
    width: 200px;
    margin-top: 300px;
    float: left;
}
```

Als je alles goed hebt overgenomen ziet deze pagina er nu exact uit als het voorbeeld hierboven.

\pagebreak

## 1.2 JavaScript
Om ons eerste stukje JavaScript te schrijven maken we gebruik van het JavaScript bestand die in de HTML staat vermeld: 

```html
<script src="website.js"></script>
```

Dat zegt eigenlijk: Laad een script in, genaamd `website.js`. Die gaan we nu aanmaken met de inhoud:

```js
document.querySelector('#box1').style.backgroundColor = "green";
```

Laten we dat even ontleden. JavaScript is een taal waarin je een heleboel aan elkaar kan plakken. Als een functie iets teruggeeft waar functies in zitten, kan je die **meteen uitvoeren**. Dus:

- `document`, daar staat de hele website in, inclusief css, en functies om ermee te werken.
- `.querySelector('#box1')` is een functie in `document` om HTML elementen te selecteren. Wat we dan gaan pakken (of *queryen*) is een `selector` - exact hetzelfde als je in CSS gebruikt. In dit geval het ID `box1`.
- `.style` pakt alle stijlen op het element die we pakken (of *queryen*).
- `.backgroundColor` is specifiek de stijl voor de achtergrondkleur. Die kan je bekijken of aanpassen.
- ` = "green";` maakt de achtergrondkleur groen (net zoals in CSS `#box1 { background-color: green; }` dat zou doen).

Als je nu de website bekijkt, zie je dat doos nummer 1 groen is geworden. Het werkt!
