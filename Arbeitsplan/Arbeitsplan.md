# Arbeitsplan

## Einleitung  
Dieses Dokument enthält eine strukturierte Übersicht über sämtliche Aufgaben, die im Rahmen des studentischen Projekts mit der Firma Eonum durchgeführt wurden. Es umfasst sämtliche Tätigkeiten in den Bereichen Softwareentwicklung, Recherche, Kommunikation mit dem Unternehmen sowie die Erarbeitung und Abgabe von Deliverables.

Die Aufgaben sind thematisch in Kategorien gegliedert und beinhalten jeweils Angaben zur verantwortlichen Person, zur geschätzten bzw. aufgewendeten Arbeitszeit, zum Bearbeitungsstand sowie zu Kommentaren oder Hinweisen. Zusätzlich wurden jeder Aufgabe eindeutige IDs zugewiesen, um die Nachvollziehbarkeit und Referenzierbarkeit im Team zu erleichtern.

Hinweis:
Die meisten Tasks sind unabhängig und können parallel umgesetzt werden. Wo nötig, wurden Abhängigkeiten im Team identifiziert und berücksichtigt.

Das Ziel dieses Arbeitsplans ist es, den Projektverlauf transparent und nachvollziehbar darzustellen.


## Inhaltsverzeichnis

- [Coding-Tasks](#coding-tasks)
- [Setup-Tasks](#setup-tasks)
- [Research-Tasks](#research-tasks)
- [Deliverables](#deliverables)
- [Meetings](#meetings)
- [Kontakt mit Eonum](#kontakt-mit-eonum)
- [Presentations](#presentations)


## Coding-Tasks

<table>
<tr><th style="background-color: #b1e0f0; color: black">ID</th>
<th style="background-color: #b1e0f0; color: black">Task</th>
<th style="background-color: #b1e0f0; color: black">Responsible</th>
<th style="background-color: #b1e0f0; color: black">Time Spent</th>
<th style="background-color: #b1e0f0; color: black">Comment</th>
<th style="background-color: #b1e0f0; color: black">State</th>
</tr>

<tr>
<td>COD037</td>
<td><b>Refactor </b> <br/>README for the translation Gem<br/> <br/></td>
<td>Benjamin</td>
<td></td>
<td></td>
<td>until the 18.05.25 </td>
</tr>
<tr>
<td>COD036</td>
<td><b>Refactor </b> <br>Add instructions to README for adding a new AI model<br>  <br></td>
<td>Sirion </td>
<td></td>
<td></td>
<td>until the 18.05.25 </td>
</tr>
<tr>
<td>COD035</td>
<td><b>Refactor </b> <br/>Restructured the translation gem according to ruby standards<br/> <br/></td>
<td>Benjamin</td>
<td>2:00 h</td>
<td>Some of the standards weren't respected. I had to change some path in the files, because I updated the structure of the gem</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD034</td>
<td><b>Refactor / Merge </b> <br>Progressbar for Ruby on Rails application<br>  <br></td>
<td>Sirion </td>
<td>1:00 h </td>
<td>Changed progressbar to loading Icon. Also merged the code to the main branch</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD033</td>
<td><b>Refactor </b> <br/>Refactoring all the tests according to the modifications in the code</td>
<td>Arnaud</td>
<td>8:30 h</td>
<td>I had to add some tests for new classes and refactored every tests so that they work</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD032</td>
<td><b>Refactor </b> <br/>Rename prompt building modules<br/> <br/></td>
<td>Andri</td>
<td>1:00 h</td>
<td>Renaming done quick; spent some time testing and fixing other things</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD031</td>
<td><b>Refactor </b> <br/>Solved some issues acording to Eonum's code review<br/> <br/></td>
<td>Benjamin</td>
<td>1:45 h</td>
<td>The issues are commented on the pull request of the Github repository</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD030</td>
<td><b>Refactor </b> <br/>Progressbar for CLI and Ruby on Rails<br/> <br/></td>
<td>Sirion </td>
<td>2:45 h </td>
<td>Changed progressbar to loading Icon. Its currently on branch "new_progressbar"</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD029</td>
<td><b>Refactor </b> <br/>Move translation logic from Rails controller into reusable Gem method <br/> <br/></td>
<td>Sirion </td>
<td>3:00 h </td>
<td>Implemented new <code>translate_fields</code> function for use in Rails. Also updated the ruby on rails sample application, so that it works with new Gem method. </td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD028</td>
<td><b>Github </b> <br/>Merging the different feature branches into main<br/>
</td>
<td>Benjamin</td>
<td>2:00 h</td>
<td>Ein paar branches hatten Konflikten zwischen einander, alles ist jetzt auf main. Ordung im Repository gemacht.  </td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD027</td>
<td><b>Refactor </b> <br/>Use a YAML parser to read and write yml-files<br/> <br/></td>
<td>Andri</td>
<td>4:30 h</td>
<td>War überraschend mühsam. YAML is not really made to work with comments. Implementation is now based on workarounds inspired by sy18nc gem.</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD026</td>
<td><b>Refactor </b> <br/>Generic translation instead of "German to X" <br/> <br/></td>
<td>ilyas</td>
<td>4:00 h</td>
<td>Habe angefangen. nach einiger zeit gemerkt, dass auf einem anderen branch es bereits implementiert wurde. </td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD025</td>
<td><b>Refactor</b> <br/>Change the translate rake using the sy18nc gem<br/></td>
<td>Benjamin</td>
<td>2:45 h</td>
<td>Implementation in the rake task "translate" was not that hard. But I had to find a way, .so that all users install 
the sy18nc version hosted on Joel's GitHub. It has to be in the Gemfile of the rails project</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD024</td>
<td><b>Implement </b> <br/> Tests <br/> <br/></td>
<td>Arnaud </td>
<td>10:00 h</td>
<td>All Unit Tests are written, passed and some methods were adjusted. </td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD023</td>
<td><b>Implement</b> <br/>Testing the sy18nc gem<br/></td>
<td>Benjamin</td>
<td>7:00 h</td>
<td>1) the current version of the sy18nc gem is outdated, initializer doesn't work for the moment.
    2) The gem is too old, I am not able to run the rake sync for the 
    moment.
    3) seems like the gem isn't completed, a class is missing (file.rb)
    4) Joel (Eonum) posted a newer version of the gem: https://github.com/jbessi/sy18nc
    5) The gem is working now. I have to think how to implement the sy18nc gem in the translate rake task
    </td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD022</td>
<td><b>Refactor </b> <br/>Generic model translation instead of "Variable" <br/> <br/></td>
<td>Andri</td>
<td>7:00 h</td>
<td>Most of the time was spent reworking parts of the api call. (Also implemented "Generic translation instead of 
    german to X" for Active Records due to not reading the issue precisely.)</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD021</td>
<td><b>Implement / Refactor </b> <br/>Progressbar for translation button (Ruby on Rails sample application) <br/> <br/></td>
<td>Sirion </td>
<td>1:45 h </td>
<td>Ruby on Rails Application also works now with new Gem version (0.0.9) </td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD020</td>
<td><b>Refactor </b> <br/>Improve Progressbar for Active Records <br/> <br/></td>
<td>Sirion </td>
<td>2:00 h </td>
<td>The progress bar now works better for AR translations and is more stable if the translation is too long. 
    Also merged generic_ar_translation with main branch </td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD019</td>
<td><b>Test </b><br/>
    Check of the Quality of the translation german to french
    </td>
<td>Arnaud, Benjamin</td>
<td>1:00 h</td>
<td>the quality of the translations is very high</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD018</td>
<td><b>Implement </b> <br/>Add progress bar for ActiveRecord and locale translation using ruby-progressbar <br/> <br/></td>
<td>Sirion </td>
<td>2:00 h </td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD017</td>
<td><b>Refactor </b> <br/>Add generic AI model support and clean up the structure <br/> <br/></td>
<td>Sirion </td>
<td>3:20 h </td>
<td>Add function for building the system prompt in the generic class ai_model</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD016</td>
<td><b>Refactor </b> <br/>Add a Gemfile with all dependencies instead of documenting them in the README <br/> <br/></td>
<td>Benjamin</td>
<td>2:00 h</td>
<td>The gemspec file has been changed to install the dependencies (gems) 
    automatically with the installation of translation_gem_e.
    Added a gemfile with a reference to the gemspec</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD015</td>
<td><b>Evaluate / optional Refactor </b> <br/> <i>fixme_finder.rb</i> and <i>locale_writer.rb</i><br/>
    -As the default yaml parser in ruby can not read or write comments, it can not be used to create the output locale files.
    The default yaml parser is currently used in fixme_finder.rb to identify yaml keys. <br/>
    --&gt; It might be easier to not use the keys at all and identify the values by their line index <br/>
</td>
<td>Ilyas</td>
<td>4:00 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD014</td>
<td><b>Implement </b> <br/>Text file output of ActiveRecords in the console with ID of variables <br/> <br/></td>
<td>Sirion</td>
<td>2:30 h </td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD013</td>
<td><b>Implement </b> <br/>Context for rake tasks <br/></td>
<td>Sirion</td>
<td>2:00 h </td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD012</td>
<td><b>Refactor </b> <br/>The translation button translates from all three required languages. <br/></td>
<td>Sirion</td>
<td>2:00 h </td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD011</td>
<td><b>Implement </b> <br/> Translation button adapts to the website language <br/></td>
<td>Sirion</td>
<td>0:45 h </td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD010</td>
<td><b>Merge </b> <br/> <i>PSE_AI_translation repo</i><br/>
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
<td>COD009</td>
<td><b>Implement </b> <br/> Translation-Button<br/>
</td>
<td>Sirion</td>
<td>3:00 h</td>
<td>Übersetzung funktioniert momentan nur von Deutsch</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD008</td>
<td><b>Implement </b> <br/> Translation of active Records Variables<br/>
</td>
<td>Andri</td>
<td>3:00 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD007</td>
<td><b>Implement </b> <br/> <i>language detection, feedback after task finished</i><br/>
</td>
<td>Ilyas</td>
<td>2:30 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD006</td>
<td><b>Gem </b><br/>
    Create a ruby gem capturing the current state of the project that can be tested on the example-application
    </td>
<td>Andri, Ilyas</td>
<td>4:00 h</td>
<td> In eonum beispielapplikation auf branch gem_test implementiert. Siehe readme für setup </td>
<td style="background-color: #b9f2ae; color: black"> Done</td>
</tr>
<tr>
<td>COD005</td>
<td><b>Refactor </b> <br/> <i>api_call_test.rb</i><br/>
    -Should use OpenAI Gem (Azure API? / ChatGPT-40) <br/>
    -Should be renamed to make it specific for ChatGPT and allow to differentiate from other models that might be used in the future <br/>
    -Right now, requests take up to 2min to complete. Timeout is set at 5min. Is this a problem that needs to be? (e.g. asynchronous requests that each contain only a part of the translation)
    </td>
<td>Sirion</td>
<td>2:30 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD004</td>
<td><b>Refactor </b> <br/> <i>api_call_test.rb</i><br/>
    -Improve prompt to avoid responses that are formatted in weird ways <br/>
</td>
<td>Andri</td>
<td>0:30 h</td>
<td>Longer Prompts seem to be more problematic. Additional changes to the prompt might be necessary later.</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD003</td>
<td><b>Implement </b> <br/> Module to create a prompt from values to be translated</td>
<td>Andri</td>
<td>0:30 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD002</td>
<td><b>Implement </b> <br/> Module to read locale files and find values that are marked with #FIXME</td>
<td>Andri</td>
<td>3:00 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>COD001</td>
<td><b>Implement </b> <br/> Module to write translations back to the local file</td>
<td>Andri</td>
<td>2:30 h</td>
<td>Most of the time was spent chasing a bug caused by unexpected responses from ChatGPT</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
</table>

## Setup-Tasks

<table>

<tr>
    <th style="background-color: #b1e0f0; color: black">ID</th>
    <th style="background-color: #b1e0f0; color: black">Task</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
</tr>

<tr>
<td>SET021</td>
<td><b>Refactoring </b> <br>Arbeitsplan <br>
    </td>
    <td>Benjamin</td>
    <td>1:45 h</td>
    <td>I refactored the whole file, it had a lot of inconsistensies and errors. Added the ID colomn 
    for more understanding of the history of the project. Added a list of the tables</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>SET020</td>
<td><b>Refactoring </b> <br>Arbeitsplan <br>
    </td>
    <td>Benjamin</td>
    <td>0:35 h</td>
    <td>Added the meeting table</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET019</td>
<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Arnaud</td>
    <td>7:30 h</td>
    <td>Sehr viel Probleme mit Windows/WSL rails installation, Datenbank Störungen</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>
<tr>
<td>SET018</td>
<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Benjamin</td>
    <td>4:45 h</td>
    <td>Rails muss via WSL installiert werden, hat sehr viel Zeit gebraucht</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>
<tr>
<td>SET017</td>
<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Andri</td>
    <td>1:30 h</td>
    <td>Installation Ruby V3.2.2 fehlgeschlagen <br> stattdessen V3.4.2 installiert</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET016</td>
<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Sirion</td>
    <td>3:00 h</td>
    <td></td>
  <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>
<tr>
<td>SET015</td>
<td><b>Setup </b> <br>Beispielapplikation Eonum <br>
    </td>
    <td>Ilyas</td>
    <td>3:00 h</td>
    <td></td>
   <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>
<tr>
<td>SET014</td>
<td><b>Migrate </b> <br>Migrate Playground-Code to PSE_AI-Translation Rep <br>
    </td>
    <td>Andri</td>
    <td>1:00 h</td>
    <td>Created new task to clean up the folder; there is still some prototyping stuff in there</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET013</td>
<td><b>Refactor </b> <br>Arbeitsplan <br>
    </td>
    <td>Benjamin</td>
    <td>0:45 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET012</td>
<td><b>Refactor </b> <br>Arbeitsplan <br>
    </td>
    <td>Andri</td>
    <td>1:00 h</td>
    <td>Couldn't get Colors to work on GitHub</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET011</td>
<td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Ilyas</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
    <td>SET010</td>
    <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Sirion</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
    <td>SET009</td>
    <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)</td>
    <td>Benjamin</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET008</td>
  <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Arnaud</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET007</td>
  <td><b>Setup </b> <br>IDE Einrichten (RubyMine / VSCode)
    </td>
    <td>Andri</td>
    <td>0:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET006</td>
<td><b>Setup </b> <br>Grundlagen Ruby
    </td>
    <td>Alle</td>
    <td>4:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET005</td>
<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Andri</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET004</td>
<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Arnaud</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET003</td>
<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Benjamin</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>
<tr>
<td>SET002</td>
<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Sirion</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

<tr>
<td>SET001</td>
<td><b>Setup </b> <br>Instruktionsvideo Building Systems with the ChatGPT API <br>
*https://learn.deeplearning.ai/courses/chatgpt-building-system*
    </td>
    <td>Ilyas</td>
    <td>1:30 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>
  </tr>

</table>


## Research-Tasks

<table>

<tr><th style="background-color: #b1e0f0; color: black">ID</th>
<th style="background-color: #b1e0f0; color: black">Task</th>
<th style="background-color: #b1e0f0; color: black">Responsible</th>
<th style="background-color: #b1e0f0; color: black">Time Spent</th>
<th style="background-color: #b1e0f0; color: black">Comment</th>
<th style="background-color: #b1e0f0; color: black">State</th>
</tr>
<tr>
<td>RES002</td>
<td><b>Prototyping </b><br/>
    Send API requests to ChatGPT <br/>
</td>
<td>Sirion, Andri </td>
<td>je ca. 3:00 h</td>
<td>Sirion: RubyOnRails mit Button/User Interface<br/>Andri: kein RubyOnRails, Nur CLI --&gt; RakeTask</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>RES001</td>
<td><b>LLM </b><br/>
    Verschiedene LLMs vergleichen <br/>
    *Auch in Bezug auf Preisgestaltung*
    </td>
<td>Sirion, Benjamin, Arnaud</td>
<td>Je ca 3:00 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>

</table>

## Deliverables

<table>

<tr>
<th style="background-color: #b1e0f0; color: black">ID</th>
<th style="background-color: #b1e0f0; color: black">Task</th>
<th style="background-color: #b1e0f0; color: black">Responsible</th>
<th style="background-color: #b1e0f0; color: black">Time Spent</th>
<th style="background-color: #b1e0f0; color: black">Comment</th>
<th style="background-color: #b1e0f0; color: black">State</th>
</tr>
<tr>
<td>DEL007</td>
<td><b>Benutzerhandbuch</b><br/></td>
<td>Benjamin</td>
<td></td>
<td></td>
<td>until the 20.05.25</td>
</tr>
<tr>
<td>DEL006</td>
<td><b>Testresultate</b><br/></td>
<td>Arnaud</td>
<td></td>
<td></td>
<td>until the 20.05.25</td>
</tr>
<tr>
<td>DEL005</td>
<td><b>Analyse der dritten Iteration </b><br/></td>
<td>Benjamin</td>
<td>1:45 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>DEL004</td>
<td><b>Analyse der zweiten Iteration </b><br/></td>
<td>Benjamin</td>
<td>2:00 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>DEL003</td>
<td><b>Testkonzept V2 </b><br/>
</td>
<td>Arnaud</td>
<td>2:30 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>DEL002</td>
<td><b>Testkonzept V1 </b><br/>
</td>
<td>Arnaud</td>
<td>2:30 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>DEL001</td>
<td><b>Analyse der ersten Iteration </b><br/>
</td>
<td>Benjamin</td>
<td>2:30 h</td>
<td></td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
</table>

## Meetings

<table>

<tr>
<th style="background-color: #b1e0f0; color: black">ID</th>
<th style="background-color: #b1e0f0; color: black">Datum</th>
<th style="background-color: #b1e0f0; color: black">Presence</th>
<th style="background-color: #b1e0f0; color: black">Duration</th>
<th style="background-color: #b1e0f0; color: black">Topic</th>
<th style="background-color: #b1e0f0; color: black">State</th>
</tr>
<tr>
<td>MEE017</td>
<td>21.05.25 </td>
<td>PSE-Team, Florin</td>
<td></td>
<td></td>
<td></td>
</tr>
<tr>
<td>MEE016</td>
<td>14.05.25 </td>
<td>PSE-Team</td>
<td>2:00 h</td>
<td>Feedbacks, Abklären was noch zu tun ist, Dokumentation</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>MEE015</td>
<td>07.05.25 </td>
<td>PSE-Team</td>
<td>0:45 h</td>
<td>Feedbacks, Verteilung der Issues</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>MEE014</td>
<td>01.05.25 </td>
<td>PSE-Team, Florin, Tim</td>
<td>1:15 h</td>
<td>Rückblick Iteration 3, Planning Game 4</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>MEE013</td>
<td>30.04.25 </td>
<td>PSE-Team, Florin</td>
<td>0:35 h</td>
<td>Feedbacks</td>
<td style="background-color: #b9f2ae; color: black">Done</td>
</tr>
<tr>
<td>MEE012</td>
<td>29.04.25 </td>
<td>PSE-Team</td>
<td>1:45 h</td>
<td>Feedbacks, Merging the different feature branches</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE011</td>
<td>16.04.25 </td>
<td>PSE-Team</td>
<td>1:45 h</td>
<td>Entwicklung, Feedbacks</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE010</td>
<td>09.04.25 </td>
<td>PSE-Team</td>
<td>2:00 h</td>
<td>Entwicklung, Tasks Aufteilung</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE009</td>
<td>03.04.25 </td>
<td>PSE-Team, Florin, Joel, Tim</td>
<td>1:30 h</td>
<td>Rückblick Iteration 2, Planning Game 3</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE008</td>
<td>02.04.25 </td>
<td>PSE-Team, Florin</td>
<td>0:40 h</td>
<td>Feedbacks</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE007</td>
<td>26.03.25 </td>
<td>PSE-Team</td>
<td>1:30 h</td>
<td>Tasks aufteilung, Feedbacks, Entwicklung, Installation</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE006</td>
<td>24.03.25 </td>
<td>PSE-Team</td>
<td>1:00 h</td>
<td>Pair-Programming</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE005</td>
<td>20.03.25 </td>
<td>PSE-Team</td>
<td>1:30 h</td>
<td>Tasks aufteilung, Feedbacks, Pair-Programming</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE004</td>
<td>13.03.25 </td>
<td>PSE-Team, Florin, Joel</td>
<td>1:00 h</td>
<td>Rückblick Iteration 1, Planning Game 2</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE003</td>
<td>12.03.25 </td>
<td>PSE-Team, Florin</td>
<td>0:45 h</td>
<td>Feedbacks</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE002</td>
<td>05.03.25 </td>
<td>PSE-Team, Florin</td>
<td>0:30 h</td>
<td>Tasks aufteilung, Feedbacks</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>
<tr>
<td>MEE001</td>
<td>27.02.25 </td>
<td>PSE-Team, Florin, Tim</td>
<td>1:30 h</td>
<td>Planning Game 1</td>
<td style="background-color: #b9f2ae; color: black">Done</td> 
</tr>

</table>

## Kontakt mit Eonum

<table>

<tr>
    <th style="background-color: #b1e0f0; color: black">ID</th>
    <th style="background-color: #b1e0f0; color: black">Task</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
</tr>
<tr>
    <td>KON007</td>
    <td><b>Information </b> <br>Abklären, ob ein weiteres Meeting nötig ist<br> </td>
    <td>Benjamin</td>
    <td>0:20 h</td>
    <td>Eonum braucht kein weiters Meeting</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>KON006</td>
    <td><b>Information </b> <br>Traktandenliste ubermitteln<br> </td>
    <td>Benjamin</td>
    <td>0:20 h</td>
    <td>Wurde am 30.04.25 geschickt</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>KON005</td>
    <td><b>Termin </b> <br>Planning Game 4 <br> </td>
    <td>Benjamin</td>
    <td>0:20 h</td>
    <td>Termin am 01.05.25 um 14h45</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>KON004</td>
    <td><b>Information </b> <br>Code Review<br> </td>
    <td>Benjamin</td>
    <td>0:20 h</td>
    <td>Eonum hat bereits einen Code-Review übermittelt</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>KON003</td>
    <td><b>Termin </b> <br>Planning Game 3 <br> </td>
    <td>Benjamin</td>
    <td>0:30 h</td>
    <td>Termin am 03.04.25 um 14h45</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>KON002</td>
    <td><b>Termin </b> <br>Planning Game 2 <br> </td>
    <td>Benjamin</td>
    <td>0:30 h</td>
    <td>Termin am 13.03.25 um 14h45</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>
<tr>
    <td>KON001</td>
    <td><b>Termin </b> <br>Planning Game 1 <br> </td>
    <td>Benjamin</td>
    <td>0:30 h</td>
    <td>Termin am 27.02.25 um 14h45</td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
</tr>

</table>

## Presentations

<table>

<tr>
    <th style="background-color: #b1e0f0; color: black">ID</th>
    <th style="background-color: #b1e0f0; color: black">Thema</th>
    <th style="background-color: #b1e0f0; color: black">Responsible</th>
    <th style="background-color: #b1e0f0; color: black">Time Spent</th>
    <th style="background-color: #b1e0f0; color: black">Comment</th>
    <th style="background-color: #b1e0f0; color: black">State</th>
</tr>

<tr>
    <td>PRE006</td>
    <td>Schlussdemo</td>
    <td>Andri</td>
    <td></td>
    <td></td>
    <td>Bis am 21.05.25</td>
</td>  
<tr>
    <td>PRE005</td>
    <td>Qualitätsicherung, Testing</td>
    <td>Arnaud</td>
    <td>9:00 h</td>
    <td></td>
      <td style="background-color: #b9f2ae; color: black">Done</td> 
  </tr>
<tr>
    <td>PRE004</td>
    <td>Technologie und Architektur</td>
    <td>Sirion</td>
    <td>12:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  
  </tr>
<tr>
    <td>PRE003</td>
    <td>Demo 1 </td>
    <td>Ilyas</td>
    <td>12:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>
<tr>
    <td>PRE002</td>
    <td>Analyse Iteration 1</td>
    <td>Benjamin</td>
    <td>8:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>
    <tr>
    <td>PRE001</td>
    <td>Requirements </td>
    <td>Arnaud</td>
    <td>8:00 h</td>
    <td></td>
    <td style="background-color: #b9f2ae; color: black">Done</td>  </tr>
  </tr>

</table>





