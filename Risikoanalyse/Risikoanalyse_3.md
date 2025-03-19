# Risikoanalyse 3

## LLM als Blackbox ##
Die verwendung von Large Language Models für die Übersetzung, bedingt dass die eigentliche Funktionsweise der Übersetzung
nicht nachvollzogen werden kann. Dabei können schwer nachvollziehbare und nicht in jedem Fall reproduzierbare Fehler auftreten.

* Eintrittswahrscheinlichkeit: mittel
* Gewichtung: mittel
* Gegenmassnahmen: Verbesserung der Prompts; möglich währe auch ein Gegenprüfen der generierten Antworten mittels weiterer LLMs oder dem selben LLM in mehreren Iterationen

## Code-Basis ##
Es wurden zwei Prototypen entwickelt, die Anfragen an ChatGPT senden können. 
Beide sind funktional (jedoch noch nicht ausgereift) und der Code sollte optimiert werden. 
Ein Risiko besteht darin, dass die Codebasis schwer verständlich bleibt und zukünftige Anpassungen erschwert.
Zusätzlich verfolgen die beiden Prototypen teils unterschiedliche Ansätze, was zu missverständnissen führen kann.

* Eintrittswahrscheinlichkeit: gering
* Gewichtung: mittel
* Gegenmassnahmen: Detaillierte Dokumentation der bisherigen Implementierungen sowie gezielte 
Code-Verbesserungen zur Erhöhung der Lesbarkeit und Wartbarkeit  



