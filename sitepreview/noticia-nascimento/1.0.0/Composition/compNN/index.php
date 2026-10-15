<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/Composition-compNN.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/Composition-compNN.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/Composition-compNN.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/Composition-compNN.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/Composition-compNN.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/Composition-compNN.html');
else 
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/Composition-compNN.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
