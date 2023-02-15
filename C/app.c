#include <stdio.h>
#include <stlib.h>

int main()
{
    int num = 10;
    printf("%p \n", &num);
    
    int *pNum = &num;
    printf("%p \n", pNum)
    printf("%d \n",*pNum)


    return 0;
}