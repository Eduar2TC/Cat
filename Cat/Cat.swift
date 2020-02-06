//
//  Cat.swift
//  Cat
//
//  Created by Moviles on 30/01/20.
//  Copyright © 2020 Eduardo. All rights reserved.
//

import Foundation

class Cat{
    //propieties
    var nombre = "";
    var color = "";
    var edad = 0;
    var estado = false;
    var vida = 7
    func crearGato(nombre: String, color: String, edad: Int)-> String{
        self.nombre = nombre;
        self.color = color;
        self.edad = edad;
        estado = true;
        return "El gato \(getNombre()) ha sido creado...";
    }
    //getters and setters
    func setNombre(nombre: String){
        self.nombre = nombre;
    }
    func getNombre()->String{
        return self.nombre;
    }
    func setColor(color: String){
        self.color = color;
    }
    func getColor()->String{
        return self.color;
    }
    func setEdad(edad: Int){
        self.edad = edad;
    }
    func getEdad()->Int{
        return self.edad;
    }
    func setEstado(estado: Bool){
        self.estado = estado;
    }
    func getEstado()->Bool{
        return self.estado;
    }
    func setVidas(newValueVida: Int){
        self.vida = newValueVida;
    }
    func getVidas()->Int{
        return self.vida;
    }
    //Methods
    func mostrarFicha()->String{
        var cadena = "Nombre: \(getNombre())\nColor: \(self.getColor())...";
        if (self.estado == true){
            cadena = cadena + "\nEstado: Despierto";
        }
        else{
            cadena = cadena + "\nEstado: Dormido";
            
        }
        return cadena;
    }
    func comer()->String{
        return "\(getNombre()) esta comiedo..."
    }
    func dormir()->String{
        if(self.estado == true){
            self.estado = false;
            return "\(getNombre()) ahora esta durmiendo...";
        }
        else{
            return "\(self.getNombre()) ya esta durmiendo...";
        }
    }
    
    //end Methods
}
