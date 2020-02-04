//
//  ViewController.swift
//  Cat
//
//  Created by Moviles on 30/01/20.
//  Copyright © 2020 Eduardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        catImageView.layer.masksToBounds = true
        catImageView.layer.cornerRadius = catImageView.bounds.width / 2.8
    }
    var cadena: String = "";
    @IBOutlet weak var etiquetaNombre: UILabel!
    @IBOutlet weak var cajaDeTexto: UITextView!
    @IBOutlet weak var catImageView: UIImageView!
    var myCatObject: Cat?; //   Object type Cat

    @IBAction func creaGato(_ sender: Any) {
        self.myCatObject = Cat();
        self.cadena = myCatObject!.crearGato(nombre: "Pepito", color: "Manchado", edad: 7); //create String from object
        self.cajaDeTexto?.text = self.cadena;
        
        self.catImageView.image = UIImage(named: "pepito.jpg"); //assign imageFile (Hacerlo diminamicamente por medio de la imagen)
        self.etiquetaNombre.text = myCatObject?.getNombre();
        
    }
    @IBAction func jugar(_ sender: Any) {
    
        if(myCatObject!.vida > 0){ // Cat is live
            var numeroAleatorio = Int.random(in: 1 ... 10); // generate random numbers
            if((numeroAleatorio % 2) == 0){ //Si el numero es par se resta una vida
                // CAT PLAYING
                if(self.myCatObject?.getEstado() == true){ // Cat is NO SLEEPING
                    self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) tengo \(self.myCatObject!.getVidas()) vidas estoy jugando :v"; // utilizar el simbolo "!" para imprimir la cadena
                    self.myCatObject!.vida = self.myCatObject!.vida-1;
                    
                }
                else{
                    self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) no puedo jugar estoy durmiendo :v"; // utilizar el simbolo "!" para imprimir la cadena
                }
              }
        }
        else if(myCatObject!.getVidas() <= 0){ // Cat is death
            self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) no puedo jugar ESTOY MUERTO :v"; // utilizar el simbolo "!" para imprimir la cadena
        }
        
    }
    
    @IBAction func comer(_ sender: Any) {
            if(self.myCatObject?.getEstado() == true){
                self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) estoy comiendo :v"; // utilizar el simbolo "!" para imprimir la cadena
                
            }
            else{
                self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) no puedo comer estoy durmiendo :v"; // utilizar el simbolo "!" para imprimir la cadena
            }
    }
    
    @IBAction func dormir(_ sender: Any) {
        if(self.myCatObject?.getEstado() == true){ // verifying cat state
            myCatObject?.setEstado(estado: false); // set cat state to NO sleeping
            if(self.myCatObject?.getEstado() == false){
                self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) estoy durmiendo :v";
            }
            else{
                self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) estoy despierto :v";
            }
        }
    }
    
    @IBAction func despertar(_ sender: Any) {
        if(self.myCatObject?.getEstado() == false){ // verifing sleeping state is true
            self.myCatObject?.setEstado(estado: true); //set state to sleeping
            self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) estoy despierto :v";
        }
        else{
            self.cajaDeTexto?.text = "Hola soy \(self.myCatObject!.getNombre()) actualmente estoy despierto :v";
        }
    }
    
    @IBAction func mostrarFicha(_ sender: Any) {
        if(myCatObject != nil){
            self.cadena = (myCatObject?.mostrarFicha())!;
            self.cajaDeTexto.text = cadena;
        }
        else{
            self.cajaDeTexto.text = "Tu gato no hà sido creado";
        }
    }
}

