# Real mode & protected mode

## UEFI & coreboot
- ¿Qué es la ***UEFI***?
    - La UEFI (Unified Extensible Firmware Interface) es un tipo de BIOS moderno. Es una interfaz entre el sistema operativo y el firmware, que puede soportar sistemas de 32 y 64 bits y un entorno previo al booteo del sistema operativo mucho más amigable ya que incluye una interfaz gráfica, soporte para mouse e incluso animaciones. Su programación es mucho más fácil ya que ofrece soporte para el lenguaje `C`. Una de sus mayores ventajas frente al BIOS es que puede bootear discos con particiones mayores a 2TB, haciendo uso de tablas de partición GPT. Posee una shell para el diagnóstico y búsqueda de errores. Además, la UEFI ofrece un modo de inicio seguro, el cual ayuda a detener posible software malicioso.
- ¿Cómo se puede usar la UEFI?
    - Para acceder a la UEFI se debe verificar cuál tecla ha sido asignada a nuestro sistema para entrar a modo UEFI, y presionarla durante el proceso de ***Power On Self Test*** *(POST)* antes de iniciar el sistema operativo.
- Mencionar una función de la UEFI a la que podría llamar.
    - Con respecto a los comandos ejecutables desde la EFI shell, se halló [una tabla](https://docstore.mik.ua/manuals/hp-ux/en/5991-1247B/ch04s13.html) muy completa con varios comandos y sus descripciones. Hay comandos relacionados al booteo desde una partición particular, otros relacionados a la obtención y modificación de información de las particiones, otros para manejar dispositivos y drivers, y muchas otras funcionalidades.
    - Por otro lado, también es posible desarollar software para UEFI gracias a la librería *gnu-efi*, la cual provee al programador una serie de funciones y estructuras para hacer menos tediosa la labor del desarrollo de software de tan bajo nivel. [Aquí](https://www.rodsbooks.com/efi-programming/hello.html) se puede consultar un ejemplo de creación, compilación y ejecución de un programa "hello world" para UEFI.
- Mencionar casos de *bugs* de UEFI que puedan ser explotados.
- ¿Qué es el ***Converged Security and Management Engine*** *(CSME)*?
- ¿Qué es la ***The Intel Management Engine BIOS Extension*** *(Intel MEBx)*?
- ¿Qué es el ***coreboot***?
- ¿Qué productos incorporan el coreboot?
- ¿Cuáles son las ventajas de la utilización del coreboot?

## Linker
- ¿Qué es un ***linker***?
- ¿Qué hace el linker?
- ¿Qué es la dirección que aparece en el script del linker?
- ¿Por qué es necesaria esta dirección?
- Compare la salida de `objdump` con `hd` y verifique dónde fue colocado el programa dentro de la imagen.
- Grabar la imagen en un pendrive, probarla en una PC y subir una foto.
- ¿Para qué se utiliza la opción `--oformat binary` en el linker?

## Protected mode
- Desarrollar un código en assembly que pueda pasar a modo protegido (sin macros).
- ¿Cómo sería un programa que tenga dos descriptores de memoria diferentes: uno para cada segmento (código y datos) en espacios de memoria diferenciados? No es necesario implementarlo.
- Cambiar los bits de acceso del segmento de datos para que sea de solo lectura e intentar escribir. ¿Qué sucede?
- ¿Qué debería suceder a continuación? Verificarlo con ***gdb***.
- En modo protegido: ¿con qué valor se cargan los registros de segmento?
- ¿Por qué los registros se cargan con estos valores?