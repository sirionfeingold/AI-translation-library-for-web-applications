# Risikoanalyse 4


## LLM als Blackbox - Formatierung ##
Im grossen und ganzen sind die Antworten von ChatGPT zufriedenstellend. Lange, komplizierte Sätze könnten ein mögliche Schwierigkeit sein. 
Ein grösserer Risikofaktor kommt allerdings beim formatieren, denn damit hat ChatGPT mehr Probleme. 
Beim Übersetzten einzelner Wörter und kurzer Beschriebe hält sich aber auch da das Risiko in Grenzen, da hier nicht viel formatiert wird. 
Zum aktuellen Zeitpunkt ist unser Programm nicht in der Lage, von der Erwartung abweichend formatierte Antworten des LLM
zu verarbeiten.

* Eintrittswahrscheinlichkeit: hoch (mehrmals in Versuchen festgestellt)
* Gewichtung: hoch
* Gegenmassnahmen: Verbesserung der Prompts, Error-Handling für nicht zu parsende Antworten, Möglichkeit der Annahme verschiedener häufig auftretender Formatierungen (?)



## LLM als Blackbox - Übersetzung ##
Die Verwendung von Large Language Models für die Übersetzung, bedingt dass die eigentliche Funktionsweise der Übersetzung
nicht nachvollzogen werden kann. Dabei können schwer nachvollziehbare und nicht in jedem Fall reproduzierbare Übersetzungsfehler auftreten.
Neben direkten Fehlern ist es auch möglich, dass sich das LLM für eine technisch Korrekte, im Kontext jedoch unpassende Übersetzung entscheidet.


Besonders problematisch ist, dass es kaum möglich ist, die Übersetzungen in den locales von Hand zu prüfen, sodass es schwer ist Übersetzungsfehler zu finden.

* Eintrittswahrscheinlichkeit: mittel
* Gewichtung: mittel
* Gegenmassnahmen: Verbesserung der Prompts; möglich währe auch ein Gegenprüfen der generierten Antworten mittels weiterer LLMs oder dem selben LLM in mehreren Iterationen


## Code-Basis ##

Ein Risiko besteht zusätzlich darin, dass die Codebasis schwer verständlich bleibt und zukünftige Anpassungen erschwert.
Da wir bereits mit dem coden angefangen haben bevor wir die Beispielsapplikation von Eonum erhalten haben könnte es sein,
dass die Migration des Codes von unserem Repository auf das Eonum Repository einige Komplikationen mit sich bringen könnte.
Einige Anpassungen sind sicher nötig, es wäre aber möglich, dass dies viel Arbeit beanspruchen wird.
* Eintrittswahrscheinlichkeit: gering
* Gewichtung: mittel
* Gegenmassnahmen: Mit der Migration des Codes sollte in den nächsten Tagen (allerspätestens Samstag 29.03.) begonnen werden, sodass bei Problemen ein Zeitpuffer vor dem Ende der zweiten Iteration vorhanden ist. Detaillierte Dokumentation der bisherigen Implementierungen sowie gezielte
  Code-Verbesserungen zur Erhöhung der Lesbarkeit und Wartbarkeit  



