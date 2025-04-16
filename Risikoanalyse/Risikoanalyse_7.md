# Risikoanalyse 7

## Begrenzung von API requests
Die Generierung von Übersetzungen oder anderen Textinhalten mit ChatGPT-4o kann zu Verzögerung führen. 
Insbesondere wird bei komplexen Prompts oder größeren Locale-Dateien oft die limite der Anfragen überschritten (vor allem beim User-input translation-button)

- **Eintrittswahrscheinlichkeit**: hoch
- **Gewichtung**: mittel
- **Gegenmaßnahmen**: Optimierung und Kürzung der Prompts, Begrenzung der zu übersetzenden Inhalte pro Request

## Veralteter Code im Sy18nc Gem
Die letzten auf Github einsehbaren Updates des Sy18nc Gem stammen aus dem Jahr 2013. Möglicherweise wurde das Gem seit dem 
nicht mehr gewartet und befindet sich nicht auf dem aktuellen Stand der Technik.

- **Eintrittswahrscheinlichkeit**: klein (Eonum verwendet den Gem noch)
- **Gewichtung**: klein
- **Gegenmassnahme**: Rücksprache mit Eonum
