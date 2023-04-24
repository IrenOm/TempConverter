//
//  ViewController.swift
//  TempConverter
//
//  Created by irena.omelana on 17/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var CelsiusLable: UILabel!
    @IBOutlet weak var ResultLable: UILabel!
    
    @IBOutlet weak var tempSlider: UISlider! {
        didSet {
            tempSlider.maximumValue = 100
            tempSlider.minimumValue = 0
            tempSlider.value = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CelsiusLable.text = "32 Fº"
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        //       print("tempSlider", tempSlider.value)
        updateResultLableValue(value: tempSlider.value)
    }
    
    @IBAction func SegmentValueChanged(_ sender: Any) {
        updateResultLableValue(value: tempSlider.value)
    }
    
    func updateResultLableValue(value: Float) {
        print(value)
        
        let celsiusTemp = Int(value)
        CelsiusLable.text = "\(celsiusTemp) Cº"
        
        var convertedTempString = ""
        #warning("switch case, convertedTempString = convertTempFrom(celsius: celsiusTemp)")
    }
    
    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double) {
#warning("temp calculation logic")
        return (0,0)
    }
}
