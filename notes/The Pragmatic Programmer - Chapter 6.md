# RDI-MSP Book Club #
## The Pragmatic Programmer ##

Chapter 6 - While You Are Coding
================================

### Programming by Coincidence

What is a CASE tool?

https://en.wikipedia.org/wiki/Computer-aided_software_engineering

Program Deliberately

 - Be aware of what you are doing / the goal
 - Rely on reliable things
 - Test your assumptions
 - Prioritize
 - Don't be a slave to history

Excercises

31. stderr is available, buf is available, buf will return character input
32. string may not be a valid string pointer, maxlen is positive, string terminates in \0
33. File system access, assembly location

### Algorithm Speed

Estimating Algorithms

Big O notation!

![Big O Notation][1]

https://en.wikipedia.org/wiki/Big_O_notation

They placed 10^263 years accurate on the predicted cosmological future!

> 10^20 (100 quintillion)	Estimated time until the Earth collides with the black dwarf Sun due to the decay of its orbit via emission of gravitational radiation,[94] if the Earth is not ejected from its orbit by a stellar encounter or engulfed by the Sun during its red giant phase.[94]
> 
> 10^30	Estimated time until those stars not ejected from galaxies (1% – 10%) fall into their galaxies' central supermassive black holes. By this point, with binary stars having fallen into each other, and planets into their stars, via emission of gravitational radiation, only solitary objects (stellar remnants, brown dwarfs, ejected planets, black holes) will remain in the universe.[4]
> 
> 10^65	Assuming that protons do not decay, estimated time for rigid objects like rocks to rearrange their atoms and molecules via quantum tunneling. On this timescale, all matter is liquid.[94]
> 
> 10^106	Estimated time until a supermassive black hole with a mass of 20 trillion solar masses decays by the Hawking process.[97] This marks the end of the Black Hole Era. Beyond this time, if protons do decay, the Universe enters the Dark Era, in which all physical objects have decayed to subatomic particles, gradually winding down to their final energy state in the heat death of the universe.[3][4]
> 
> 10^200	Estimated high time for all nucleons in the observable universe to decay, if they don't via the above process, through any one of many different mechanisms allowed in modern particle physics (higher-order baryon non-conservation processes, virtual black holes, sphalerons, etc.) on time scales of 1046 to 10200 years.[3]
> 
> \- https://en.wikipedia.org/wiki/Timeline_of_the_far_future

Simple iterations: O(n)
Nested iterations: Up to (or, in rare cases, worse than) O(n^2) - bubble sort
Binary searching: O(lg(n)) 
Divide and Conquer: O(n*lg(n)) - quicksort
Combinatoric: O(n!) - bad news

Time/Memory Tradeoff

The sound of sorting algorithms: https://www.youtube.com/watch?v=kPRA0W1kECg

### Refactoring

Construction vs Gardening

Reasons for it:

 - Duplication
 - Non orthogonal design
 - New discovery
 - Performance

Don't mix refactoring with adding features / other changes
Have good tests

Exercises

38. 

   switch(state)
   {
       case(TEXAS):
           ...
           break;

       case(OHIO):
       case(MAINE):
           ...
           break;

       default:
           ...
           break;
   }

### Code That's Easy To Test

Software as ICs, interesting!

'A culture of testing'

### Evil Wizards

(I hope I get to be one)

Visual Studio is the Evilest Wizard then: Sauron? Morgoth? Ravana? Shiva?

Don't use wizard code you don't understand: a tall order in VS. Who really needs to dive into .csproj structures, nuances of every .config setting, and .designer.cs files?

[1]: BigONotation.png