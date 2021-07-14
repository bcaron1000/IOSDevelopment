//
//  BeginViewController.swift
//  Assignment2
//
//  Created by Bryan Caron on 2021-06-06.
//

import UIKit

class BeginViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    @IBOutlet weak var supervisorNameTextField: UITextField!
    
    @IBOutlet weak var companyNameTextField: UITextField!
    
    @IBOutlet weak var supervisorSignaturTextField: UITextField!
    
    @IBOutlet weak var siteAddressTextField: UITextField!
    
    @IBOutlet weak var ClientTextField: UITextField!
    
    @IBOutlet weak var stageOfConstTextField: UITextField!
    
    @IBOutlet weak var JobDate: UITextField!
    let datePicker = UIDatePicker()
    
    func createDatePicker(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolBar.setItems([doneBtn], animated: true)
        JobDate.inputAccessoryView = toolBar
        JobDate.inputView = datePicker
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
    }
    @objc func donePressed(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        JobDate.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
        
    }
    
    @IBOutlet weak var stagesText: UITextField!
    
    @IBOutlet weak var stepsText: UITextField!
    
    let stagePicker = UIPickerView()
    let stepsReviewedPicker = UIPickerView()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let steps = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let stages = ["1", "2", "3", "4", "5"]
    var stageOne = ""
    var stageTwo = ""
    var stageThree = ""
    var stageFour = ""
    var stageFive = ""
    
    var stepsOne = ""
    var stepsTwo = ""
    var stepsThree = ""
    var stepsFour = ""
    var stepsFive = ""
    var stepsSix = ""
    var stepsSeven = ""
    var stepsEight = ""
    var stepsNine = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker()
        stagePicker.dataSource = self
        stagePicker.delegate = self

        stepsReviewedPicker.dataSource = self
        stepsReviewedPicker.delegate = self
            
        stagePicker.tag = 1
        stepsReviewedPicker.tag = 2;
        
        stagesText.inputView = stagePicker
        stepsText.inputView = stepsReviewedPicker
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
            
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

        if pickerView == stagePicker {
            return stages.count

        } else if pickerView == stepsReviewedPicker{
             return steps.count
        }

        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {


        if pickerView == stagePicker {
            return stages[row]

        } else if pickerView == stepsReviewedPicker{
             return steps[row]
        }
        return ""
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if
            pickerView == stepsReviewedPicker {
            stepsText.text = steps[row]
            if stepsText.text == "1"{
                stepsOne = "x"
            }
            else if stepsText.text == "2"{
                stepsTwo = "x"
            }
            else if stepsText.text == "3"{
                stepsThree = "x"
            }
            else if stepsText.text == "4"{
                stepsFour = "x"
            }
            else if stepsText.text == "5"{
                stepsFive = "X"
            }
            else if stepsText.text == "6"{
                stepsSix = "x"
            }
            else if stepsText.text == "7"{
                stepsSeven = "x"
            }
            else if stepsText.text == "8"{
                stepsEight = "x"
            }
            else{
                stepsNine = "x"
            }
              self.view.endEditing(false)
        } else if pickerView == stagePicker{
            stagesText.text = stages[row]
            if stagesText.text == "1"{
                stageOne = "x"
            }
            else if stagesText.text == "2"{
                stageTwo = "x"
            }
            else if stagesText.text == "3"{
                stageThree = "x"
            }
            else if stagesText.text == "4"{
                stageFour = "x"
            }
            else {
                stageFive = "x"
            }
            
              self.view.endEditing(false)
        }
    }

    @IBAction func screeenTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
   }
    
    //Safety Gear
    var hardhat: String = ""
    @IBAction func hardHatSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            hardhat = ""
        }
        else{
            hardhat = "x"
        }
    }
    var safetyBoots = ""
    @IBAction func safetyBootsSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            safetyBoots = ""
        }
        else{
            safetyBoots = "x"
        }
    }
    var safetyGlasses = ""
    
    @IBAction func safetyGlassesSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            safetyGlasses = ""
        }
        else{
            safetyGlasses = "x"
        }
    }
    var hearingProtection = ""
    @IBAction func hearingProtectionSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            hearingProtection = ""
        }
        else{
            hearingProtection = "x"
        }
    }
    var fallProtection = ""
    
    @IBAction func fallProtectionSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            fallProtection = ""
        }
        else{
            fallProtection = "x"
        }
    }
    
   var gloves = ""
    
    @IBAction func glovesSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            gloves = ""
        }
        else{
            gloves = "x"
        }
    }
    var faceShield = ""
    @IBAction func faceShieldSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            faceShield = ""
        }
        else{
            faceShield = "x"
        }
    }
    var leggings = ""
    
    @IBAction func leggingsSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            leggings = ""
        }
        else{
            leggings = "x"
        }
    }
    
    //Weather Conditions
    @IBOutlet weak var weatherTextField: UITextField!
    
    // Safety Precautions
    var rampsStairs = ""
    
    @IBAction func rampsStairsSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            rampsStairs = ""
        }
        else{
            rampsStairs = "x"
        }
    }
    var handrail = ""
    
    @IBAction func handrailSwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
                handrail = ""
            }
            else{
                handrail = "x"
            }
    }
    var debris = ""
    
    @IBAction func debrisSwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
                debris = ""
            }
            else{
                debris = "x"
            }
    }
    
    var covered = ""
    
    @IBAction func coveredSwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
                covered = ""
            }
            else{
                covered = "x"
            }
    }
    var cordHoses = ""
    
    @IBAction func cordHosesSwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
            cordHoses = ""
            }
            else{
                cordHoses = "x"
            }
    }
    var reviewedPPE = ""
    
    @IBAction func reviewedPPESwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
            reviewedPPE = ""
            }
            else{
                reviewedPPE = "x"
            }
    }
    var holesCovered = ""
    
    @IBAction func holesCoveredSwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
            holesCovered = ""
            }
            else{
                holesCovered = "x"
            }
    }
    var removed = ""
    
    @IBAction func removedSwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
            removed = ""
            }
            else{
                removed = "x"
            }
    }

    //First Aid Trained Personnel
 
    var eResponseSwitch = ""
    
    @IBAction func eResponseSwitch(_ sender: UISegmentedControl) {
        if
            sender.selectedSegmentIndex == 0 {
            eResponseSwitch = ""
            }
            else{
                eResponseSwitch = "Yes"
            }
    }
    //Employee SignOff
    @IBOutlet weak var employeeNameTextBox1: UITextField!
    @IBOutlet weak var employeeNameTextBox2: UITextField!
    @IBOutlet weak var employeeNameTextBox3: UITextField!
    @IBOutlet weak var employeeNameTextBox4: UITextField!
    @IBOutlet weak var otherTextField: UITextField!
    @IBOutlet weak var firstAidLocationTextField: UITextField!
    @IBOutlet weak var fireExtTextField: UITextField!
    
    @IBOutlet weak var firstAiderOneTextField: UITextField!
    
    @IBOutlet weak var firstAiderTwoTextField: UITextField!
    
    @IBOutlet weak var firstAiderThreeTextField: UITextField!
    
    @IBOutlet weak var firstAiderFourTextField: UITextField!
    
    
    @IBOutlet weak var typeOneTextField: UITextField!
    
    @IBOutlet weak var typeTwoTextField: UITextField!
    
    @IBOutlet weak var typeThreeTextField: UITextField!
    
    @IBOutlet weak var typeFourTextField: UITextField!
    

    
    var companyName = ""
    var supervisorName = ""
    var supervisorSignature = ""
    var siteAddress = ""
    var client = ""
    var stageOfConstruction = ""
    var date = ""
    var other = ""
    var weather = ""
    var firstAid = ""
    var fireExt = ""
    var FAOne = ""
    var FATwo = ""
    var FAThree = ""
    var FAFour = ""
    var ToTOne = ""
    var ToTTwo = ""
    var ToTThree = ""
    var ToTFour = ""
    var employeeOne = ""
    var employeeTwo = ""
    var employeeThree = ""
    var employeeFour = ""
    
    func convertNames(){
        self.supervisorName = supervisorNameTextField.text!
        self.companyName = companyNameTextField.text!
        self.supervisorSignature = supervisorSignaturTextField.text!
        
        self.siteAddress = siteAddressTextField.text!
        self.client = ClientTextField.text!
        self.stageOfConstruction = stageOfConstTextField.text!
        self.date = JobDate.text!
        self.other = otherTextField.text!
        self.weather = weatherTextField.text!
        self.firstAid = firstAidLocationTextField.text!
        self.fireExt = fireExtTextField.text!
        self.FAOne = firstAiderOneTextField.text!
        self.FATwo = firstAiderTwoTextField.text!
        self.FAThree = firstAiderThreeTextField.text!
        self.FAFour = firstAiderFourTextField.text!
        self.ToTOne = typeOneTextField.text!
        self.ToTTwo = typeTwoTextField.text!
        self.ToTThree = typeThreeTextField.text!
        self.ToTFour = typeFourTextField.text!
        self.employeeOne = employeeNameTextBox1.text!
        self.employeeTwo = employeeNameTextBox2.text!
        self.employeeThree = employeeNameTextBox3.text!
        self.employeeFour = employeeNameTextBox4.text!
        
        performSegue(withIdentifier: "passInfo", sender: self)
    }
    @IBAction func submitButton(_ sender: Any) {
        let alert = UIAlertController(title: "Completed", message: "Are you done?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes", style: .default) { action in
            self.convertNames()
        }
        let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(noAction)

        present(alert, animated: true,completion: nil)
 
    }
    
    
      
        
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        var completeVC = segue.destination as! CompleteViewController
        // Pass the selected object to the new view controller.
        completeVC.supervisorNameFinal = self.supervisorName
        completeVC.companyNameFinal = self.companyName
        completeVC.supervisorSignatureFinal = self.supervisorSignature
        completeVC.siteAddressFinal = self.siteAddress
        completeVC.clientFinal = self.client
        completeVC.stageOfConstructionFinal = self.stageOfConstruction
        completeVC.dateFinal = self.date
        completeVC.hardHatFinal = self.hardhat
        completeVC.safetyFootwearFinal = self.safetyBoots
        completeVC.safteyGlassesFinal = self.safetyGlasses
        completeVC.hearingProtectionFinal = self.hearingProtection
        completeVC.fallProtectionFinal = self.fallProtection
        completeVC.glovesFinal = self.gloves
        completeVC.faceshieldFinal = self.faceShield
        completeVC.leggingsFinal = self.leggings
        completeVC.stageOneFinal = self.stageOne
        completeVC.stageTwoFinal = self.stageTwo
        completeVC.stageThreeFinal = self.stageThree
        completeVC.stageFourFinal = self.stageFour
        completeVC.stageFiveFinal = self.stageFive
        completeVC.stepOneFinal = self.stepsOne
        completeVC.stepTwoFinal = self.stepsTwo
        completeVC.stepThreeFinal = self.stepsThree
        completeVC.stepFourFinal = self.stepsFour
        completeVC.stepFiveFinal = self.stepsFive
        completeVC.stepSixFinal = self.stepsSix
        completeVC.stepSevenFinal = self.stepsSeven
        completeVC.stepEightFinal = self.stepsEight
        completeVC.stepNineFinal = self.stepsNine
        completeVC.rampsFinal = self.rampsStairs
        completeVC.handrailsFinal = self.handrail
        completeVC.debrisFinal = self.debris
        completeVC.markedFinal = self.covered
        completeVC.removedFinal = self.removed
        completeVC.cordsHosesFinal = self.cordHoses
        completeVC.reviewedPPEFinal = self.reviewedPPE
        completeVC.coveredFinal = self.holesCovered
        completeVC.otherFinal = self.other
        completeVC.weatherFinal = self.weather
        completeVC.firstAidFinal = self.firstAid
        completeVC.fireExtFinal = self.fireExt
        completeVC.firstAiderOneFinal = self.FAOne
        completeVC.firstAiderTwoFinal = self.FATwo
        completeVC.firstAiderThreeFinal = self.FAThree
        completeVC.firstAiderFourFinal = self.FAFour
        
        completeVC.typeOfTrainingOneFinal = self.ToTOne
        completeVC.typeOfTrainingTwoFinal = self.ToTTwo
        completeVC.typeOfTrainingThreeFinal = self.ToTThree
        completeVC.typeOfTrainingFourFinal = self.ToTFour
        completeVC.emergencyResponseFinal = self.eResponseSwitch
        
        completeVC.employeeOneFinal = self.employeeOne
        completeVC.employeeTwoFinal = self.employeeTwo
        completeVC.employeeThreeFinal = self.employeeThree
        completeVC.employeeFourFinal = self.employeeFour
        
        
       
        
        
        
    }
    

}
