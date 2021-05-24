//
//  ViewController.swift
//  Color Editor
//
//  Created by macbook on 22.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var palette: UIView!
    
    @IBOutlet weak var redLable: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var blueLable: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeRedValue(_ sender: UISlider) {
        redLable.text = "Red: \(Int(redSlider.value))"
        colorChange()
    }
    
    @IBAction func changeGreenValue(_ sender: UISlider) {
        greenLable.text = "Green: \(Int(greenSlider.value))"
        colorChange()
    }
    
    @IBAction func changeBlueValue(_ sender: UISlider) {
        blueLable.text = "Blue: \(Int(blueSlider.value))"
        colorChange()
        
    }
    
    func colorChange() {
        palette.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

