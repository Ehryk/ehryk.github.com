# RDI-MSP Book Club #
## The Pragmatic Programmer ##

Chapter 3 - The Basic Tools
===========================

Tools amplify your talent

### The Power of Plain Text

Base Material = Knowledge

Most binary formats: context is separate from data
Plain Text: context with data

1. More Storage
2. Interpretation/processing expense

YAASSS: Obscurity != Security. If it needs to be secure, encrypt it. Encodings are not enough.

Can parse the file with only partial, or no, knowledge of its format

"All software becomes legacy as soon as it's written"

Human readable vs human understandable...

Most everything can operate on plain text

Unix: line-oriented plain text files

Plain Text = lowest common denominator

### Shell Games

Preaching to my choir.

[Explain Shell](www.explainshell.com)

Custom context menus can be a compromize... like 7zip. tortoiseGit/Svn, TFS Power Tools, [ContextMenuTools][1]

Ah, [cygwin][2], my old friend!

UWIN: Another Korn Shell reference!

Perl Power Tools - out now?

Challenge 1: Screenshots. All the time. Screenshots.
Challenge 3: [FiSH][3] is awesome!

### Power Editing

My One Editor To Rule Them All: [Sublime Text][4]
(for shells: nano)

Ew, notepad.exe.

'your choice of editor is a religious one'

### Source Code Control

More choir preaching. 

"Always. Even if you are a single-person team on a one-week project. Even if it's a "throw-away" prototype. Even if the stuff you're working on isn't source code. Make sure that everything is under source code control— documentation, phone number lists, memos to vendors, makefiles, build and release procedures, that little shell script that burns the CD master— everything. We routinely use source code control on just about everything we type (including the text of this book). Even if we're not working on a project, our day-to-day work is secured in a repository."

![Hell Yes](http://www.quickmeme.com/img/82/8208731cace7e39f9ae527e5ea2344b92c5119635d0cd8ec19fdd510ed593b31.jpg)

Automated Build Servers, also legit

Use it at home.

### Debugging

Psychology of debugging?

 - Fix the problem, not the blame
 - Don't panic

Great talk on [Decompilation and reverse engineering Stuxnet][5] using IDA and memory sniffing -- hardcore debugging!

Don't just treat the symptoms - treat the disease

Just recently, at BMP - filtering on a field not shown on the screen

VS Call Stack helps SO MUCH
Conditional Breakpoints

Haha! "Rubber Ducking" - we do this all the time!

Don't assume it - prove it

### Text Manipulation

awk is awk to use, sed me.

    #Linecounts (How many lines of code is that?)
    linecount = "!lc() { git ls-files -z | xargs -0 wc -l | awk '/^[[:space:]]*[[:digit:]]+[[:space:]]+total$/{next} {total+=$1;print} END {printf \" Total => %s lines (\",total}'; echo \"*.*)\"; }; lc"
    lines = "!lc() { cd ${GIT_PREFIX:-.} && git ls-files -z ${1} | xargs -0 wc -l | awk '/^[[:space:]]*[[:digit:]]+[[:space:]]+total$/{next} {total+=$1;print} END {printf \" Total => %s lines (\",total}'; if [[ -z "${1}" ]]; then echo \"*.*)\"; else echo ${1}\")\"; fi; }; lc"

All but last 10 characters from file:

    sed '$s/\(.\{10\}\)$//'

Database schema maintenance: not SQL Server, haha

Here's my [Node.js Script][6] generating .cs byte arrays

Hmmm, documentation generator...

Excercise 11: I have written an [enum generator in C#][7]

### Code Generators

Passive: Does not need to be 100%, result is standalone
Active: Repeated often, result is throwaway

  [1]:https://github.com/Ehryk/ContextMenuTools
  [2]:https://www.cygwin.com/
  [3]:https://fishshell.com/
  [4]:https://www.sublimetext.com/
  [5]:https://www.youtube.com/watch?v=rOwMW6agpTI
  [6]:https://github.com/Ehryk/HashCompute/tree/master/SourceCode/Precompilation
  [7]:https://github.com/ResourceDataInc/ApocForms/blob/master/SourceCode/DynamicObjects/Build.cs