::Redirection specifications are applied, and removed from the command line, before an individual command in a sequence is executed. Redirection specifications control where the standard input, standard output, and standard error file handles for a simple command point. They override any effects to those file handles that may have resulted from pipelining. (See the preceding section on command syntax.) Redirection signs > and >> can be prefixed with 1 for the standard output (same as no prefix) or 2 for the standard error.

@echo off
echo < 003Redirection.bat