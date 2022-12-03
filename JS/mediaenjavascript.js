//El codigo lee el archivo csv y calcula la media de las edades.


//Funcion que lee el archivo
function leerarchivo(e) {
    const archivo = e.target.files[0]
    if (!archivo){
        return;
    }
    const lector = new FileReader();
    lector.onload = (e) => {
        media(e.target.result);
    };
    lector.readAsText(archivo);

}

//Tiene como entrada la lectura del archivo y calcula la media
function media(data){

    //Separa y guarda todas las edades en datos
    const todaslasfilas = data.split(/\r?\n|\r/);
    let datos = [];

    for(fila in todaslasfilas){
        let division = todaslasfilas[fila].split(",");
        datos.push(parseInt(division[1],10));
    }

    //Inicio del timepo
    console.time();

    //Algoritmo de media
    var suma=0,cantidad=0;
    for(edad in datos){
        
        suma += datos[edad];
        cantidad++;
    }

    
    let media = suma/cantidad;

    //Fin e impresion del temporizador //en milisegundos
    console.timeEnd();

    console.log("La media de edad es de: "+ media + " años");
    console.log("La suma de todas las edades es de: "+ suma +" años");
    console.log("El numero de datos analizados son de: "+cantidad);
}

console.log("hola")

document.querySelector('#archivo')
    .addEventListener('change', leerarchivo, false);