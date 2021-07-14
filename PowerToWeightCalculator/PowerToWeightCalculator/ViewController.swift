//
//  ViewController.swift
//  PowerToWeightCalculator
//
//  Created by Bryan Caron on 2021-05-17.
//

import UIKit

class ViewController: UIViewController {
    
    var powerOutput : Double = 0
    
    var units : String = "English"
    
    @IBOutlet weak var powerInput: UITextField!
   
    @IBOutlet weak var weightInput: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func unitsUsed(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            powerInput.placeholder = "Horsepower"
            weightInput.placeholder = "Pounds"
            units = "English"
            resetAll()
        }
        if sender.selectedSegmentIndex == 1 {
            powerInput.placeholder = "Watts"
            weightInput.placeholder = "Kilograms"
            units = "Si"
            resetAll()
        }
    }
    
    func hpCalculation(){
        
        let power = Double(powerInput.text!)!
        let weight = Double(weightInput.text!)!
        powerOutput = power / weight
    }
    
    func siCalculation(){
        let power = Double(powerInput.text!)!
        let weight = Double(weightInput.text!)!
        powerOutput = (power * 745.7) / (weight *  2.2046226218)
    }
    
    func calculatePower() {
        if (powerInput.text == "" || weightInput.text == ""){
            outputLabel.text = "Please enter a value to calculate"
        }
        else{
            if units == "English"{
                hpCalculation()
                let formattedNumber = String(format: "%0.4f", powerOutput)
                outputLabel.text = "Power to weight is \(formattedNumber) Hp/Lb"
                
            }
            if units == "Si"{
                siCalculation()
                let formattedNumber = String(format: "%0.4f", powerOutput)
                outputLabel.text = "Power to weight is \(formattedNumber) W/Kgs"
                
            }
        }
    }
    
    @IBAction func submit(_ sender: UIButton) {
        calculatePower()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        resetAll()
    }
    func resetAll(){
        powerInput.text = ""
        weightInput.text = ""
        outputLabel.text = ""
        
    }
    
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
