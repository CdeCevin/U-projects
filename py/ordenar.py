
import os

# Se define la direccion de donde se saca el archivo

descargasFolder = "C:\\Users\\matia\\Downloads\\"

# Se define la direcciones de donde se guardaran los archivos

pdfFolder = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\pdf\\"
xlsxFolder = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\xlsx\\"
docxFolder = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\docx\\"
comprimidos = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\comprimidos\\"
pptxFolder = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\pptx\\"
cFolder = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\c\\"
pyFolder = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\py\\"
imagenes = "C:\\Users\\matia\\OneDrive\\Escritorio\\Cosas Descargas\\imagenes\\"

if __name__ == "__main__":
    for filename in os.listdir(descargasFolder):
        name, extension = os.path.splitext(descargasFolder + filename)
        
        # Para mover los archivos con extencion .pdf
        if extension in [".pdf"]:
            archi  = (descargasFolder+ filename)
            envia = (pdfFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .ppt y .pptx
        if extension in [".pptx","ppt"]:
            archi  = (descargasFolder+ filename)
            envia = (pptxFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .xlsx y .csv
        if extension in [".xlsx",".csv"]:
            archi  = (descargasFolder+ filename)
            envia = (xlsxFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .docx
        if extension in [".docx",".doc"]:
            archi  = (descargasFolder+ filename)
            envia = (docxFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .zip y .rar
        if extension in [".zip",".rar"]:
            archi  = (descargasFolder+ filename)
            envia = (comprimidos+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .c
        if extension in [".c"]:
            archi  = (descargasFolder+ filename)
            envia = (cFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .py
        if extension in [".py"]:
            archi  = (descargasFolder+ filename)
            envia = (pyFolder+ filename)
            os.replace(archi,envia)

        # Para mover los archivos con extencion .jpg , .jpeg y .png
        if extension in [".jpg",".jpeg",".png"]:
            archi  = (descargasFolder+ filename)
            envia = (imagenes+ filename)
            os.replace(archi,envia)