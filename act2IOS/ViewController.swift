//
//  ViewController.swift
//  act2IOS
//
//  Created by Diego emiliano castañeda sosa  on 26/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajeLabel: UILabel!
    @IBOutlet weak var interrogacionLabel: UILabel!
    @IBOutlet weak var numeroTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configurar el teclado para aceptar solo números
        numeroTextField.keyboardType = .numberPad
    }

    @IBAction func botonPresionado(_ sender: UIButton) {
        
        guard let numeroUsuario = Int(numeroTextField.text ?? "") else {
            mensajeLabel.text = "Por favor, ingresa un número válido."
            view.backgroundColor = .red
            return
        }

        // Generar un número aleatorio del 1 al 6
        let numeroAleatorio = Int.random(in: 1...6)

        // Mostrar el número aleatorio en el Label de interrogación
        interrogacionLabel.text = "\(numeroAleatorio)"

        
        if numeroUsuario == numeroAleatorio {
            mensajeLabel.text = "nice"
            view.backgroundColor = .green
        } else {
            mensajeLabel.text = "Unluck"
            view.backgroundColor = .red
        }
    }
}
