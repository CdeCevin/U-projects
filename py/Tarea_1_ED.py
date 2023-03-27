import csv

def abrir(op):
    filename1 = 'name.tsv'
    filename2 = 'title.tsv'
    with open(filename1, newline='', encoding='ISO-8859-1') as csvfile:
        csv_reader = csv.reader(csvfile, delimiter='\t')
        tokens = {}
        names = []
        name_count = {}
        for row in csv_reader:
            name = row[1]
            movie_ids = row[5].split(',')
            profesion = row[4].split(',')
            if 'actor' in profesion or 'actress' in profesion:
                if name.lower() in name_count:
                    name_count[name.lower()] += 1
                    name_key = f"{name.lower()}_{name_count[name.lower()]}"
                else:
                    name_count[name.lower()] = 1
                    name_key = name.lower()
                tokens[name_key] = movie_ids
                names.append(name_key)

    with open(filename2, newline='', encoding='ISO-8859-1') as csvfile:
        csv_reader = csv.reader(csvfile, delimiter='\t')
        movies = {}
        for row in csv_reader:
            tipo = row[1]
            if(op!=2):
                if 'movie'in tipo:
                    movie_id = row[0]
                    movie_name = row[2]
                    movies[movie_id] = movie_name
            else:
                movie_id = row[0]
                movie_name = row[2]
                movies[movie_id] = movie_name
    return tokens, movies


def actor_movie(tokens, movies):
    name_input = input('Introduce el nombre: ').lower()
    encontrar = False
    for name_key in tokens:
        if name_key.startswith(name_input):
            encontrar = True
            print('Los nombres de películas para', name_key.title(), 'son:')
            for movie_id in tokens[name_key]:
                if movie_id in movies:
                    print('-',movies[movie_id])
    if not encontrar:
        print('No se encontró el nombre',name_input.title())

def buscar_titulo():
    name_input = input('Introduce el nombre del titulo: ').lower()
    clave_encontrada = None
    for clave, valor in movies.items():
        if valor.lower() == name_input:
            clave_encontrada = clave
            break
    if clave_encontrada is not None:
        print('Se ha encontrado: ',movies[clave_encontrada])
        otro(movies,name_input)
    else:
        print('No se ha encontrado: ',name_input)
        otro(movies,name_input)

def otro(movies, name_input):
    buscar = set(name_input.lower().split())
    resultados = {}
    for movie_id, movie_name in movies.items():
        movie_name_words = set(movie_name.lower().split())
        common_words = buscar & movie_name_words
        similitud = len(common_words)
        if similitud > 0:
            resultados[movie_id] = similitud
    if resultados:
        print('Otras busquedas:')
        resultados_ordenados = sorted(resultados.items(), key=lambda x: x[1], reverse=True)
        contador = 0
        for movie_id, similitud in resultados_ordenados:
            if contador >= 5:
                break
            print('-', movies[movie_id])
            contador += 1
    else:
        print('No se encontraron películas')

def indice_invertido():
    indice = {}
    for titulo in movies.values():
        palabras = titulo.split()
        for palabra in palabras:
            if palabra not in indice:
                indice[palabra] = []
            indice[palabra].append(titulo)
    palabra = input('Ingrese la palabra a buscar: ').title()     
    try:
        print(indice[palabra])
    except KeyError: print('No se ha encontrado"',palabra.title(),'"' ) 
    


if __name__=='__main__':
    print('1. Buscar Actor')
    print('2. Buscar Titulo')
    print('3. Ver indice invertido')
    entrada = int(input('Ingrese una opcion: '))
    if(entrada == 1):
        print('Espere, se estan cargando los archivos...')
        tokens,movies=abrir(entrada)
        print('Archivos cargados con exito')
        actor_movie(tokens,movies)
    elif(entrada==2):
        print('Espere, se estan cargando los archivos...')
        tokens,movies=abrir(entrada)
        print('Archivos cargados con exito')
        buscar_titulo()
 
    elif(entrada==3):
        print('Espere, se estan cargando los archivos...')
        tokens,movies=abrir(entrada)
        print('Archivos cargados con exito')
        indice_invertido()
    else:
        print('No se ha ingresado una opción correcta.')



    