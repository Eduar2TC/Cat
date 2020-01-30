//
//  ViewController.swift
//  Cat
//
//  Created by Moviles on 30/01/20.
//  Copyright © 2020 Eduardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }*/
    var cadena: String = "";
    @IBOutlet weak var etiquetaNombre: UILabel!
    @IBOutlet weak var cajaDeTexto: UITextView!
    @IBOutlet weak var catImageView: UIImageView!
    var myCatObject: Cat?; //   Object type Cat
    
    


    @IBAction func creaGato(_ sender: Any) {
        self.myCatObject = Cat();
        self.cadena = myCatObject!.crearGato(nombre: "Pepito", color: "Manchado", edad: 7); //create String from object
        self.cajaDeTexto?.text = self.cadena;
        
        self.catImageView.image = UIImage(named: "cat.jpg"); //assign imageFile
        self.etiquetaNombre.text = myCatObject?.getNombre();
        
    }
    
    @IBAction func jugar(_ sender: Any) {
    }
    
    @IBAction func comer(_ sender: Any) {
    }
    
    @IBAction func dormir(_ sender: Any) {
    }
    
    @IBAction func despertar(_ sender: Any) {
    }
    
    @IBAction func mostrarFicha(_ sender: Any) {
    }
}

