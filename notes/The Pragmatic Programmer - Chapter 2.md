# RDI-MSP Book Club #
## The Pragmatic Programmer ##

Chapter 2 - A Pragmatic Approach
================================

### The Evils of Duplication

Don't have multiple copies of the same code; inevitably, it will get out of sync

"All this instability means that we spend a large part of our time in maintenance mode, reorganizing and reexpressing the knowledge in our systems."

Tip 11 DRY == Don't Repeat Yourself

 - Imposed: requirements or environment necessitates duplication
   - MVC feels this way sometimes
   - Make the process active and daily, not stale and intermittent
   - Let the code be its own documentation
   - Language Required Duplication (.h files)
 - Inadvertant: unrealized or unintentional duplication
   - What does it mean to 'localize the impact' of duplication?
   - Use accessors! YAASSS
 - Impatient: laziness and time constrained duplication
   - I just did this with CRC implementations on a personal project (HashCompute)
   - "spend time up front to save pain later"
 - Interdeveloper: multiple devs duplicating work/information
   - Clear design and strong leadership helps
   - Communication and forums and chatting
   - "if it isn't easy, people won't do it"

### Orthogonality

Don't split the same functionality across multiple places, it's hard to fit back together

Reminds me of The Dark Crystal:

![The Dark Crystal](TheDarkCrystal.jpg)

From geometry, orthogonality is the property of line segment being at right angles to each other. There are only be as many simultaneous orthogonal lines as dimensions you have to work with.

![Orthogonality](Orthogonal.png)

I like the helicopter analogy; to make drone flying easier there are microcontrollers attempting to make the 'sticks' orthogonal to the end user, though the raw inputs are non ortho.

 - Tip 13: Eliminate Effects Between Unrelated Things

Increases productivity

 - Changes are localized
 - Promotes reuse
 - More combinations allow for more effects

Reduces risk

 - Sections with problems don't bleed into other parts
 - Less fragile end system
 - Not as tied to third parties

Overlapping teams leads to confusion and wasted effort

Terms: 'modular', 'component-based', 'layered'

Toolkits and Libraries: be careful they don't impose unwanted changes and requirements

When coding, try not to reduce the orthogonality

 - Keep code decoupled that already is
 - Avoid global data / singletons
 - Avoid similar functions


### Reversibility

### Tracer Bullets

### Prototypes and Post-it Notes

### Domain Languages

### Estimating

