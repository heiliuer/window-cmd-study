@echo off

:: A simple command is just a command name, a command tail, and some redirection specifications. An example of a simple command is dir *.txt > somefile.

dir *.bat > gen/list.txt

:: A pipeline is several simple commands joined together with the "pipe" metacharacter—"|", also known as the "vertical bar". The standard output of the simple command preceding each vertical bar is connected to the standard input of the simple command following it, via a pipe.
::The command interpreter runs all of the simple commands in the pipeline in parallel. An example of a pipeline (comprising two simple commands) is dir *.txt | more.

dir *.bat|findstr .bat > gen/list2.txt


::A compound command is a set of pipelines separated by conjunctions.
::The pipelines are executed sequentially, one after the other,
::and the conjunction controls whether the command interpreter executes the next pipeline or not.
:: An example of a compound command (comprising two pipelines, which themselves are just simple commands) is move file.txt file.bak && dir > file.txt.

::The conjunctions:

::& - An unconditional conjunction. The next pipeline is always executed after the current one has completed executing.
::&& - A positive conditional conjunction. The next pipeline is executed if the current one completes executing with a zero exit status.
::|| - A negative conditional conjunction. The next pipeline is executed if the current one completes executing with a non-zero exit status.