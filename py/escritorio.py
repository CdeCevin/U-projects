import os 
from os import mkdir

# Se define la direccion de donde se saca el archivo
escritorios = [ "C:\\Users\Public\\Desktop\\","C:\\Users\\Koliv\\OneDrive\\Escritorio\\"]

try:
    os.makedirs("C:/Users/Koliv/OneDrive/Documentos/Escritorio Ordenado")
        #Se crean las carpetas donde guardaremos los archivos
    carpetitas = ["Accesos Directos","pdf","xlsx","docx","Comprimidos","Pptx","C","Py","Imagenes","Pl","Exe","Minecraft Mods","Ensamblador","Carpetas","otros"]
    for i in range(len(carpetitas)):
            os.makedirs("C:/Users/Koliv/OneDrive/Documentos/Escritorio Ordenado/"+carpetitas[i])
            i = i+1
except: FileExistsError

pdfFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\pdf\\"
xlsxFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\xlsx\\"
docxFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\docx\\"
comprimidos = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\comprimidos\\"
pptxFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\pptx\\"
cFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\c\\"
pyFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\Escritorio Ordenado\\py\\"
imagenes = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\imagenes\\"
plFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\pl\\"
exeFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\exe\\"
jarFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\Minecraft mods\\"
ensaFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\Ensamblador\\"
adFolder    = "C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\Accesos Directos\\"
carpetasFolder="C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\Carpetas\\"
carpetasFolder="C:\\Users\\Koliv\\OneDrive\\Documentos\\Escritorio Ordenado\\otros\\"



if __name__ == "__main__":
    i = 0
    for i in range(len(escritorios)):
        for filename in os.listdir(escritorios[i]):
                name, extension = os.path.splitext(escritorios[i] + filename)

                # Para mover los archivos con extencion .pdf
                try:
                    if extension in [".pdf"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (pdfFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError
                # Para mover los archivos con extencion .ppt y .pptx
                try:  
                    if extension in [".pptx",".ppt"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (pptxFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                # Para mover los archivos con extencion .xlsx y .csv
                try: 
                    if extension in [".xlsx",".csv"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (xlsxFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError
                # Para mover los archivos con extencion .docx
                try: 
                    if extension in [".docx",".doc"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (docxFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                # Para mover los archivos con extencion .zip y .rar
                try: 
                    if extension in [".zip",".rar"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (comprimidos+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                # Para mover los archivos con extencion .c
                try: 
                    if extension in [".c"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (cFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                try: 
                    if extension in [".pl",".pl~"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (plFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                try:
                    if extension in [".exe"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (exeFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                try:
                    if extension in [".jar"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (jarFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError
                # Para mover los archivos con extencion .py

                try: 
                    if extension in [".py"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (pyFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError
                
                try: 
                    if extension in [".asm"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (ensaFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                try:
                # Para mover los archivos con extencion .jpg , .jpeg y .png
                    if extension in [".jpg",".jpeg",".png"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (imagenes+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                try: 
                    if extension in [".lnk",".url"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (adFolder+ filename)
                        os.replace(archi,envia)
                except: FileNotFoundError

                
                try: 
                    if extension in ["",".fi"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (carpetasFolder+ filename)
                        os.replace(archi,envia) 
                except: FileNotFoundError

                else: 
                    try:
                        if extension in []:
                            archi  = (escritorios[i]+ filename)
                            envia = (carpetasFolder+ filename)
                            os.replace(archi,envia) 
                    except: FileNotFoundError
        
        i = i +  1


          
        

print("Listo socio, carpetitas ordenadas")
    
 


# Se define la direcciones de donde se guardaran los archivos 

