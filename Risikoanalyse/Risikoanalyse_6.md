# Risikoanalyse 6

## Begrenzung von API requests
Die Generierung von Übersetzungen oder anderen Textinhalten mit ChatGPT-4o kann zu Verzögerung führen. 
Insbesondere wird bei komplexen Prompts oder größeren Locale-Dateien oft die limite der Anfragen überschritten (vor allem beim User-input translation-button)

- **Eintrittswahrscheinlichkeit**: hoch
- **Gewichtung**: mittel
- **Gegenmaßnahmen**: Optimierung und Kürzung der Prompts, Begrenzung der zu übersetzenden Inhalte pro Request
