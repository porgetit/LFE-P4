# LFE-P4
Ejercicio del laboratorio de fundamentos de electrónica, práctica 4.
# Documentación del Ejercicio de Laboratorio en VHDL

Este ejercicio de laboratorio tuvo como objetivo introducir a los estudiantes al uso del lenguaje VHDL y al diseño de circuitos lógicos. Se planteó el reto de implementar una función lógica y probar su funcionamiento mediante la simulación en la plataforma **EDA Playground** usando **GHDL** como simulador. La entidad principal de la simulación es `logic_function_tb`, y se utilizaron tres archivos VHDL para lograr el objetivo: uno para implementar la función lógica en forma de **POS** (Producto de Sumas), otro para la implementación en forma de **SOP** (Suma de Productos) y un banco de pruebas (testbench) para verificar el comportamiento del circuito.

---

## Descripción de los Archivos

### 1. Archivo: `pos.vhd`

**Objetivo:**  
Implementar la función lógica utilizando la forma de **Producto de Sumas (POS)**.

**Detalles:**
- **Estructura del código:**  
  El archivo contiene la definición de una entidad y su correspondiente arquitectura que implementa la función lógica en formato POS. La implementación se centra en la utilización de puertas lógicas y expresiones booleanas que resultan en la combinación de variables de entrada para obtener la salida deseada.
  
- **Aspectos importantes:**  
  - La función POS es especialmente útil cuando se requiere minimizar la complejidad del circuito en términos de puertas lógicas para ciertas aplicaciones.
  - Se definieron las señales de entrada y salida adecuadamente para facilitar su conexión con el testbench.

**Espacio para imagen: EPWave de POS**  
![EPWave de POS](./imgs/POS%20-%20EDA%20Playground.png)

---

### 2. Archivo: `sop.vhd`

**Objetivo:**  
Implementar la función lógica utilizando la forma de **Suma de Productos (SOP)**.

**Detalles:**
- **Estructura del código:**  
  Al igual que en el archivo anterior, se define una entidad y su arquitectura. En este caso, la función se implementa en formato SOP, lo que implica una representación en la que se suman diferentes productos lógicos para formar la salida.
  
- **Aspectos importantes:**  
  - La técnica SOP es comúnmente utilizada en la síntesis lógica debido a su sencillez y eficiencia en el diseño de circuitos combinacionales.
  - El código está organizado de manera que se facilite la comprensión de cada término lógico que compone la función.

**Espacio para imagen: EPWave de SOP**  
![EPWave de SOP](./imgs/SOP%20-%20EDA%20Playground.png)

---

### 3. Archivo: `testBench.vhd`

**Objetivo:**  
Probar y verificar el funcionamiento de las implementaciones lógicas (POS y SOP) utilizando una simulación.

**Detalles:**
- **Estructura del código:**  
  Este archivo define la entidad de testbench, en la que se instancian las implementaciones de la función lógica y se generan estímulos de prueba para validar su comportamiento.
  
- **Aspectos importantes:**  
  - La top entity del testbench es `logic_function_tb`, lo que permite que GHDL ejecute la simulación correctamente.
  - Se incluyeron casos de prueba que cubren todas las combinaciones de entradas necesarias para asegurar que ambas implementaciones (POS y SOP) funcionan según lo esperado.
  - El banco de pruebas también puede incluir señales de tiempo y observaciones de las salidas para facilitar la interpretación de los resultados en la simulación.

---

## Ejecución en EDA Playground

- **Lenguaje Utilizado:** VHDL  
- **Plataforma:** EDA Playground  
- **Simulador:** GHDL  
- **Entidad Principal (Top Entity):** `logic_function_tb`

El código se ejecutó satisfactoriamente en EDA Playground, utilizando GHDL como simulador. La simulación permitió observar el comportamiento de la función lógica tanto en su implementación POS como en su implementación SOP, validando así la corrección y eficiencia del diseño.

---

## Conclusión

Este ejercicio permitió a los participantes:
- Familiarizarse con el lenguaje VHDL y sus conceptos básicos.
- Entender y diferenciar dos formas fundamentales de implementar funciones lógicas: POS y SOP.
- Aprender a estructurar y simular un circuito lógico en una plataforma de diseño digital.
- Aplicar técnicas de verificación mediante la creación de un banco de pruebas que garantice el correcto funcionamiento del circuito.

Para futuras mejoras, se pueden considerar implementaciones adicionales o la optimización del circuito a nivel de síntesis, así como la integración de más casos de prueba para robustecer la verificación.