#include <stdio.h>

#include <zephyr/kernel.h>

int main(void)
{
   printf("Hello World! %s\n", CONFIG_BOARD_TARGET);

   while (1) {
	  printf("Alive\n");
	  k_sleep(K_MSEC(1000));
   }	

   return 0;
}
