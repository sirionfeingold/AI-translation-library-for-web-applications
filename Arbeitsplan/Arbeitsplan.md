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
    <td><b>Refactor </b> <br>Use a YAML parser to read and write yml-files<br>  <br></td>
    <td>Andri</td>
    <td>4:00 h+</td>
    <td>Esch überraschend müesam gsii. YAML is not really made to work with comments. Implementation is now based on workarounds inspired by sy18nc gem.</td>
    <td>until 30.04.25 </td>
  </tr>

<tr>
    <td><b>Refactor </b> <br>Generic translation instead of "German to X" <br> <br></td>
    <td>ilyas</td>
    <td>2:00h (bis jetzt)</td>
    <td></td>
    <td>until 30.04.25 </td>
  </tr>

<tr>
    <td><b>Refactor</b> <br>Change the translate rake using the sy18nc gem<br></td>
    <td>Benjamin</td>
    <td>2:45h</td>
    <td>Implementation in the rake task "translate" was not that hard, had to find a way, so that all the people using 
    the gem install the sy18nc version which is on the github of Joel. It has to be in the Gemfile of the rails project</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
    <td><b>Implement </b> <br> Tests <br> <br></td>
    <td>Arnaud </td>
    <td>10:00h</td>
    <td>All Unit Tests are written, passed and some methods were adjusted. </td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
    <td><b>Implement</b> <br>Testing the sy18nc gem<br></td>
    <td>Benjamin</td>
    <td>7:00 h</td>
    <td>1) Problem right now with the sy18nc gem which is 
    old, initializer doesn't work for the moment.
    2) The gem is too old, i am not able to run the rake sync for the 
    moment.
    3) seems like the gem isn't completed, a class is missing (file.rb)
    4) Joel (Eonum) posted a newer version of the gem: https://github.com/jbessi/sy18nc
    5) The gem is working now. I have to think how to implement the sy18nc gem in the translate rake task
    </td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Refactor </b> <br>Generic model translation instead of "Variable" <br> <br></td>
    <td>Andri</td>
    <td>4:00h</td>
    <td>Most of the time was spent reworking parts of the api call.</td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Implement </b> <br>Progressbar for translation button (Ruby on Rails sample application) <br>  <br></td>
    <td>Sirion </td>
    <td>0:30 h </td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Refactor </b> <br>Improve Progressbar for Active Records <br>  <br></td>
    <td>Sirion </td>
    <td>2:00 h </td>
    <td>The progress bar now works better for AR translations and is more stable if the translation is too long. 
        Also merged generic_ar_translation with main branch </td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Test </b><br>
    Check of the Quality of the translation german to french
    </td>
    <td>Arnaud, Benjamin</td>
    <td>1:00 h</td>
    <td>the quality of the translations is very high</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Implement </b> <br>Add progress bar for ActiveRecord and locale translation using ruby-progressbar <br>  <br></td>
    <td>Sirion </td>
    <td>2:00 h </td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Refactor </b> <br>Add generic AI model support and clean up the structure <br> <br></td>
    <td>Sirion </td>
    <td>3:00 h </td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Refactor </b> <br>Add a Gemfile with all dependencies instead of documenting them in the README <br> <br></td>
    <td>Benjamin</td>
    <td>2h</td>
    <td>The gemspec file has been changed to install the dependencies (gems) 
    automatically with the installation of translation_gem_e.
    Added a gemfile with a reference to the gemspec</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Evaluate / optional Refactor </b> <br> <i>fixme_finder.rb</i> and <i>locale_writer.rb</i><br>
    -As the default yaml parser in ruby can not read or write comments, it can not be used to create the output locale files.
    The default yaml parser is currently used in fixme_finder.rb to identify yaml keys. <br>
    --> It might be easier to not use the keys at all and identify the values by their line index <br>
    </td>
    <td>Ilyas</td>
    <td>4h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Implement </b> <br>Text file output of ActiveRecords in the console with ID of variables <br> <br></td>
    <td>Sirion</td>
    <td>2:30 h </td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Implement </b> <br>Context for rake tasks <br></td>
    <td>Sirion</td>
    <td>2:00 h </td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Refactor </b> <br>The translation button translates from all three required languages. <br></td>
    <td>Sirion</td>
    <td>2:00 h </td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

<tr>
    <td><b>Implement </b> <br> Translation button adapts to the website language <br></td>
    <td>Sirion</td>
    <td>0:45 h </td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

 <tr>
    <td><b>Merge </b> <br> <i>PSE_AI_translation repo</i><br>
    Development occurred on several branches that need to be merged.
    </td>
    <td>Andri</td>
    <td>1:30 h</td>
    <td>Da Teils in verschiedenen Ordnern gearbeitet wurde, existierten diesselben Dokumente auch nach dem Merge
    noch in verschiedenen Versionen. Diese wurden nun auf dem Main-branch im translation_gem_e Ordner zusammengefasst
    und bilden den aktuellen Projektstand ab.</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>

 <tr>
    <td><b>Implement </b> <br> Translation-Button<br>
    </td>
    <td>Sirion</td>
    <td>3:00 h</td>
    <td>Übersetzung funktioniert momentan nur von Deutsch</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

 <tr>
    <td><b>Implement </b> <br> Translation of active Records Variables<br>
    </td>
    <td>Andri</td>
    <td>3:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
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
    <td style="background-color: #b9f2ae; color: black"> Done</td>
  </tr>

<tr>
    <td><b>Refactor </b> <br> <i>api_call_test.rb</i><br>
    -Should use OpenAI Gem (Azure API? / ChatGPT-40) <br>
    -Should be renamed to make it specific for ChatGPT and allow to differentiate from other models that might be used in the future <br>
    -Right now, requests take up to 2min to complete. Timeout is set at 5min. Is this a problem that needs to be? (e.g. asynchronous requests that each contain only a part of the translation)
    </td>
    <td>Sirion</td>
    <td>2:30 h</td>
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


## Meetings
<table>
  <tr>
    <th style="background-color: #b1e0f0; color: black">Datum</th>
    <th style="background-color: #b1e0f0; color: black">Presence</th>
    <th style="background-color: #b1e0f0; color: black">Duration</th>
    <th style="background-color: #b1e0f0; color: black">Topic</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
  </tr>
<tr>
    <td>27.02.25 </td>
    <td>PSE-Team, Florin, Tim</td>
    <td>1:30 h</td>
    <td>Planning Game 1</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>05.03.25 </td>
    <td>PSE-Team, Florin</td>
    <td>30 min</td>
    <td>Tasks aufteilung, Feedbacks</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>12.03.25 </td>
    <td>PSE-Team, Florin</td>
    <td>45 min</td>
    <td>Feedbacks</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>13.03.25 </td>
    <td>PSE-Team, Florin, Joel</td>
    <td>1:00 h</td>
    <td>Rückblick Iteration 1, Planning Game 2</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>20.03.25 </td>
    <td>PSE-Team</td>
    <td>1:30 h</td>
    <td>Tasks aufteilung, Feedbacks, Pair-Programming</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>24.03.25 </td>
    <td>PSE-Team</td>
    <td>1:00 h</td>
    <td>Pair-Programming</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>26.03.25 </td>
    <td>PSE-Team</td>
    <td>1:30 h</td>
    <td>Tasks aufteilung, Feedbacks, Entwicklung, Installation</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>02.04.25 </td>
    <td>PSE-Team, Florin</td>
    <td>40 min</td>
    <td>Feedbacks</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>03.04.25 </td>
    <td>PSE-Team, Florin, Joel, Tim</td>
    <td>1:30</td>
    <td>Rückblick Iteration 2, Planning Game 3</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>09.04.25 </td>
    <td>PSE-Team</td>
    <td>2:00 h</td>
    <td>Entwicklung, Tasks Aufteilung</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>16.04.25 </td>
    <td>PSE-Team</td>
    <td>1:45 h</td>
    <td>Entwicklung, Feedbacks</td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
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
</tr>

<tr>
    <td><b>LLM </b><br>
    Verschiedene LLMs vergleichen <br>
    *Auch in Bezug auf Preisgestaltung*
    </td>
    <td>Sirion, Benjamin, Arnaud</td>
    <td>Je ca 3 h</td>
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
<td><b>Analyse der zweite Iteration </b><br>
    </td>
    <td>Benjamin</td>
    <td>2:00 h</td>
    <td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
 <td><b>Testkonzept V2 </b><br>
    </td>
    <td>Arnaud</td>
    <td>2:30 h</td>
    <td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
<tr>
    <td><b>Testkonzept V1 </b><br>
    </td>
    <td>Arnaud</td>
    <td>2:30 h</td>
    <td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>  </tr>


<tr>
    <td><b>Analyse der ersten Iteration </b><br>
    </td>
    <td>Benjamin</td>
    <td>2:30 h</td>
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



<td><b>Refactoring </b> <br>Arbeitsplan <br>
    </td>
    <td>Benjamin</td>
    <td> 35 min</td>
    <td>Added the meeting table</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Arnaud</td>
    <td>7,5 h</td>
    <td>Sehr viel Probleme mit Windows/WSL rails installation, Datenbank Störungen</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Benjamin</td>
    <td>4,5 h</td>
    <td>Rails muss via WSL installiert werden, hat sehr viel Zeit gebraucht</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Andri</td>
    <td>1:30 h</td>
    <td>Installation Ruby V3.2.2 fehlgeschlagen <br> stattdessen V3.4.2 installiert</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Sirion</td>
    <td>3 h</td>
    <td></td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Ilyas</td>
    <td>3 h</td>
    <td></td>
   <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td><b>Migrate </b> <br>Migrate Playground-Code to PSE_AI-Translation Rep <br>
    </td>
    <td>Andri</td>
    <td></td>
    <td>Created new task to clean up the folder; there is still some prototyping stuff in there</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Refactor </b> <br>Arbeitsplan <br>
    </td>
    <td>Benjamin</td>
    <td> 45 min</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Refactor </b> <br>Arbeitsplan <br>
    </td>
    <td>Andri</td>
    <td>1:00 h</td>
    <td>Couldn't get Colors to work on GitHub</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Ilyas</td>
    <td>0:30 h</td>
    <td></td>
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

<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Ilyas</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

</table>

## Kontakt mit Eonum
<table>

  <tr>
    <th style="background-color: #b1e0f0; color: black">Task</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
  </tr>

<td><b>Termin </b> <br>Planning Game 4 <br> </td>
    <td>Benjamin</td>
    <td>30 min</td>
    <td></td>
    <td>Bis am 25.04.25</td>
  </tr>


<td><b>Information </b> <br>Code Review<br> </td>
    <td>Benjamin</td>
    <td>20 min</td>
    <td>Eonum hat bereits einen Code-Review übermittelt</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td><b>Termin </b> <br>Planning Game 3 <br> </td>
    <td>Benjamin</td>
    <td>30 min</td>
    <td>Termin am 03.04.25 um 14h45</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td><b>Termin </b> <br>Planning Game 2 <br> </td>
    <td>Benjamin</td>
    <td>30 min</td>
    <td>Termin am 13.03.25 um 14h45</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td><b>Termin </b> <br>Planning Game 1 <br> </td>
    <td>Benjamin</td>
    <td>30 min</td>
    <td>Termin am 27.02.25 um 14h45</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

</table>

## Presentations
<table>

  <tr>
    <th style="background-color: #b1e0f0; color: black">Thema</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
  </tr>

<td>Schlussdemo</td>
    <td>Andri</td>
    <td></td>
    <td></td>
    <td>Bis am 21.05.25</td></td>  
<tr>
<td>Qualitätsicherung, Testing</td>
    <td>Arnaud</td>
    <td></td>
    <td>Einschätzung:6 h</td>
    <td>Bis am 07.05.25</td></td>  
<tr> 

<td>Technologie und Architektur</td>
    <td>Sirion</td>
    <td></td>
    <td></td>
    <td>Bis am 30.04.25</td></td>  
</tr>
  </tr>
<td>Demo 1 </td>
    <td>Ilyas</td>
    <td>12 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td>Analyse Iteration 1</td>
    <td>Benjamin</td>
    <td>6 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

<td>Requirements </td>
    <td>Arnaud</td>
    <td>6 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

</table>





