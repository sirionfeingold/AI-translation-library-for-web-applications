# Arbeitsplan
*Erledigte Aufgaben können mit Done und `style="background-color: #b9f2ae; color: black"` markiert werden.*

## Coding-Tasks
<table>

  <tr>
    <th style="background-color: #b1e0f0; color: black">Task</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
  </tr>

<tr>
    <td><b>Auto-Translation for user inputs </b> 
    Start implementing automated translation of model texts by users    </td>
    <td>Sirion, ?</td>
    <td></td>
    <td></td>
    <td>03.04.25 (?)</td>
  </tr>


<tr>
    <td><b>Test </b> <br> <i>locale_writer.rb</i><br>
    Implement a few tests that our future tests can be based on
    </td>
    <td>Arnaud, Benjamin</td>
    <td></td>
    <td></td>
    <td>28.03.25 (?)</td>
  </tr>

<tr>
    <td><b>Evaluate / optional Refactor </b> <br> <i>fixme_finder.rb</i> and <i>locale_writer.rb</i><br>
    -As the default yaml parser in ruby can not read or write comments, it can not be used to create the output locale files.
    The default yaml parser is currently used in fixme_finder.rb to identify yaml keys. <br>
    --> It might be easier to not use the keys at all and identify the values by their line index <br>
    --> pls comment whether you decided to refactor or not
    </td>
    <td>Ilyas</td>
    <td></td>
    <td></td>
    <td>28.03.25 (?)</td>
  </tr>

 <tr>
    <td><b>Implement </b> <br> <i>language detection, feedback after task finished</i><br>
    </td>
    <td>Ilyas</td>
    <td>2.30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>


<tr>
    <td><b>Gem </b><br>
    Create a ruby gem capturing the current state of the project that can be tested on the example-application
    </td>
    <td>Andri, Ilyas</td>
    <td>4:00 h</td>
    <td> In eonum beispielapplikation auf branch gem_test implementiert. Siehe readme für setup </td>
    <td style="background-color: #b9f2ae; color: black"> Done 28.03.25</td>
  </tr>

<tr>
    <td><b>Refactor </b> <br> <i>api_call_test.rb</i><br>
    -Should use OpenAI Gem (Azure API? / ChatGPT-40) <br>
    -Should be renamed to make it specific for ChatGPT and allow to differentiate from other models that might be used in the future <br>
    -Right now, requests take up to 2min to complete. Timeout is set at 5min. Is this a problem that needs to be? (e.g. asynchronous requests that each contain only a part of the translation)
    </td>
    <td>Sirion</td>
    <td></td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
    <td><b>Refactor </b> <br> <i>api_call_test.rb</i><br>
    -Improve prompt to avoid responses that are formatted in weird ways <br>
    </td>
    <td>Andri</td>
    <td>0:30 h</td>
    <td>Longer Prompts seem to be more problematic. Additional changes to the prompt might be necessary later.</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
    <td><b>Implement </b> <br> Module to create a prompt from values to be translated</td>
    <td>Andri</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
    <td><b>Implement </b> <br> Module to read locale files and find values that are marked with #FIXME</td>
    <td>Andri</td>
    <td>3:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
    <td><b>Implement </b> <br> Module to write translations back to the local file</td>
    <td>Andri</td>
    <td>2:30 h</td>
    <td>Most of the time was spent chasing a bug caused by unexpected responses from ChatGPT</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
  
</table>


## Research-Tasks
<table>

  <tr>
    <th style="background-color: #b1e0f0; color: black">Task</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
  </tr>

<tr>
    <td><b>Prototyping </b><br>
    Send API requests to ChatGPT <br>
    </td>
    <td>Sirion, Andri </td>
    <td>je ca. 3:00 h</td>
    <td>Sirion: RubyOnRails mit Button/User Interface<br>Andri: kein RubyOnRails, Nur CLI --> RakeTask</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>

<tr>
    <td><b>LLM </b><br>
    Verschiedene LLMs vergleichen <br>
    *Auch in Bezug auf Preisgestaltung*
    </td>
    <td>Sirion, Benjamin, Arnaud</td>
    <td>?</td>
    <td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>  </tr>

</table>

## Deliverables
<table>

  <tr>
    <th style="background-color: #b1e0f0; color: black">Task</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
  </tr>

<tr>
    <td><b>Testkonzept V1 </b><br>
    *Auch in Bezug auf Preisgestaltung*
    </td>
    <td>Alle</td>
    <td>1:00 h</td>
    <td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>  </tr>


<tr>
    <td><b>Analyse der ersten Iteration </b><br>
    *Auch in Bezug auf Preisgestaltung*
    </td>
    <td>Alle</td>
    <td>1:00 h</td>
    <td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>  </tr>

</table>


## Setup-Tasks
<table>

  <tr>
    <th style="background-color: #b1e0f0; color: black">Task</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
  </tr>



<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Arnaud</td>
    <td>3 h</td>
    <td></td>
    <td>26.03.25</td>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Benjamin</td>
    <td>4:30 h</td>
    <td>Rails muss via WSL installiert werden, hat sehr viel Zeit gebraucht</td>
    <td style="background-color: #b9f2ae; color: black">Done 26.03.25</td>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Sirion</td>
    <td>3 h</td>
    <td></td>
    <td>26.03.25</td>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Ilyas</td>
    <td>3 h</td>
    <td></td>
    <td>26.03.25</td>
  </tr>

<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Ilyas</td>
    <td>1:30 h</td>
    <td></td>
    <td>?</td>
  </tr>

  <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Ilyas</td>
    <td>0:30 h</td>
    <td></td>
    <td>?</td>
  </tr>

<td><b>Migrate </b> <br>Migrate Playground-Code to PSE_AI-Translation Rep <br>
    </td>
    <td>Andri</td>
    <td></td>
    <td>Created new task to clean up the folder; there is still some prototyping stuff in there</td>
    <td style="background-color: #b9f2ae; color: black">Done 29.03.25</td>
  </tr>

<td><b>Refactor </b> <br>Arbeitsplan <br>
    </td>
    <td>Andri</td>
    <td>1:00 h</td>
    <td>Couldn't get Colors to work on GitHub</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Andri</td>
    <td>1:30 h</td>
    <td>Installation Ruby V3.2.2 fehlgeschlagen <br> stattdessen V3.4.2 installiert</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
    <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Sirion</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

  <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Benjamin</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

  <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Arnaud</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

  <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Andri</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>Grundlagen Ruby
    </td>
    <td>Alle</td>
    <td>4:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Andri</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Arnaud</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Benjamin</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Sirion</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

</table>

---
Kontakt Eonum
---

### Termin Planning Game 3 [ ]
### *Bis am 28.03.25*
* Benjamin []
* *Geschätzter Zeitaufwand: 30 min*
---

### Termin Planning Game 2 [x]
### *Bis 12.03*
* Benjamin [x]     
* *Termin am 13.03.25 um 14h45*
* *Geschätzter Zeitaufwand: 30 min*
---

---
Presentations
---
### Iteration 1 Analyse Präsentation [X]
### *Bis 12.03.25*
* Benjamin [X]
* *Geschätzter Zeitaufwand: 6h*
--- 
### Demo 1 [ ]
### *Bis am 02.04.25*
* Andri [ ]
* Ilyas [ ]
* *Geschätzte Zeitaufwand: 12h*
---
### Testkonzept V2 [ ]
### *Bis am 02.04.25*
* Arnaud [ ]
* Benjamin [ ]
* *Zeitaufwand: 1h30*
---
### Technologie und Architektur [ ]
### *Bis am 30.04.25*
* Sirion [ ]
* *Geschätzte Zeitaufwand:*
---
### Qualitätsicherung, Testing [ ]
### *Bis am 07.05.25*
* Arnaud [ ]
* *Geschätzte Zeitaufwand:*
---
### Schlussdemo [ ]
### *Bis am 21.05.25*
*
*
* *Geschätzte Zeitaufwand:*
---

