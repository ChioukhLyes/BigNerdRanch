//
//  main.c
//  AGoodStart
//
//  Created by Chioukh Lyes on 30/03/2015.
//  Copyright (c) 2015 Excilys. All rights reserved.
//

#include  <stdio.h>
#include  <unistd.h>
#include  <stdio.h>
#include  <readline/readline.h>

/**
 * variables
 * if/else blocs
 * functions
 * sleeping
 * global and local declaration
 * recursion
 * using breakpoint
 * look for BeerSong view
 * Format String
 * numebers (signed, unsigned)
 * NSInteger
 * NSUInteger
 * loops
 * adresses
 * structs
 */

void congratulateStudent(char *student, char *course, int numDays){
    int k = 1;
    printf("%s has dons much %s Programming as I could fit into %d days.\n", student, course, numDays);
    printf("%d\n",k);
}

int  main(int argc, const char * argv[]) {
    float weight;
    float cookingTime;
    
    weight = 14.2;
    cookingTime = 15.0 + 15.0 * weight;
    
    printf("Cook it for %f minutes.\n", cookingTime);
    
    if(cookingTime < 0){
        printf("true\n");
    }
    else{
        printf("false\n");
    }
    
    /*Calling*/
    congratulateStudent("Abdou", "English", 4);
    sleep(2);
    congratulateStudent("Hichem", "Java", 5);
    congratulateStudent("Walid", "World", 2);
    congratulateStudent("Mimi", "Cook", 1);
    
    
    
    int x =255;
    unsigned long y = 55;
    
    printf("y is %lu.\n",y);
    
    printf("x is %d.\n",x);
    printf("x in octal is %o.\n",x);
    printf("x in hexadecimal is %x.\n",x);
    
    const char *name = readline(NULL);
    printf("%s is cool!\n", name);
    

    //Adresses
    printf("weight is stored in %p", &weight);
    
    //Structs - static
    struct Person{
        float height;
        int weight;
    };
    
    //best declaration for structs - dynamic
    typedef  struct{
     
        float height;
        int weight;
    } person;
    
    struct Person mikey;
    
    mikey.height = 10;
    mikey.weight = 12;
    
    printf("Mickey height is %f\n",mikey.height);
    
    
    return  0;
}

