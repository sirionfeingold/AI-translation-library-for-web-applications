# Risikoanalyse 5


## LLM als Blackbox - Formatierung ##
Da wir die tatsächliche Funktionsweise von LLMs nicht im Detail verstehen können, besteht die Gefahr unerwarteter Outputs.
In der vergangenen Woche traten jedoch keine Probleme mit unerwartet formatierten Responses mehr auf. Zudem wurde unser
Code robuster. Das Risiko besteht weiterhin, wurde in seiner Eintrittswarscheinlichkeit und Gewichtung jedoch zurückgestuft.

* Eintrittswahrscheinlichkeit: gering (mehrmals in Versuchen festgestellt)
* Gewichtung: gering
* Gegenmassnahmen: Verbesserung der Prompts, Error-Handling für nicht zu parsende Antworten, Möglichkeit der Annahme verschiedener häufig auftretender Formatierungen (?)



## LLM als Blackbox - Übersetzung ##
Die Verwendung von Large Language Models für die Übersetzung, bedingt dass die eigentliche Funktionsweise der Übersetzung
nicht nachvollzogen werden kann. Dabei können schwer nachvollziehbare und nicht in jedem Fall reproduzierbare Übersetzungsfehler auftreten.
Neben direkten Fehlern ist es auch möglich, dass sich das LLM für eine technisch Korrekte, im Kontext jedoch unpassende Übersetzung entscheidet.


Besonders problematisch ist, dass es kaum möglich ist, die Übersetzungen in den locales von Hand zu prüfen, sodass es schwer ist Übersetzungsfehler zu finden.

Die Gewichtung des Risikos ist grundsätzlich davon abhängig, welche Qualität Eonum bei den Übersetzungen erwartet. Da wir diesbezüglich noch keine
Informationen haben, ist die aktuelle Gewichtung als Schätzung zu interpretieren.

* Eintrittswahrscheinlichkeit: mittel
* Gewichtung: mittel
* Gegenmassnahmen: Verbesserung der Prompts; möglich währe auch ein Gegenprüfen der generierten Antworten mittels weiterer LLMs oder dem selben LLM in mehreren Iterationen

