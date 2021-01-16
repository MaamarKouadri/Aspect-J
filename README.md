# AspectJ

4.2.1 Introducing Shape Parent

Q 4. Using aspects, introduce Shape as a parent interface for both Circle and Rectangle.

To implement getName() method, the Circle object returns Circle and the Rectangle

object returns Rectangle.

4.2.2 Overriding toString()

Q 5. Using aspects, override the toString() method in both Circle and Rectangle classes.

The toString() methods call the getName() in 4.2.1 and generates a string, representing

the object.

Examples:

 A Circle with a radius of 2 is represented as the string Circle(2).

 A Rectangle with a width of 2 and a height of 10 is represented as Rectangle(2,

10).

4.2.3 Implementing Circle.getArea()

Q 6. The logic for calculating the area of the circle has not been implemented (as it currently

throws a RuntimeException). Using aspects, implement it.

4.2.4 Handling Negative Values

Q 7. Using aspects, make sure passing a negative value to a radius of a Circle or to either

width or height of a Rectangle results in 0 value for the value of the area and the perimeter.

4.2.5 Introducing Shape IDs

We want to generate a unique ID for every shape that is created. The shape IDs start with

1 and is automatically incremented for every newly created shape. To do so, a private static

counter may be implemented in an aspect that is incremented automatically upon calling

the constructors for both Circle and Rectangle.

6

Q 8. Using aspects, implement the getId() method for both shapes.

Note that you need to uncomment the corresponding lines in both the code base and the

driver code.
