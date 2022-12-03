import os

# Se define la direccion de donde se saca el archivo

descargasFolder = "C:\\Users\\Koliv\\Downloads\\"


# Se define la direcciones de donde se guardaran los archivos

pdfFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\pdf\\"
xlsxFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\xlsx\\"
docxFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\docx\\"
comprimidos = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\comprimidos\\"
pptxFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\pptx\\"
cFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\c\\"
pyFolder = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\py\\"
imagenes = "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\imagenes\\"
plFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\pl\\"
exeFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\exe\\"
jarFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\Minecraft mods\\"
ensaFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\Ensamblador\\"
otroFolder= "C:\\Users\\Koliv\\OneDrive\\Documentos\\weaitas\\Cosas Descargas\\otro\\"

if __name__ == "__main__":
    for filename in os.listdir(descargasFolder):
        name, extension = os.path.splitext(descargasFolder + filename)
        # Para mover los archivos con extencion .pdf
        if extension in [".pdf"]:
            archi  = (descargasFolder+ filename)
            envia = (pdfFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .ppt y .pptx
        elif extension in [".pptx","ppt"]:
            archi  = (descargasFolder+ filename)
            envia = (pptxFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .xlsx y .csv
        elif extension in [".xlsx",".csv"]:
            archi  = (descargasFolder+ filename)
            envia = (xlsxFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .docx
        elif extension in [".docx",".doc"]:
            archi  = (descargasFolder+ filename)
            envia = (docxFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .zip y .rar
        elif extension in [".zip",".rar"]:
            archi  = (descargasFolder+ filename)
            envia = (comprimidos+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .c
        elif extension in [".c"]:
            archi  = (descargasFolder+ filename)
            envia = (cFolder+ filename)
            os.replace(archi,envia)

        elif extension in [".pl",".pl~"]:
            archi  = (descargasFolder+ filename)
            envia = (plFolder+ filename)
            os.replace(archi,envia)

        elif extension in [".exe"]:
            archi  = (descargasFolder+ filename)
            envia = (exeFolder+ filename)
            os.replace(archi,envia)
        elif extension in [".jar"]:
            archi  = (descargasFolder+ filename)
            envia = (jarFolder+ filename)
            os.replace(archi,envia)
        # Para mover los archivos con extencion .py
        elif extension in [".py"]:
            archi  = (descargasFolder+ filename)
            envia = (pyFolder+ filename)
            os.replace(archi,envia)

        elif extension in [".asm"]:
            archi  = (descargasFolder+ filename)
            envia = (ensaFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .jpg , .jpeg y .png
        elif extension in [".jpg",".jpeg",".png"]:
            archi  = (descargasFolder+ filename)
            envia = (imagenes+ filename)
            os.replace(archi,envia)
        elif extension in [".lnk"]:
            archi  = (descargasFolder+ filename)
            envia = (imagenes+ filename)
            os.replace(archi,envia)
        elif extension in [".url"]:
            archi  = (descargasFolder+ filename)
            envia = (imagenes+ filename)
            os.replace(archi,envia)
        else:
            try:
                    archi  = (descargasFolder+ filename)
                    envia = (otroFolder+ filename)
                    os.replace(archi,envia)
            except: FileNotFoundError

print("Listo socio, carpetitas ordenadas")