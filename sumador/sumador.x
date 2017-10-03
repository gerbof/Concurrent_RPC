/*
* Autor: Alexis German Bof
* Título: Concurrencia en RPC.
*/

 /* Estructura usada para devolver el número máximo y el mínimo. */
struct numbers_result {
  int max; 
  int min;
};

 /* Estructura usada para pasar al sumador el valor a sumar y quién soy. */

struct id_number {
	int value;
	int old_value;
	pid_t pID;
};

/* Estructura usada para pasar los valores */
typedef int iarray<>;



program SUMADOR_MAXMIN_PROG {
   version SUMADOR_MAXMIN_VERSION {
     numbers_result VMAXMIN(iarray) = 1; /* Devuelve el máximo y el mínimo de una lista de números enteros */
	 int SUMA(id_number) = 2;			 /* Devuelve la suma total de una lista de números enteros */
   } = 1;
} = 0x20000001;


