# Risikoanalyse 8

## Mergekonflikte und Mergeissues
Jetzt werden mehrere Branches gemergt und dies kann zu gewissen Problemen führen falls nicht die richtigen Teile gemergt werden

- **Eintrittswahrscheinlichkeit**: mittel
- **Gewichtung**: hoch
- **Gegenmaßnahmen**: Testen nach den Merges um Issues überhaupt zu erkennen.

## einziger API Key 
Für die Users wird wahrscheinlich ein einziger API Key verwendet, da die User über eine Website das Gem und somit auch die API calls verwenden. 
Das Risiko wäre, dass zu viele Tokens eines einzelnen API Keys verbraucht werden. 

- **Eintrittswahrscheinlichkeit**: mittel
- **Gewichtung**: niedrig
- **Gegenmaßnahmen**: Muss ein neuer API Key eingefügt werden wenn zu viele anfragen auf den einen gemacht werden. (ev. automatische generierung
                      eines neuen API keys)
