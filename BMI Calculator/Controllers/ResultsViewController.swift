//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Bruno  on 15/06/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        background.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
