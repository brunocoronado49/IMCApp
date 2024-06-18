//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculateBrain = CalculateBrain()

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func controlSliderWeightChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func controlSliderHeightChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculateBMI(height, weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
    }
}

