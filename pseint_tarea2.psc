// Ariel espinoza 
//  1) leer un caracter y deducir si esta o no comprendido entre las le tras 

// "a"......."z" y "A"..."Z" ambas inclusive y si no verificar si es un signo de puntuacion",.;:" y si no presentar solo el caracter
Funcion  ejercicio1
	//entrada 
	Definir car como cadena;
	leer car;
	//Proceso 
	si car >= "a" y car <= "z" Entonces
		// salida 
		Escribir car, "  Es minuscula";
	SiNo
		si car >= "A" y car <= "Z" Entonces
			// salida
			Escribir car," Es mayuscula ";
		SiNo
			si car="," o car="." o car=";" o car=":" Entonces
				// salidad
				Escribir car, " Es un caracter";
			FinSi
		FinSi
		
	FinSi
FinFuncion

// 2)"Somos Mas" es una empresa dedicada a ofrecer banquetes; sus tarifas son las siguientes:
//El costo de platillo por persona es de $95.00, pero si el número de
//personas es mayor a 200 pero menor o igual a 300, el costo es de $85.00.
//Para más de 300 personas el costo por platillo es de $75.00. Se requiere un 
//algoritmo que ayude a determinar el presupuesto que se debe presentar a los
//clientes que deseen realizar un evento
Funcion ejercicio10 
	//entrada
	Definir costo,a,b,c como real;
	a <- 9500;
	b <- 8500;
	c <- 7500;
	Escribir " ingrese el numero de persona ";
	leer costo;
	// Proceso 
	si costo >200 y costo<= 300 Entonces
		// salida 
		Escribir " tendria que pagar :", b;
	SiNo
		si costo > 300 Entonces
			Escribir "tendria que pagar " , c;
		SiNo
			si costo < 200 Entonces
				Escribir "tendria que pagar ", a;
			FinSi
		FinSi
	FinSi
FinFuncion


// 3) Una compañía de viajes cuenta con tres tipos de autobuses (A, B y C), 
//cada uno tiene un precio por kilómetro recorrido por persona, los costos respectivos son $2.0, 
//$2.5 y $3.0. Se requiere determinar el costo total y por persona del viaje considerando que 
//cuando éste se presupuesta debe haber un mínimo de 20 personas, de lo contrario el cobro se 
//realiza con base en este número límite.
Funcion ejercicio13 
	Definir tipoAutobus Como Carácter
    Definir distancia, costoTotal, costoPorPersona Como Real
    Definir numPersonas Como Entero
    
    Escribir("Ingrese el tipo de autobús (A, B o C):")
    Leer tipoAutobus;
    
    Escribir("Ingrese la distancia del viaje en kilómetros:")
    Leer distancia;
    
    Escribir("Ingrese el número de personas:")
    Leer numPersonas;
    
    Segun tipoAutobus Hacer
        "A":
            Si numPersonas >= 20 Entonces
                costoTotal = distancia * numPersonas * 2.0
            Sino
                costoTotal = distancia * 20 * 2.0
            FinSi
        "B":
            Si numPersonas >= 20 Entonces
                costoTotal = distancia * numPersonas * 2.5
            Sino
                costoTotal = distancia * 20 * 2.5
            FinSi
        "C":
            Si numPersonas >= 20 Entonces
                costoTotal = distancia * numPersonas * 3.0
            Sino
                costoTotal = distancia * 20 * 3.0
            FinSi
        De Otro Modo:
            Escribir"Tipo de autobús no válido."
	FinSegun	
	
	cosPersona = costoTotal / numPersonas;
	
	Escribir "El costo total del viaje es: ", costoTotal
	Escribir "El costo por persona es: ", cosPersona
FinFuncion

// 4) El consultorio del Dr. Paez tiene como política cobrar la consulta con 
//base en el número de cita, de la siguiente forma:
//	Las tres primeras citas a $200.00 c/u.
//	Las siguientes dos citas a $150.00 c/u.
//	Las tres siguientes citas a $100.00 c/u.
//	Las restantes a $50.00 c/u, mientras dure el tratamiento.
//	Se requiere un algoritmo para determinar:
//	Cuánto pagará el paciente por la cita.
//	El monto de lo que ha pagado el paciente por el tratamiento.
//	Para la solución de este problema se requiere saber qué número de cita se efectuará, con el 
//	cual se podrá determinar el costo que tendrá la consulta y cuánto se ha gastado en el 
//	tratamiento.
Funcion ejercicio16
	Definir numeroCita Como Entero
    Definir cosConsulta, montoTotalPago Como Real
    
    Escribir("Ingrese el número de cita:")
    Leer numeroCita;
    
    Si numeroCita <= 3 Entonces
        cosConsulta = numeroCita * 200.00
    Sino
        Si numeroCita <= 5 Entonces
            cosConsulta = 3 * 200.00 + (numeroCita - 3) * 150.00
        Sino
            Si numeroCita <= 8 Entonces
                cosConsulta = 3 * 200.00 + 2 * 150.00 + (numeroCita - 5) * 100.00
            Sino
                cosConsulta = 3 * 200.00 + 2 * 150.00 + 3 * 100.00 + (numeroCita - 8) * 50.00
            FinSi
        FinSi
    FinSi
    
    montoTotalPago = cosConsulta
    
    Escribir "El costo de la consulta es: ", cosConsulta;
    Escribir "El monto total pagado por el tratamiento es: ", montoTotalPago;
    
	
	
FinFuncion

// 5) Escribir un algoritmo que lea tres números y determine si el numero 1 es el
//DIA MENSAJE
//1 LUNES
//2 MARTES
//3 MIERCOLES
//4 JUEVES
//5 VIERNES
//6 SABADO
//7 DOMINGO
//CUALQUIER OTRO VALOR ERROR
Funcion ejercicio22
	// entrada 
	Definir nu como entero;
	Escribir "digite un numero del 1al 7";
	leer nu;
	// proceso 
	Segun nu Hacer
		caso 1:
			// salida
			Escribir "lunes"; 
		caso 2.:
			// salida 
			Escribir "martes";
		caso 3.:
			// salida 
			Escribir "miercoles";
		caso 4.:
			// salida 
			Escribir "jueves";
		caso 5.:
			// salida 
			Escribir "viernes";
		caso 6.:
			//salida 
			Escribir "Sabado";
		caso 7.:
			// salida
			Escribir "Domingo";
		De Otro Modo:
			// salida 
			Escribir "Solo digite lo que se indique:";
	Fin Segun
FinFuncion

// 6) Se dispone de los sueldos y categorias de los profesores de la unemi. 
//segun la categoria estos reciben un bono adicional de porcentaje al sueldo:
//		categoria="Auxiliar" incremento del 10%
//		categoria="Agregado" incremento del 20%
//		categoria="principal" incremento del 50%
//		Se pide obtener el promedio de los sueldos y del bono de cada categoria
//		El programa termina cuando se ingresa una categoria inexistente
Funcion ejercicio32 
	Definir categoria Como Cadena
    Definir sueldo, totalSueldos, totalBonos, contadorAuxiliar, contadorAgregado, contadorPrincipal Como Real
    Definir promsueldo, promedioBonosAuxiliar, promedioBonosAgregado, promedioBonosPrincipal Como Real
    
    totalSueldos = 0
    totalBonos = 0
    contadorAuxiliar = 0
    contadorAgregado = 0
    contadorPrincipal = 0
    
    Escribir("Ingrese la categoría del profesor (Auxiliar, Agregado o Principal). Para terminar, ingrese una categoría inexistente.")
    
    Mientras Verdadero Hacer
        Escribir("Ingrese la categoría del profesor:")
        Leer categoria;
        
        Si categoria = "Auxiliar" Entonces
            Escribir "Ingrese el sueldo del profesor:"
            Leer sueldo;
            
            totalSueldos = totalSueldos + sueldo
            totalBonos = totalBonos + (sueldo * 0.10)
            contadorAuxiliar = contadorAuxiliar + 1
        Sino
            Si categoria = "Agregado" Entonces
                Escribir("Ingrese el sueldo del profesor:")
                Leer sueldo;
                
                totalSueldos = totalSueldos + sueldo
                totalBonos = totalBonos + (sueldo * 0.20)
                contadorAgregado = contadorAgregado + 1
            Sino
                Si categoria = "Principal" Entonces
                    Escribir("Ingrese el sueldo del profesor:")
                    Leer sueldo;
                    
                    totalSueldos = totalSueldos + sueldo
                    totalBonos = totalBonos + (sueldo * 0.50)
                    contadorPrincipal = contadorPrincipal + 1
                Sino
                    Escribir "Categoría inexistente. Saliendo del programa."
                FinSi
            FinSi
        FinSi
    FinMientras
    
    Si contadorAuxiliar > 0 Entonces
        promedioBonosAuxiliar = (totalBonos / contadorAuxiliar)
        Escribir "Promedio de bonos para la categoría Auxiliar: ", promedioBonosAuxiliar;
    Sino
        Escribir("No se ingresaron profesores en la categoría Auxiliar.")
    FinSi
    
    Si contadorAgregado > 0 Entonces
        promedioBonosAgregado = (totalBonos / contadorAgregado)
        Escribir "Promedio de bonos para la categoría Agregado: ", promedioBonosAgregado;
    Sino
        Escribir("No se ingresaron profesores en la categoría Agregado.")
    FinSi
    
    Si contadorPrincipal > 0 Entonces
        promedioBonosPrincipal = (totalBonos / contadorPrincipal)
        Escribir "Promedio de bonos para la categoría Principal: ", promedioBonosPrincipal;
    Sino
        Escribir("No se ingresaron profesores en la categoría Principal.")
    FinSi
    
	promSueldos = totalSueldos / (contadorAuxiliar + contadorAgregado + contadorPrincipal)
    Escribir "Promedio de sueldos: ", promSueldos;
	
FinFuncion

// 7) Un empleado de la tienda "Somos Más" realiza N ventas durante el día, se requiere saber
//cuántas de ellas fueron mayores a $1000, cuántas de ellas fueron mayores a $500 pero menores 
//o iguales a $1000, y cuantas fueron menores o iguales a $500. Además, se requiere saber el 
//monto de lo vendido en cada categoría y de forma global. Realizar un algoritmo
Funcion ejercicio30
	// entrada
	Definir N Como real;
    
    Escribir "Ingrese el número de ventas realizadas:";
    Leer N;
	x = 1
	total1 = 0
	a = 0
	total2 = 0
	b = 0
	total3 = 0
	c = 0
	// Proceso 
	Mientras x <= n Hacer
		Escribir "Ingresa el total de la venta ",x;
		leer venta
		si venta > 1000 Entonces
			total1 = total1 + venta
			a = a + 1
		SiNo
			si venta > 500 Entonces
				total2 = total2 + venta
				b = b + 1
			SiNo
				total3 = total3 + venta
				c = c + 1
			FinSi
		FinSi
		x = x +1;
	FinMientras
	
	// salidad
	Escribir "Cantidad de ventas mayores a mayores de 1000: $", total1;
	Escribir "La cantidades mayores a 500 pero menores a igual 1000 es: $", total2;
	Escribir "Cantidad de ventas menores o iguales a $500 es: $", total3;
	
FinFuncion



// fernando almeida 

// 1
Funcion  ejercicio4
    Definir num1, num2, num3, num4 como entero;
    
    Escribir "Ingrese el número 1: ";
    Leer num1;
    
    Escribir "Ingrese el número 2: ";
    Leer num2;
    
    Escribir "Ingrese el número 3: ";
    Leer num3;
    
    Escribir "Ingrese el número 4: ";
    Leer num4;
    
    Si num1 * 2 = num2 Entonces
        Escribir num1, " es la mitad de ", num2;
    Sino
        Escribir num1, " no es la mitad de ", num2;
    Fin Si
    
    Si num4 % num3 = 0 Entonces
        Escribir num3, " es divisor de ", num4;
    Sino
        Escribir num3, " no es divisor de ", num4;
    Fin Si
    
FinFuncion


// 2
Funcion  ejercicio19
    Definir peso_paquete, zona_destino como real;
    Definir costo_servicio como real;
    
    Escribir "Ingrese el peso del paquete en kg: ";
    Leer peso_paquete;
    
    Si peso_paquete > 5 Entonces
        Escribir "El paquete excede el peso máximo permitido. No se puede transportar.";
    Sino
        Escribir "Ingrese la zona de destino (1: América del Norte, 2: América Central, 3: América del Sur, 4: Europa, 5: Asia): ";
        Leer zona_destino;
        
        Si zona_destino = 1 Entonces
            costo_servicio <- peso_paquete * 11;
        Fin Si
        
        Si zona_destino = 2 Entonces
            costo_servicio <- peso_paquete * 10;
        Fin Si
        
        Si zona_destino = 3 Entonces
            costo_servicio <- peso_paquete * 12;
        Fin Si
        
        Si zona_destino = 4 Entonces
            costo_servicio <- peso_paquete * 24;
        Fin Si
        
        Si zona_destino = 5 Entonces
            costo_servicio <- peso_paquete * 27;
        Fin Si
        
        Si zona_destino >= 1 y zona_destino <= 5 Entonces
            Escribir "El costo del servicio de paquetería es: ", costo_servicio, " dólares.";
        Sino
            Escribir "Zona de destino inválida.";
        Fin Si
    Fin Si
FinFuncion


// 3
Funcion  ejercicio17
    Definir clave, costo_materia_prima, costo_mano_obra, costo_fabricacion, costo_produccion, precio_venta como real;
    
    Escribir "Ingrese la clave del artículo (1, 2, 3, 4, 5 o 6): ";
    Leer clave;
    
    Escribir "Ingrese el costo de la materia prima: ";
    Leer costo_materia_prima;
    
    Si clave = 3 o clave = 4 Entonces
        costo_mano_obra <- 0.75 * costo_materia_prima;
    Fin Si
    
    Si clave = 1 o clave = 5 Entonces
        costo_mano_obra <- 0.80 * costo_materia_prima;
    Fin Si
    
    Si clave = 2 o clave = 6 Entonces
        costo_mano_obra <- 0.85 * costo_materia_prima;
    Fin Si
    
    Si clave = 2 o clave = 5 Entonces
        costo_fabricacion <- 0.30 * costo_materia_prima;
    Fin Si
    
    Si clave = 3 o clave = 6 Entonces
        costo_fabricacion <- 0.35 * costo_materia_prima;
    Fin Si
    
    Si clave = 1 o clave = 4 Entonces
        costo_fabricacion <- 0.28 * costo_materia_prima;
    Fin Si
    
    costo_produccion <- costo_materia_prima + costo_mano_obra + costo_fabricacion;
    precio_venta <- costo_produccion + (0.45 * costo_produccion);
    
    Escribir "El precio de venta del artículo es: ", precio_venta;
    
FinFuncion


// 4
Funcion  ejercicio12
    Definir cantidad_alumnos como entero;
    Definir costo_alumno, pago_compania como real;
    
    Escribir "Ingrese la cantidad de alumnos: ";
    Leer cantidad_alumnos;
    
    Si cantidad_alumnos >= 100 Entonces
        costo_alumno <- 65.00;
    Sino 
        Si cantidad_alumnos >= 50 y cantidad_alumnos <= 99 Entonces
            costo_alumno <- 70.00;
        Sino 
            Si cantidad_alumnos >= 30 y cantidad_alumnos <= 49 Entonces
                costo_alumno <- 95.00;
            Sino
                costo_alumno <- 0.00;  // No se cobra a los alumnos cuando son menos de 30
                pago_compania <- 4000.00;  // Pago fijo para la compañía de autobuses
            Fin Si
        Fin Si
    Fin Si
    
    Si costo_alumno > 0.00 Entonces
        pago_compania <- cantidad_alumnos * costo_alumno;
    Fin Si
    
    Escribir "El costo para cada alumno es de: $", costo_alumno;
    Escribir "El pago a la compañía de autobuses es de: $", pago_compania;
    
FinFuncion


//  5
Funcion  ejercicio11
    Definir tipo, tamano_uva como caracter;
    Definir precio_inicial, ganancia, precio_final como real;
    
    Escribir "Ingrese el tipo de uva (A o B): ";
    Leer tipo;
    
    Si tipo = "A" o tipo = "a" Entonces
        Escribir "Ingrese el tamaño de uva (1 o 2): ";
        Leer tamano_uva;
        
        Si tamano_uva = "1" o tamano_uva = "2" Entonces
            Escribir "Ingrese el precio inicial por kilo de uva: ";
            Leer precio_inicial;
            
            Si tipo = "A" Entonces
                Si tamano_uva = "1" Entonces
                    ganancia <- 0.20;
                Sino
                    ganancia <- 0.30;
                Fin Si
            Sino
                Si tamano_uva = "1" Entonces
                    ganancia <- -0.30;
                Sino
                    ganancia <- -0.50;
                Fin Si
                
                precio_final <- precio_inicial + ganancia;
                Escribir "La ganancia obtenida por el productor es de: ", precio_final, " dólares.";
            Fin Si
            
        Sino
            Escribir "Tamaño de uva inválido.";
        Fin Si
        
    Sino
        Escribir "Tipo de uva inválido.";
    Fin Si
    
FinFuncion


// 6
Funcion  ejercicio6
	Definir nombre1, nombre2 como cadena;
	
	Escribir "Ingrese el primer nombre: ";
	Leer nombre1;
	
	Escribir "Ingrese el segundo nombre: ";
	Leer nombre2;
	
	Si nombre1 = nombre2 Entonces
		Escribir "Los nombres son iguales.";
	FinSi
	
	Si nombre1 < nombre2 Entonces
		Escribir "El primer nombre es menor en contenido que el segundo.";
	Sino
		Escribir "El primer nombre es mayor en contenido que el segundo.";
	fin si
	
FinFuncion


//  7
Funcion  ejercicio27
    Definir num1, num2, num3, mayor como entero;
	
    Escribir "Ingrese el primer número: ";
    Leer num1;
	
    Escribir "Ingrese el segundo número: ";
    Leer num2;
	
    Escribir "Ingrese el tercer número: ";
    Leer num3;
	
    Si num1 > num2 y num1 > num3 Entonces
        mayor <- num1;
    Fin Si
    
    Si num2 > num1 y num2 > num3 Entonces
        mayor <- num2;
    Fin Si
    
    Si num3 > num1 y num3 > num2 Entonces
        mayor <- num3;
    Fin Si
    
    Si num1 = num2 y num2 = num3 Entonces
        Escribir "Los números ingresados son iguales.";
    Sino
        Escribir "El mayor número ingresado es: ", mayor;
    Fin Si
	
FinFuncion


// LUIGGI AXEL

Funcion  ejercicio5
	//5) Ingresar dos numeros y determinar si son iguales o si el primer numero es menor que el segundo dado su valor  
	//primero se define num1 y num2 como real o entero pero en este caso lo pondre en real por si queremos realizarlo con decimales
	//entrada num1, num2 (leer) 
	Definir num1, num2 como real;
	
	Escribir "Ingrese el primer número: "; 
	Leer num1;	
	
	Escribir "Ingrese el segundo número: "; 
	Leer num2;
	//proceso: comparar que numero es menor o igual.
	Si num1 = num2 Entonces
		Escribir "Los números son iguales"; 
	Sino 
		Si num1 < num2 Entonces
			Escribir "El primer número es menor que el segundo"; 	
		Sino
			Escribir "El primer número es mayor que el segundo"; 				
		FinSi
	FinSi
	//salida (presentacion): numero menor o igual 			
	
FinFuncion

// Almacén "Somos Mas" tiene una promoción: a todos los trajes que
//tienen un precio superior a 2500, se les aplicará un descuento del 15%, a todo los demás se les aplicará sólo el 8%
Funcion  ejercicio9
	//entrada leer precio descuento y precioConDescuento
	Definir precio, descuento, precio_final Como Real;
	
	Escribir "Almacén Somos Mas";	
	Escribir "Ingrese el precio del traje: ";
	Leer precio;
	//proceso: leer si la cantidad es la necesaria para poner el descuento  
	Si precio > 2500 Entonces;
		descuento <- 0.15;
	Sino
		descuento <- 0.08;
	FinSi
	
	precio_final <- precio - (precio * descuento);
	
	Escribir "El precio original del traje es: ", precio;
	Escribir "El descuento aplicado es del ", descuento * 100, "%";
	Escribir "El precio con descuento es: ", precio_final; 
	//salida: (presentacion del precio con o sin descuento
	
FinFuncion

//Determinar cuanto se debe pagar por cierta cantidad de colas,considerando que si son más de 23 colas, el costo por unidad
//es de $0,50 caso contrario el precio será 20% mas Al costo resultante calcular el 12% del iva. Se pide presentar:
//cantidad comprada, el costo ´por unidad, el total sin iva	el iva y el total a pagar.
Funcion  ejercicio14
	Definir cantidad,costoPorUnidad,totalSinIVA,iva,precio_final Como Real;
	//entrada ingresar la cantida de colas 
	Escribir "valor por colas";
	Escribir "Ingrese la cantidad de colas compradas: ";
	Leer cantidad;
	//leer si la cantidad de cola tendra el descuento 
	Si cantidad > 23 Entonces
		costoPorUnidad <- 0.50;
	Sino
		costoPorUnidad <- costoPorUnidad * 1.2;
	FinSi
	
	totalSinIVA <- cantidad * costoPorUnidad;
	iva <- totalSinIVA * 0.12;
	precio_final <- totalSinIVA + iva;
	
	Escribir "Cantidad comprada: ", cantidad;
	Escribir "Costo por unidad: $", costoPorUnidad;
	Escribir "Total sin IVA: $", totalSinIVA;
	Escribir "IVA: $", iva;
	Escribir "Total a pagar: $", precio_final;
	
	//presentar el precio_final a pagar 
	
FinFuncion

//En un Supermercado se tiene la siguiente promocion. Si se compra mas de 19 productos a estos se le aplica
//un descuento del 10 por ciento al precio del producto y si se compra menos de 20 productos se le aplica un descuento del 20 por ciento
//al precio del producto. Al costo obtenido se le aplica descuento adicional del 5 por ciento. Se pide presentar :
//cantidad comprada, el precio orginal, el descuento inicial el total, el descuento adicional y el valor a pagar
Funcion  ejercicio15
	//entrada ingresar la cantidad de productos 
	Definir cantidad, precioUnitario, descuentoInicial, total, descuentoAdicional, valorAPagar Como Real;
	
	Escribir "pagos de productos del supermecado";
	Escribir "Ingrese la cantidad de productos comprados: ";
	Leer cantidad;
	//proseso calcular cuanto sera el descuentoAdicional 
	Escribir "Ingrese el precio unitario del producto: ";
	Leer precioUnitario;
	
	Si cantidad > 19 Entonces
		descuentoInicial <- precioUnitario * 0.1;
	Sino
		descuentoInicial <- precioUnitario * 0.2;
	FinSi
	
	total <- cantidad * precioUnitario - descuentoInicial;
	descuentoAdicional <- total * 0.05;
	valorAPagar <- total - descuentoAdicional;
	
	Escribir "Cantidad comprada: ", cantidad;
	Escribir "Precio original por producto: $", precioUnitario;
	Escribir "Descuento inicial: $", descuentoInicial;
	Escribir "Total: $", total;
	Escribir "Descuento adicional: $", descuentoAdicional;
	Escribir "Valor a pagar: $", valorAPagar;
	//presentar el valor a pagar 
FinFuncion


//Se desea realizar una estadistica de los pesos de los alumnos de la UNEMI de acuerdo a la siguiente tabla
//alumnos de menos 40 kg alumnos entre 40 y 50 kg alumnos mas de 50 y menos de 60 kg
//alumnos mas de 60 kg. La entrada de los pesos se terminará cuando se ingrese el valor
//de peso cero. Al final deberá presentar cuantos alumnos hay por rengo de pesos y el promedio de cada rango.
Funcion  ejercicio20 
	Definir peso, alumnosMenos40, alumnosEntre40y50, alumnosEntre50y60, alumnosMas60 Como Entero;
	Definir sumaMenos40, sumaEntre40y50, sumaEntre50y60, sumaMas60 Como Real;
	//entrada definir la cantidad de peso del alumno 
	alumnosMenos40 <- 0;
	alumnosEntre40y50 <- 0;
	alumnosEntre50y60 <- 0;
	alumnosMas60 <- 0;
	sumaMenos40 <- 0;
	sumaEntre40y50 <- 0;
	sumaEntre50y60 <- 0;
	sumaMas60 <- 0;
	
	Escribir "estadística de pesos de alumnos de la UNEMI";
	//proceso calcular el peso de los alumno
	Repetir
		Escribir "Ingrese el peso del alumno (ingrese 0 para terminar): ";
		Leer peso;
		
		Si peso <> 0 Entonces
			Si peso < 40 Entonces
				alumnosMenos40 <- alumnosMenos40 + 1;
				sumaMenos40 <- sumaMenos40 + peso;
			Sino
				Si peso >= 40 y peso < 50 Entonces
					alumnosEntre40y50 <- alumnosEntre40y50 + 1;
					sumaEntre40y50 <- sumaEntre40y50 + peso;
				Sino
					Si peso >= 50 y peso < 60 Entonces
						alumnosEntre50y60 <- alumnosEntre50y60 + 1;
						sumaEntre50y60 <- sumaEntre50y60 + peso;
					Sino
						alumnosMas60 <- alumnosMas60 + 1;
						sumaMas60 <- sumaMas60 + peso;
					FinSi
				FinSi
			FinSi
		FinSi
		
	Hasta Que peso = 0
	
	Escribir "Estadísticas de pesos de los alumnos de la UNEMI:";
	Escribir "Alumnos con menos de 40 kg: ", alumnosMenos40;
	Si alumnosMenos40> 0 Entonces
		Escribir "Promedio de peso en el rango: ", sumaMenos40 / alumnosMenos40;
	FinSi
	Escribir "Alumnos con peso entre 40 y 50 kg: ", alumnosEntre40y50;
	Si alumnosEntre40y50 > 0 Entonces
		Escribir "Promedio de peso en el rango: ", sumaEntre40y50 / alumnosEntre40y50;
	FinSi
	Escribir "Alumnos con peso entre 50 y 60 kg: ", alumnosEntre50y60;
	Si alumnosEntre50y60 > 0 Entonces
		Escribir "Promedio de peso en el rango: ", sumaEntre50y60 / alumnosEntre50y60;
	FinSi
	Escribir "Alumnos con más de 60 kg: ", alumnosMas60;
	Si alumnosMas60 > 0 Entonces
		Escribir "Promedio de peso en el rango: ", sumaMas60 / alumnosMas60;
	FinSi
	//salida presentar el rango de peso 
	
	
FinFuncion


//28) Se requiere un algoritmo para obtener la edad promedio de un grupo de N alumnos.

Funcion  ejercicio28
	//entrada definir el promedio de N alumnos 
	Definir N, sumaEdades Como Entero;	
	Definir edad, contador Como Entero;
	Definir promedio Como Real;
	
	Escribir "Ingrese el número de alumnos: ";
	Leer N;
	//proceso se ingresa el numero de alumnos y luego se realiza en bucle la cantidad hasta la cantidad de N ingresado 
	//luego se muestra cual es el promedio de la edad de los alumnos 
	sumaEdades <- 0;
	contador <- 0;
	
	Mientras contador < N Hacer
		Escribir "Ingrese la edad del alumno ", contador + 1, ": ";
		Leer edad;
		
		sumaEdades <- sumaEdades + edad;
		contador <- contador + 1;
	FinMientras
	
	promedio <- sumaEdades / N;
	
	Escribir "La edad promedio del grupo de alumnos es: ", promedio;
	//salida presentar el promedio de N alumnos
FinFuncion



//Se dispone de las calificaciones de n alumnos del primer semestre de la carrera de software de la unemi. Se tiene la nota final y la asignatura
//('logica','requerimientos','calculos'). Se pide el promedio de cada asignatura y el promedio general de todas las asignaturas de los
//alumnos del primer semestre.
Funcion  ejercicio31
	//entrada N (leer) 
	//definir notaFinal, promedioLogica, promedioRequerimientos, promedioCalculos, promedioGeneral Como Real;
	// sumaLogica, sumaRequerimientos, sumaCalculos Como Real;
	Definir n Como Entero;
	Definir alumno Como Entero;
	Definir notaFinal, promedioLogica, promedioRequerimientos, promedioCalculos, promedioGeneral Como Real;
	Definir sumaLogica, sumaRequerimientos, sumaCalculos Como Real;
	
	Escribir "Promedios de calificaciones del primer semestre";
	Escribir "Ingrese el número de alumnos: ";
	Leer n;
	
	promedioLogica <- 0;
	promedioRequerimientos <- 0;
	promedioCalculos <- 0;
	promedioGeneral <- 0;
	sumaLogica <- 0;
	sumaRequerimientos <- 0;
	sumaCalculos <- 0;
	//Proceso 
	Para alumno <- 1 Hasta n Hacer
		Escribir "Alumno ", alumno;
		Escribir "Ingrese la nota final de Lógica: ";
		Leer notaFinal;
		sumaLogica <- sumaLogica + notaFinal;
		
		Escribir "Ingrese la nota final de Requerimientos: ";
		Leer notaFinal;
		sumaRequerimientos <- sumaRequerimientos + notaFinal;
		
		Escribir "Ingrese la nota final de Cálculos: ";
		Leer notaFinal;
		sumaCalculos <- sumaCalculos + notaFinal;
		
		Escribir "";
	FinPara
	
	promedioLogica <- sumaLogica / n;
	promedioRequerimientos <- sumaRequerimientos / n;
	promedioCalculos <- sumaCalculos / n;
	promedioGeneral <- (promedioLogica + promedioRequerimientos + promedioCalculos) / 3;
	
	Escribir "Promedio de la asignatura Lógica: ", promedioLogica;
	Escribir "Promedio de la asignatura Requerimientos: ", promedioRequerimientos;
	Escribir "Promedio de la asignatura Cálculos: ", promedioCalculos;
	Escribir "Promedio general de todas las asignaturas del primer semestre: ", promedioGeneral;
	
	//salida presentar el promedio general de todas las asignaturas.
	
FinFuncion


//  AREVALO SALAZAR

//  3
//Dado un caracter vocal presentar su respectivo valor ascii
Funcion  ejercicio3
	//ENTRADA
    Definir caracter Como Caracter
    Definir ascii Como Entero
    //PROCESO
    Escribir"Ingrese un caracter vocal:"
    Leer caracter;
    
    Ascii = Asccaracter;
    //SALIDA
    Escribir "El valor ASCII del caracter ", caracter, " es ", ascii;
FinFuncion


//  21
//Escribir un algoritmo que lea cuatro números y determine si el numero 1
//es la mitad del numero 2; Y si el numero 3 es divisor del 4.
Funcion  ejercicio21
	//Entrada
    Definir numero1, numero2, numero3, numero4 Como Entero
    
    Escribir("Ingrese el número 1:")
    Leer numero1;
    
    Escribir("Ingrese el número 2:")
    Leer numero2;
    
    Escribir("Ingrese el número 3:")
    Leer numero3;
    
    Escribir("Ingrese el número 4:")
    Leer numero4;
    
    Si numero1 * 2 = numero2 Entonces
		//Proceso 
        Escribir numero1, " es la mitad de ", numero2;
    Sino
        Escribir numero1, " no es la mitad de ", numero2;
    FinSi
    
    Si numero4 % numero3 = 0 Entonces
		//SALIDA
        Escribir numero3, " es divisor de ", numero4;
    Sino
        Escribir numero3, " no es divisor de ", numero4;
    FinSi
    
FinFuncion


// 24
//Realizar un programa que ingrese un número presentar un mensaje equivalente a los
//nombres de los meses del año
Funcion  ejercicio24
	//ENTRADA
    Definir numero Como Entero
    
    Escribir "Ingrese un número del 1 al 12:" ;
    Leer numero;
    //PROCESO
    Segun numero Hacer
        Caso 1:
            Escribir("Enero")
        Caso 2:
            Escribir("Febrero")
        Caso 3:
            Escribir("Marzo")
        Caso 4:
            Escribir("Abril")
        Caso 5:
            Escribir("Mayo")
        Caso 6:
            Escribir("Junio")
        Caso 7:
            Escribir("Julio")
        Caso 8:
            Escribir("Agosto")
        Caso 9:
            Escribir("Septiembre")
        Caso 10:
            Escribir("Octubre")
        Caso 11:
            Escribir("Noviembre")
        Caso 12:
            Escribir("Diciembre")
        De Otro Modo:
			//SALIDA
            Escribir("El número ingresado no es válido.")
    FinSegun
FinFuncion



// 26 
//Realizar un algoritmo para generar e imprimir los números pares comprendidos entre 0 y
//100
Funcion  ejercicio
	//ENTRADA
    Definir numero Como Entero
    //PROCESO
    Para numero = 0 Hasta 100 Con Paso 2 Hacer
		//SALIDA
        Escribir(numero)
    FinPara
FinFuncion


//  27 
//Realizar un programa que realice la suma sucesiva de 10 números que ingrese por teclado,
//presente el resultado de la suma acumulada.
Funcion  ejercicio34
	//Entrada
    Definir contador, numero, suma Como Entero
    suma = 0
    Escribir("Ingrese 10 números:")
    //PROCESO
    Para contador = 1 Hasta 10 Hacer
        Escribir "Número ", contador, ":"
        Leer numero;
        suma = suma + numero
    FinPara
    //sALIDA
    Escribir "La suma acumulada es: ", suma
FinFuncion



// 34
//Diseñar un algoritmo que lea y presente una serie de números distintos de
//cero. El algoritmo debe terminar con un valor cero que no se debe presentar.
//Finalmente se desea obtener la cantidad y el promedio de los valores distintos
//de cero
Funcion  ejercicio26
	//Proceso
    Definir numero, suma, contador, cantidad Como Entero
    Definir promedio Como Real
    
    suma = 0
    contador = 0
    cantidad = 0
    //Proceso
    Escribir("Ingrese una serie de números distintos de cero. Para terminar, ingrese un cero.")
    
    numero = 1  // Inicializamos la variable con un valor distinto de cero
    
    Mientras numero <> 0 Hacer
        Escribir("Ingrese un número:")
        Leer numero;
        
        Si numero <> 0 Entonces
            suma = suma + numero
            contador = contador + 1
        FinSi
    FinMientras
    
    Si contador > 0 Entonces
        cantidad = contador
        promedio = suma / cantidad
        //Salida
        Escribir "Cantidad de números distintos de cero: ", cantidad;
        Escribir "Promedio de los números distintos de cero: ", promedio;
    Sino
        Escribir("No se ingresaron números distintos de cero.")
    FinSi
FinFuncion



//  2
//Leer un carácter y deducir si este es un numero(0..9) o una vocal(a,e,i,o,u)
Funcion ejercicio2
	// entrada
	Definir n como cadena;
	leer n;
	// Proceso 
	Si n >="0" y n <="9"  Entonces
		Escribir " Aqui esta su numero  ",n;
	SiNo
		si n="a" y n="e" y n="i" y n="o" y n="u" Entonces
			Escribir "aqui esta su vocal  ",n;
		FinSi
	Fin Si
FinFuncion



//  BRAVO REYES

























// Ingresar un numero y determinar si es neutro, positivo o negativo
// entrada: preguntar el numero 
// proceso: verificar si el numero es positivo, negativo o neutro
// sallida: mostrar resultado
SubAlgoritmo ejercicio7
	Definir num Como Entero
	Escribir 'Digite un numero'
	Leer num
	Si num>0 Entonces
		Escribir 'El numero es positivo'
	SiNo
		Si num<0 Entonces
			Escribir 'El nuemro es negativo'
		SiNo
			Escribir 'el numero es neutro'
		FinSi
	FinSi
FinSubAlgoritmo

// Determinar cuanto se debe pagar por x cantidad de lápices,
// considerando que si son más de 1000 el costo es de 1 , caso contrario
// el precio será 1,50
// entrada: pedir el numero de lapizes al ususario
// proceso: mirar la cantidad de lapiz y multiplicarlas por el presio requerido segun el porcentaje de lapizes
// salida: mostrar el preciode la cantidad de lapizes
Funcion  ejercicio8
	Definir lapiz, costo, cantidad Como Real
	Escribir 'Digite la cantidad de lapises: '
	Leer lapiz
	cantidad <- 1
	costo <- 1.50
	Si lapiz>1000 Entonces
		Escribir 'el costo es de: ', lapiz*cantidad
	SiNo
		Escribir 'el costo sera de: ', lapiz*costo
	FinSi
FinFuncion


// El banco XYZ ha decidido aumentar el límite de crédito de las tarjetas de crédito
// de sus clientes, para esto considera que:
// Si su cliente tiene tarjeta tipo 1, el aumento será del 25 MOD .
// Si tiene tipo 2 el aumento será del 35 MOD 
// Si tiene tipo 3, el aumento será del 40 MOD 
// Para cualquier otro tipo será del 50 MOD 
// Realizar un diagrama de flujo que ayude al banco a determinar el nuevo límite
// de crédito que tendrá una persona en su tarjeta
// entrada: digitar el tipo de targeta y el limite del credito actual
// Proceso : 
Funcion  ejercicio18
	Definir tipoTarjeta, aumento, limiteActual, nuevoLimite Como Real
	Escribir 'Ingrese el tipo de tarjeta (1, 2, 3 u otro): '
	Leer tipoTarjeta
	Escribir 'Ingrese el límite de crédito actual: '
	Leer limiteActual
	Si tipoTarjeta=1 Entonces
		aumento <- limiteActual*0.25
	SiNo
		Si tipoTarjeta=2 Entonces
			aumento <- limiteActual*0.35
		SiNo
			Si tipoTarjeta=3 Entonces
				aumento <- limiteActual*0.40
			SiNo
				aumento <- limiteActual*0.50
			FinSi
		FinSi
	FinSi
	nuevoLimite <- limiteActual+aumento
	Escribir 'El nuevo límite de crédito es: ', nuevoLimite
FinFuncion


// Realizar un programa que ingrese un número presentar un mensaje equivalente a los días
// de la semana.
Funcion  ejercicio23
	Definir num Como Entero
	Escribir 'Ingrese un número del 1 al 7: '
	Leer num
	Segun num Hacer
		1:
			Escribir 'Lunes'
		2:
			Escribir 'Martes'
		3:
			Escribir 'Miércoles'
		4:
			Escribir 'Jueves'
		5:
			Escribir 'Viernes'
		6:
			Escribir 'Sábado'
		7:
			Escribir 'Domingo'
		De Otro Modo:
			Escribir 'Número inválido'
	FinSegun
FinFuncion


// Se requiere un algoritmo para obtener la estatura promedio de un grupo de personas, cuyo
// número de personas se desconoce, el ciclo debe efectuarse siempre y cuando se tenga una
// estatura registrada
//entrada: pedir el numer de personas y las estaturas 
//proceso: cuando el interador se comienza a repetir la cantidad de veces digitada
//y luego se suma cero mas la estatura digitada y se repite hasta que termine la condicion 
//salida: se divide la suma de la estatura por el numero de personas 

Funcion  ejercicio25
	Definir x, num_p Como entero
	definir estatura, suma Como Real
	
	x <- 1
	suma <- 0
	
	Escribir 'digite el total de personas: '
	leer num_p
	
	mientras x <= num_p Hacer
		Escribir 'digite la estatura: '
		leer estatura
		suma <- suma + estatura
		x <- x + 1
	FinMientras
	
	Escribir 'la estatura promedio de todo el grupo es: ',suma/num_p
	
FinFuncion

//Una empresa tiene el registro de las horas y el valor hora que trabaja diariamente un
//empleado durante los 20 días del mes. Requiere determinar el total de éstas, así como el sueldo
//que recibirá por las horas trabajadas. Realizar el algoritmo que resuelva este problema
Funcion ejercicio29
	Definir totalHoras, diasTrabajados, sueldoTotal, dia, horasTrabajadas Como Real
	Definir valorHora Como Real
	totalHoras <- 0
	sueldoTotal <- 0
	diasTrabajados <- 0
	
	Para dia <- 1 Hasta 20 Hacer
		Escribir "Ingrese las horas trabajadas en el día ", dia, ":"
		Leer horasTrabajadas
		
		totalHoras <- totalHoras + horasTrabajadas
		diasTrabajados <- diasTrabajados + 1
	Fin Para
	
	Escribir "Ingrese el valor por hora: "
	Leer valorHora
	
	sueldoTotal <- totalHoras * valorHora
	
	Escribir "El total de horas trabajadas es:", totalHoras
	Escribir "El sueldo a recibir es:", sueldoTotal
FinFuncion
//Dado una serie de n cantidad de viajes dado cada pasaje y su recorrido determinar
//el precio de cada pasaje segun el recorrido en kilometros
//si el recorrido es hasta 100 km el pasaje no tiene incremento
//si el reccorido es mas de 100 km el pasaje tiene un incremento
//del 20%. Presentar el promedio y la cantidad de pasajes con recorrido//hasta 100km y mayor de 100 km
Funcion ejercicio33
	Definir cantidad, cantidadPasajes, cantidadPasajesHasta100, cantidadPasajesMas100 Como Real
	Definir suma, sumaPrecios, recorrido, promedioPrecios, i, precioPasaje Como Real
	cantidadPasajes <- 0
	sumaPrecios <- 0
	cantidadPasajesHasta100 <- 0
	cantidadPasajesMas100 <- 0
	
	Escribir "Ingrese la cantidad de pasajes: "
	Leer cantidadPasajes
	
	Para i <- 1 Hasta cantidadPasajes Hacer
		Escribir "Ingrese el recorrido en kilómetros del pasaje ", i, ":"
		Leer recorrido
		
		Si recorrido <= 100 Entonces
			precioPasaje <- recorrido
			cantidadPasajesHasta100 <- cantidadPasajesHasta100 + 1
		Sino
			precioPasaje <- recorrido * 1.20
			cantidadPasajesMas100 <- cantidadPasajesMas100 + 1
		Fin Si
		
		sumaPrecios <- sumaPrecios + precioPasaje
	Fin Para
	
	promedioPrecios <- sumaPrecios / cantidadPasajes
	
	Escribir "El promedio de precios es:", promedioPrecios
	Escribir "La cantidad de pasajes con recorrido hasta 100 km es:", cantidadPasajesHasta100
	Escribir "La cantidad de pasajes con recorrido mayor a 100 km es:", cantidadPasajesMas100
	FinFuncion



Proceso pseint_tarea
	ejercicio12()
FinProceso