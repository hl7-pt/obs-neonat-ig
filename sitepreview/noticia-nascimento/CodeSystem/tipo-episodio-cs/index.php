<?php
function Redirect($url)
{
  header('Location: ' . $url, true, 302);
  exit();
}

$accept = $_SERVER['HTTP_ACCEPT'];
if (strpos($accept, 'application/json+fhir') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/CodeSystem-tipo-episodio-cs.json2');
elseif (strpos($accept, 'application/fhir+json') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/CodeSystem-tipo-episodio-cs.json1');
elseif (strpos($accept, 'json') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/CodeSystem-tipo-episodio-cs.json');
elseif (strpos($accept, 'application/xml+fhir') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/CodeSystem-tipo-episodio-cs.xml2');
elseif (strpos($accept, 'application/fhir+xml') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/CodeSystem-tipo-episodio-cs.xml1');
elseif (strpos($accept, 'html') !== false)
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/CodeSystem-tipo-episodio-cs.html');
else 
  Redirect('https://hl7.pt/fhir/noticia-nascimento/1.0.0/CodeSystem-tipo-episodio-cs.xml');
?>
    
You should not be seeing this page. If you do, PHP has failed badly.
