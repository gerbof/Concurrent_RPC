RPC concurrente
========================
Superar los problemas del procesamiento secuencial, es decir, la obligación de ejecución de  
procesos de a una solicitud por vez, es más que necesaria en los servidores en el contexto de  
procesamiento Cliente-Servidor. Algunas de las grandes desventajas de los servidores  
secuenciales es la pérdida de tiempo, el mal uso de los recursos y la capacidad actual de los  
sistemas de cómputo de procesamiento paralelo debido a la disponibilidad de múltiples CPU’s en el procesador.
Partiendo de la facilidad que brinda rpcgen al programador, ya que el mismo sólo tiene que  
ocuparse de la implementación de las funciones remotas y la lógica del cliente, se analizará y  
mostrará los pasos necesarios para extender funcionalidad, mediante un wrapper, y permitir  
procesamiento concurrente del lado del servidor mediante el uso de procesos, simulando de ésta  
manera la evolución de las diferentes formas de procesamiento en tiempo.



INSTALACION
-----------

    $ sudo apt-get update
	$ sudo apt-get install build-essential
	$ sudo apt-get install rpcgen
	$ sudo apt-get install rpcbind

	
Posibles fallas en Ubuntu:
--------------------------

	a) Falta rpcbind:
		sudo apt-get install aptitude
		sudo aptitude install portmap
	b) Falta reiniciar “inseguro”:
		sudo -i service rpcbind stop; sudo -i rpcbind -i -w; sudo -i service rpcbind start
		o
		service rpcbind stop; rpcbind -i -w; service rpcbind start
	

Ejecución de la aplicación
--------------------------

Simularemos la aplicación, ejecutando tres clientes que reciben una lista de números enteros por  
parámetro y le solicitan al servidor que realice la suma de los mismos y les devuelva el resultado  
de dicha suma, y cuál es el número máximo y mínimo de esa lista.

	Ejecución del servidor:
		$ ./sumador_server
		
	Ejecución de cada cliente:
		$ ./sumador_client 'host_ip' 'numbers_list'
		
Conclusiones
------------

Se presentó una solución al problema del procesamiento secuencial, extendiendo la funcionalidad de   
RPC permitiendo procesamiento concurrente del lado del servidor mediante el uso de procesos.  
Es una solución, en general para la programación de cualquier servidor. Cabe mencionar que actualmente   
existe información al respecto y soluciones, como por ejemplo a nivel de hilos, vía Internet.
