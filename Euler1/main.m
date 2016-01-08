//
//  main.m
//  Euler1
//
//  Created by JohanLundgren on 2015-10-11.
//  Copyright (c) 2015 SuperMilkApps. All rights reserved.
//

#import <Foundation/Foundation.h>

/* Problem 1:
 
Problemet var följande:
 
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 
 Find the sum of all the multiples of 3 or 5 below 1000.*/

/*En multipel av ett tal är talen i dess multiplikationstabell så att säga. För 5 är det till exempel 5, 10, 15, 20... . För att lösa det här problemet behöver vi helt enkelt göra en lista på alla nummer under 1000 och se vilka av dem som är delbara med 5 eller 3, addera ihop dessa i en variabel, alternativt lägga in dem i en array, och sedan skriva ut resultatet.*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Deklarerar variabel för att hålla koll på summan
        int summa = 0;
        
        //Loopar tal från 0 till och med 999 och kontrollerar om det aktuella talet ger någon rest vid division med 5 eller 3, detta är modulooperatören lämplig för. Om det gör det är talet en multipel av någon av dem och skrivs ut i konsolfönstret och talet läggs till i summa-variabeln.
        for (int i = 0; i < 1000; i++) {
            if (i % 3 == 0 || i % 5 == 0) {
                NSLog(@"%i\n", i);
                summa += i;
            }
        }
        //Lägger till en tom rad för att separera utskrifterna av alla tal från utskriften av summan
        NSLog(@"\n");
        
        //Skriver ut summan av alla tal som inte ger någon rest vid division med 5 elle 3.
        NSLog(@"Summan blir: %i", summa);
    }
    return 0;
}

/*Kommentar: Ganska enkelt problem där inga större utsvängningar behövde göras. Valde att läga ihop summan av talen i en variabel istället för en array då det dels är mindre resurskrävande men också då jag inte har någon ytterligare användning av talen, det finns inget behov av att strukturera upp dem.*/

/*Källor: http://www.matteboken.se/lektioner/matte-1/tal/primtal */
