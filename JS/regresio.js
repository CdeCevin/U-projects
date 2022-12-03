//Recibe una base de datos en CSV y devuelve una grafica con su regresion polinomial
//Código hecho por el team Illuminati

const PolynomialRegression = require('ml-regression-polynomial');
const fs = require('fs');
//var plotly = require('plotly')("Linkpion", "Xis4X7YEXPhORJejQdON");

//Lectura de archivo
function leerarchivo(e) {
    const datos = fs.readFileSync(e).toString().split("\n");
    let resultado=[];
    
    for(index in datos){
        let anadir = datos[index].split(",");
        anadir[0] = parseFloat(anadir[0]);
        anadir[1] = parseFloat(anadir[1]);
        resultado.push(anadir);
    }

    return resultado;

}

//Regresion polinomial
function regresion_poly(datos) {

    let x = [];
    let y = [];

    //Se añaden los datos a 2 listas x e y
    for(index in datos){
        x.push(datos[index][0]);
        y.push(datos[index][1]);
    }
    x.pop();
    y.pop();

    const degree = 15;
    
    //comienzo del tiempo
    console.time();
    //Se generan un objeto con la regresion
    const regression = new PolynomialRegression(x, y, degree);

    //Se guardan los coeficientes de la regresion
    var coeficientes = regression.coefficients; // Prints the coefficients in increasing order of power (from 0 to degree).

    //Fin del tiempo
    console.timeEnd();

    console.log(coeficientes);

    //graficar(x,y,coeficientes);

}

/*
//Valores de prueba
function ejey(funcion, pruebas){
    y = [];
    for(index in pruebas){
        let valor = 0;
        for(potencia in funcion){
            valor = valor + funcion[potencia]*(pruebas[index]**potencia);
        }
        y.push(valor);
    }
    return(y);
}

//Grafica
function graficar(x_datos,y_datos,funcion){

    const range = (start, stop, step) => Array.from({ length: (stop - start) / step + 1}, (_, i) => start + (i * step));

    let x_maximo = x_datos[x_datos.length - 1];
    let x_test = range(x_datos[0], x_maximo, 1);

    var trace1 = {
        x: x_datos,
        y: y_datos,
        mode: "markers",
        name: "Datos dispersos",
        marker: {
            color: "rgb(164, 194, 244)",
        size: 12,
        line: {
            color: "white",
            width: 0.5
            }
        },
        type: "scatter"
    };

    var trace2 = {
        x: x_test,
        y: ejey(funcion,x_test),
        name: "Regresión Polinomial",
        mode: "lines",
        type: "scatter"
    };

    var data = [trace1,trace2];
    var graphOptions = {filename: "line-scatter", fileopt: "overwrite"};
    plotly.plot(data, graphOptions, function (err, msg) {
        console.log(msg);
}); 


}*/

let datos = leerarchivo("jena.csv");
regresion_poly(datos);