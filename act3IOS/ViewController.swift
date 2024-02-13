//
//  ViewController.swift
//  act3IOS
//
//  Created by Diego emiliano castañeda sosa  on 12/02/24.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!

   
    @IBOutlet weak var redLabel: UILabel!
    
    
   
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        // Inicializa los sliders con el valor máximo
        redSlider.value = redSlider.maximumValue
        greenSlider.value = greenSlider.maximumValue
        blueSlider.value = blueSlider.maximumValue
        alphaSlider.value = alphaSlider.maximumValue

        // Configura las acciones para los sliders
        redSlider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        greenSlider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        blueSlider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        alphaSlider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)

        // Inicializa el fondo de la imagen
        updateBackgroundColor()
    }

    @objc func sliderValueChanged() {
        // Actualiza los labels con los valores de los sliders
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)

        // Actualiza el fondo de la imagen con los valores de los sliders
        updateBackgroundColor()
    }

    func updateBackgroundColor() {
        let color = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(alphaSlider.value)
        )
        imageView.backgroundColor = color
    }
}


