# Statusbericht 2 (12.03.2025)
## Überblick
In der vergangenen Woche wurde die Einarbeitungsphase weitergeführt. Dabei entstanden zwei explorative Prototypen.

Prototyp 1 (Sirion) implementiert eine RubyOnRails Webaplikation, welche Anfragen an ChatGPT sendet um Übersetzungen durchzufüren. Verwendet wird GPT-40. Dafür wird der von Eonum empfolene Ruby-OpenAI Gem eingesetzt (https://github.com/alexrudall/ruby-openai).

Prototyp 2 (Andri) greift  direkt auf die ChatGPT API zu und kann mittels eines Rake-Tasks eine beispielhafte Übersetzung durchführen. Der Prototyp ist sehr unsauber und dient lediglich als Demonstration. Probleme bestehen unter anderem darin, dass OpenAI den Zugriff auf das verwendete ChatGPT Modell GPT-40-mini limitiert und für diesen Fall noch kein Error-Handling implementiert ist.

Insofern ist die erste Iteration, entsprechend den sehr offen definierten Zielen, auf gutem Weg. 

![Ok](./img/ok.png)