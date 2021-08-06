# MimirHq Massive Testcases Uploader

## V1.0
## Es posible subir los testcases por partes

## Requerimientos

`python >3.8`

Crear un *virtualenv*, activarlo e instalar las librerías necesarias:

`pip install -r requirements.txt`

## Uso

### Preparación

En primer lugar, es importante especificar el formato que deben seguir los archivos para usar la herramienta:

En el mismo directorio dónde se correrá el código, deben estar los testcases en el siguiente formato de directorio:

```
uploader.py
files/
    part_1/
        1/
            input.txt
            main.py
            ...
        2/
            input.txt
            main.py
            ...
        ...
        50/
            input.txt
            main.py
            ...
        ...
```

En su version preliminar, los siguientes pasos son necesarios

1. Es necesario eliminar casi todos los testcases de lo(s) ejercicio(s) a subir. Sólo deben quedar el testcase **Público #1** y **#Secreto #1**, los cuales deben estar correctamente configurados.

2. Crear un archivo llamado `.env` que tenga el mismo formato que [example.env](./example.env), en el cual deberán poner sus credenciales de mimir. Puden ignorar el resto hasta el siguiente paso.

3. Copiar los links de los testcases **Público #1** y **#Secreto #1**, y pegarlos en el `.env` bajo las variables `URL_PART_1_PUBLIC` y `URL_PART_1_SECRET` respectivamente. 

4. Especificar qué archivos se van a subir para la parte respectiva, esto se hace bajo la variable `FILES_PART_1`, con los nombres de los archivos separados por `;`. i.e. `main.py;otro_archivo.txt`. 

**nota:** `input.txt` se subirá por default, y es necesario que esté en el directorio. En caso de existir un `main.py`, este **quedará como el archivo a ejecutar en el testcase**, reemplazando al default (`code.py`)

En caso de tener solo una parte, pueden omitir el resto de [example.env](./example.env). En caso de subir mas partes, deben especificar los links y archivos de cada parte.

Es importante destacar que el nombre y enumeracion de las partes no tiene ninguna relacion con los de Mimir directamente, y lo que manda es a qué testcases estan apuntando los links, y los archivos bajo el directorio correspondiente de cada parte.

### Hardcodeos temporales de la v1.0

1. Es necesario que hayan (a lo menos) 50 testcases bajo la parte a subir. Los primeros 25 se subirán en modo público, y los siguientes 25 en modo secreto.

2. Los ajustes y configuraciones de los testcases dependerán del testcase entregado a través del link. Es decir, si es que el testcase Secreto #1 pasado no tiene las configuraciones necesarias para ser secreto, los 25 secretos generados estarán igual de mal.

3. El uploader sube **una parte por ejecución**, recibiendo como argumento la parte a subir. Por eso se entrega [run.ps1](`./run.ps1`)` que es un hardcodeo para subir varias partes con una ejecución de la línea de comandos (en powershell).

4. Cuando se le pasa como argumento una parte, el código usará ese numero para determinar el directorio de los testcases y las variables del `.env` a utilizar. i.e. Si se ejecuta `python uploader.py 3`, se utilizarán los archivos bajo `files/part_3/` y las variables `FILES_PART_3`, `URL_PART_3_PUBLIC` y `URL_PART_3_SECRET`.

## Autores

| Nombre | Github | Correo |
| --- | --- | --- |
| Ignacio Bascuñán ⭐| [@nachobascar](https://github.com/nachobascar)  | nachobascar@uc.cl |
| Alfonso Irarrázaval | [@auirarrazaval](https://github.com/auirarrazaval) | auirarrazaval@uc.cl |
| Ignacio Porte | [@IgnacioPorte](https://github.com/IgnacioPorte) | ignacio.porte@uc.cl | 

Made with ❤️ 4 IIC1103
