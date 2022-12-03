import os 
from os import mkdir

# Se define la direccion de donde se saca el archivo
escritorios = [ "C:\\Users\\Public\\Desktop\\","C:\\Users\\matia\\OneDrive\\Escritorio\\"]

try:
    os.makedirs("C:/Users/matia/OneDrive/Documentos/Escritorio Ordenado")
except: FileExistsError

try:
    
        #Se crean las carpetas donde guardaremos los archivos
    carpetitas = ["Accesos Directos","Web","Matlab","Maxima","pdf","xlsx","docx","Comprimidos","Pptx","C","Py","Imagenes","Pl","Exe","Minecraft Mods","Ensamblador","Carpetas","txt","instaladores","r archivos","ruby archivos","videos Porno","musica"]
    for i in range(len(carpetitas)):
            os.makedirs("C:/Users/matia/OneDrive/Documentos/Escritorio Ordenado/"+carpetitas[i])
            i = i+1
except: FileExistsError


# Se define la direcciones de donde se guardaran los archivos 

pdfFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\pdf\\"
xlsxFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\xlsx\\"
docxFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\docx\\"
comprimidos = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\comprimidos\\"
pptxFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\pptx\\"
cFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\c\\"
pyFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\py\\"
imagenes = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\imagenes\\"
plFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\pl\\"
exeFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\exe\\"
jarFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\Minecraft mods\\"
ensaFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\Ensamblador\\"
adFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\Accesos Directos\\"
carpetasFolder ="C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\Carpetas\\"
txtFolder ="C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\txt\\"
otrosFolder ="C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\otros\\"
installFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\instaladores\\"
rFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\r archivos\\"
rubyFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\ruby archivos\\"
videosForlder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\videos Porno\\"
matlabFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\Matlab\\"
maximaFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\Maxima\\"
musicaFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\musica\\"
webFolder = "C:\\Users\\matia\\OneDrive\\Documentos\\Escritorio Ordenado\\Web\\"
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
                        continue
                except: FileNotFoundError
                # Para mover los archivos con extencion .ppt y .pptx
                try:  
                    if extension in [".pptx","ppt"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (pptxFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Para mover los archivos con extencion .xlsx y .csv
                try: 
                    if extension in [".xlsx",".csv",".xls"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (xlsxFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError
                # Para mover los archivos con extencion .docx
                try: 
                    if extension in [".docx",".doc"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (docxFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Para mover los archivos con extencion .zip y .rar
                try: 
                    if extension in [".zip",".rar",".7z"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (comprimidos+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Para mover los archivos con extencion .c
                try: 
                    if extension in [".c",".cpp"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (cFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Para los archivos de prolog

                try: 
                    if extension in [".pl",".pl~"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (plFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Para los archivos ejecutables, mantener comentado a menos que se requiera de su función

                # try:
                #     if extension in [".exe"]:
                #         archi  = (escritorios[i]+ filename)
                #         envia = (exeFolder+ filename)
                #         os.replace(archi,envia)
                        # continue
                # except: FileNotFoundError

                try:
                    if extension in [".msi"]:
                        archi  = (escritorios[i] + filename)
                        envia = (installFolder + filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Mod's del Minecraft

                try:
                    if extension in [".jar"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (jarFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                try:
                    if extension in [".m",".asv"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (matlabFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Para mover los archivos de python

                try: 
                    if extension in [".py"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (pyFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError
                
                # Archivos de assembler

                try: 
                    if extension in [".asm"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (ensaFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                try:

                # Para mover los archivos de imagenes

                    if extension in [".jpg",".jpeg",".png",".PNG",".JPG"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (imagenes+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                try:

                # Para mover los archivos de imagenes

                    if extension in [".wxmx"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (maximaFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                try:

                # Para mover los archivos de imagenes

                    if extension in [".mp4",".MP4"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (videosForlder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                try:

                # Para mover los archivos de imagenes

                    if extension in [".mp3",".MP3",".m4a"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (musicaFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                try:

                # Para mover los archivos de imagenes

                    if extension in [".r"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (rFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                try:

                # Para mover los archivos de imagenes

                    if extension in [".rb"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (rubyFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError+

                try:

                # Para mover los archivos de imagenes

                    if extension in [".html",".css",".php",".js"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (webFolder+ filename)
                        os.replace(archi,envia)
                        continue
                except: FileNotFoundError

                # Esto es para guardar los archivos de acceso  Directo, tambien dejar comentado a menos que se requiera

                # try: 
                #     if extension in [".lnk",".url"]:
                #         archi  = (escritorios[i]+ filename)
                #         envia = (adFolder+ filename)
                #         os.replace(archi,envia)
                        # continue
                # except: FileNotFoundError

                # Esto es para las carpetas y carpetas medias raras
                try: 
                    if extension in ["",".fi"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (carpetasFolder+ filename)
                        os.replace(archi,envia) 
                        continue
                except: FileNotFoundError

                # Esto es para guardar los txt
                try: 
                    if extension in [".txt"]:
                        archi  = (escritorios[i]+ filename)
                        envia = (txtFolder + filename)
                        os.replace(archi,envia) 
                        continue
                except: FileNotFoundError

                # Cualquier otros archivos

                try:    
                    archi = (escritorios[i]+ filename)
                    envia = (otrosFolder + filename)
                    os.replace(archi,envia) 
                except: FileNotFoundError
        i = i +  1


          
        

print("Listo socio, carpetitas ordenadas")
    
 



