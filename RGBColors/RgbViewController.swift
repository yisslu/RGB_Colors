//
//  ViewController.swift
//  RGBColors
//
//  Created by Diplomado on 28/09/24.
//

import UIKit

class RgbViewController: UIViewController {

    @IBOutlet weak var redColorText: UITextField!
    @IBOutlet weak var greenColorText: UITextField!
    @IBOutlet weak var blueColorText: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        
        let redValue = Double(redColorText.text ?? "0.0") ?? 0.0
        let greenValue = Double(greenColorText.text ?? "0.0") ?? 0.0
        let blueValue = Double(blueColorText.text ?? "0.0") ?? 0.0
         
        
        changeBackgroundColor(red: redValue, green: greenValue, blue: blueValue)
        
    }
    
    @IBAction func resetColor(_ sender: UIButton) {
        redColorText.text = ""
        greenColorText.text = ""
        blueColorText.text = ""
        
        changeBackgroundColor(red: 0, green: 0, blue: 0)
    }

    
    
    func changeBackgroundColor(red: Double, green: Double, blue: Double) {
        view.backgroundColor = UIColor(red: CGFloat(red/255.0), green: CGFloat(green/255.0), blue: CGFloat(blue/255.0), alpha: 1.0)
    }
}

