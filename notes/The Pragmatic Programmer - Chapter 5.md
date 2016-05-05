# RDI-MSP Book Club #
## The Pragmatic Programmer ##

Chapter 5 - Bend or Break
=========================

Less code = more flexibility

### Decoupling and the Law of Demeter

General Contractor approach

Only use top level properties (A.B(), not A.B().C())

hah, unit tests longer than what they are testing

Law of Demeter for functions:
Only reference itself, passed in parameters, objects it created, and directly held component objects.

"Good fences make good neighbors"

Runtime cost and space overhead, as well as larger interfaces and class-level properties and methods

### Metaprogramming 

Configure, don't integrate - ?

Put abstractions in metadata

Customize without recompilation

Make business logic/rules flexible, it changes the most often

Don't write dodo-code

### Temporal Coupling

Think about the time / lifecycle of the application

See what can be parallelized, and what cannot

When it can, design for concurrency

### It's Just a View

Publish/Subscribe model

Model/View/Controller

### Blackboards

'JavaSpaces'??

