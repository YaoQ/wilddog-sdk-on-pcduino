/*
* LED test program
*/
#include <core.h>
#include <stdio.h>
#include <stdlib.h>
#include <wilddog.h>

int led_pin = 13;

void onDataChange(
     const Wilddog_Node_T * p_snapshot,
     void * arg,
     Wilddog_Return_T err)
{
    if(p_snapshot != NULL )
    {
        int len = 0;
        char *value = NULL;
        value = wilddog_node_getValue(p_snapshot, &len);
        if(value)
        {
            if(strcmp(value, "1") == 0)
                digitalWrite(led_pin, HIGH);
            else
                digitalWrite(led_pin, LOW);
        }

    }
    
    return;

}

void setup (void)
{
    Wilddog_T wilddog = 0;
    pinMode(led_pin, OUTPUT);
    digitalWrite(led_pin, HIGH);
    printf("Turn on LED!");
    wilddog= wilddog_initWithUrl("https://pcduino.wilddogio.com/led");

    wilddog_addObserver(wilddog, WD_ET_VALUECHANGE, onDataChange, NULL);
}

void loop (void)
{
        wilddog_trySync();
}

	
