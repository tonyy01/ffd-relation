# ffd-relation
Relation finding in fractional factorial design in Design of Experiment

## Syntax

I = findrelation(interactiveFact, interaction)

## Description

I = findrelation(interactiveFact, interaction) finds relations for main factors and interactive factors. interactiveFact is a string array consisting of characters meaning "interactive factors". "interaction" is a string array consisting of multi-character terms indicating the interaction of corresponding interaction factors. I is an array of strings refering to the relations. 

I = findrelation(interactiveFact, interaction) returns I for "interactiveFact" of "interaction". 

## Examples

Suppose you wish to determine the I for "E" and "F" and its corresponding interaction is "ABC" and "BC":

I = findrelation(["D", "E"], ["ABC", "BC"])
I = ["ABCD" "BCE" "ADE"]

Other characters can also be applied to the variables:

I = findrelation(["4", "5"], ["123", "23"])
I = ["1234" "235" "145"]
