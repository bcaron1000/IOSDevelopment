//
//  CompleteViewController.swift
//  Assignment2
//
//  Created by Bryan Caron on 2021-06-06.
//

import UIKit

class CompleteViewController: UIViewController {

   var supervisorNameFinal = ""
    @IBOutlet weak var supervisorNameLabel: UILabel!
    
    var companyNameFinal = ""
    @IBOutlet weak var companyNameLabel: UILabel!
    
    var supervisorSignatureFinal = ""
    @IBOutlet weak var supervisorSignatureLabel: UILabel!
    
    var siteAddressFinal = ""
    @IBOutlet weak var siteAddressLabel: UILabel!
    
    var clientFinal = ""
    @IBOutlet weak var clientLabel: UILabel!
 
    var stageOfConstructionFinal = ""
    @IBOutlet weak var stageOfConstructionLabel: UILabel!
    
    var dateFinal = ""
    @IBOutlet weak var dateLabel: UILabel!
    
    var hardHatFinal = ""
    @IBOutlet weak var hardHatLabel: UILabel!
    
    var safetyFootwearFinal = ""
    @IBOutlet weak var safetyFootwearLabel: UILabel!
    
    var safteyGlassesFinal = ""
    @IBOutlet weak var safteyGlassesLabel: UILabel!
    
    var hearingProtectionFinal = ""
    @IBOutlet weak var hearingProtectionLabel: UILabel!
    
    var fallProtectionFinal = ""
    @IBOutlet weak var fallProtectionLabel: UILabel!
    
    var glovesFinal = ""
    @IBOutlet weak var glovesLabel: UILabel!
    
    var faceshieldFinal = ""
    @IBOutlet weak var faceShieldLabel: UILabel!
    
    var leggingsFinal = ""
    @IBOutlet weak var leggingsLabel: UILabel!
    
    var stageOneFinal = ""
    @IBOutlet weak var stageOneLabel: UILabel!
    
    var stageTwoFinal = ""
    @IBOutlet weak var stageTwoLabel: UILabel!
    
    var stageThreeFinal = ""
    @IBOutlet weak var stageThreeLabel: UILabel!
    
    var stageFourFinal = ""
    @IBOutlet weak var stageFourLabel: UILabel!
    
    var stageFiveFinal = ""
    @IBOutlet weak var stageFiveLabel: UILabel!
    
    var stepOneFinal = ""
    @IBOutlet weak var stepOneLabel: UILabel!
    
    var stepTwoFinal = ""
    @IBOutlet weak var stepTwoLabel: UILabel!
    
    var stepThreeFinal = ""
    @IBOutlet weak var stepThreeLabel: UILabel!
    
    var stepFourFinal = ""
    @IBOutlet weak var stepFourLabel: UILabel!
    
    var stepFiveFinal = ""
    @IBOutlet weak var stepFiveLabel: UILabel!
    
    var stepSixFinal = ""
    @IBOutlet weak var stepSixLabel: UILabel!
    
    var stepSevenFinal = ""
    @IBOutlet weak var stepSevenLabel: UILabel!
    
    var stepEightFinal = ""
    @IBOutlet weak var stepEightLabel: UILabel!
    
    var stepNineFinal = ""
    @IBOutlet weak var stepNineLabel: UILabel!
    
    var rampsFinal = ""
    @IBOutlet weak var rampsLabel: UILabel!
    
    var handrailsFinal = ""
    @IBOutlet weak var handrailsLabel: UILabel!
    
    var debrisFinal = ""
    @IBOutlet weak var debridLabel: UILabel!
    
    var markedFinal = ""
    @IBOutlet weak var markedLabel: UILabel!
    
    var removedFinal = ""
    @IBOutlet weak var removedLabels: UILabel!
    
    var cordsHosesFinal = ""
    @IBOutlet weak var cordsHosesLabel: UILabel!
    
     var reviewedPPEFinal = ""
    @IBOutlet weak var reviewedPPELabel: UILabel!
    
    var coveredFinal = ""
    @IBOutlet weak var coveredLabel: UILabel!
    
    var otherFinal = ""
    @IBOutlet weak var otherLabel: UILabel!
    
    var firstAidFinal = ""
    @IBOutlet weak var FirstAidLabel: UILabel!
    
    var fireExtFinal = ""
    @IBOutlet weak var fireExtLabel: UILabel!
    
    var firstAiderOneFinal = ""
    @IBOutlet weak var firstAiderOneLabel: UILabel!
    
    var firstAiderTwoFinal = ""
    @IBOutlet weak var firstAiderTwoLabel: UILabel!
    
    var firstAiderThreeFinal = ""
    @IBOutlet weak var firstAiderThreeLabel: UILabel!
    
    var firstAiderFourFinal = ""
    @IBOutlet weak var firstAiderFourLabel: UILabel!
    
    var typeOfTrainingOneFinal = ""
    @IBOutlet weak var typeOfTrainingOneLabel: UILabel!
    
    var typeOfTrainingTwoFinal = ""
    @IBOutlet weak var typeOfTrainingTwoLabel: UILabel!
    
    var typeOfTrainingThreeFinal = ""
    @IBOutlet weak var typeOfTrainingThreeLabel: UILabel!
    
    var typeOfTrainingFourFinal = ""
    @IBOutlet weak var typeOfTrainingFourLabel: UILabel!
    
    var weatherFinal = ""
    @IBOutlet weak var weatherLabel: UILabel!
    
    var emergencyResponseFinal = ""
    @IBOutlet weak var emergencyResponseLabel: UILabel!
    
    var employeeOneFinal = ""
    @IBOutlet weak var employeeOneLabel: UILabel!
    
    var employeeTwoFinal = ""
    @IBOutlet weak var employeeTwoLabel: UILabel!
    
    var employeeThreeFinal = ""
    @IBOutlet weak var employeeThreeLabel: UILabel!
    
    var employeeFourFinal = ""
    @IBOutlet weak var employeeFourLabel: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        supervisorNameLabel.text! = supervisorNameFinal
        companyNameLabel.text = companyNameFinal
        supervisorSignatureLabel.text = supervisorSignatureFinal
        siteAddressLabel.text = siteAddressFinal
        clientLabel.text = clientFinal
        stageOfConstructionLabel.text = stageOfConstructionFinal
        dateLabel.text = dateFinal
        hardHatLabel.text = hardHatFinal
        safetyFootwearLabel.text = safetyFootwearFinal
        safteyGlassesLabel.text = safteyGlassesFinal
        hearingProtectionLabel.text = hearingProtectionFinal
        fallProtectionLabel.text = fallProtectionFinal
        glovesLabel.text = glovesFinal
        faceShieldLabel.text = fallProtectionFinal
        leggingsLabel.text = leggingsFinal
        stageOneLabel.text = stageOneFinal
        stageTwoLabel.text = stageTwoFinal
        stageThreeLabel.text = stageThreeFinal
        stageFourLabel.text = stageFourFinal
        stageFiveLabel.text = stageFiveFinal
        stepOneLabel.text = stepOneFinal
        stepTwoLabel.text = stepTwoFinal
        stepThreeLabel.text = stepThreeFinal
        stepFourLabel.text = stepFourFinal
        stepFiveLabel.text = stepFiveFinal
        stepSixLabel.text = stepSixFinal
        stepSevenLabel.text = stepSevenFinal
        stepEightLabel.text = stepEightFinal
        stepNineLabel.text = stepNineFinal
        rampsLabel.text = rampsFinal
        handrailsLabel.text = handrailsFinal
        debridLabel.text = debrisFinal
        markedLabel.text = markedFinal
        removedLabels.text = removedFinal
        cordsHosesLabel.text = cordsHosesFinal
        reviewedPPELabel.text = reviewedPPEFinal
        coveredLabel.text = coveredFinal
        otherLabel.text = otherFinal
        FirstAidLabel.text = firstAidFinal
        fireExtLabel.text = fireExtFinal
        firstAiderOneLabel.text = firstAiderOneFinal
        firstAiderTwoLabel.text = firstAiderTwoFinal
        firstAiderThreeLabel.text = firstAiderThreeFinal
        firstAiderFourLabel.text = firstAiderFourFinal
        typeOfTrainingOneLabel.text = typeOfTrainingOneFinal
        typeOfTrainingTwoLabel.text = typeOfTrainingTwoFinal
        typeOfTrainingThreeLabel.text = typeOfTrainingThreeFinal
        typeOfTrainingFourLabel.text = typeOfTrainingFourFinal
        weatherLabel.text = weatherFinal
        emergencyResponseLabel.text = emergencyResponseFinal
        employeeOneLabel.text = employeeOneFinal
        employeeTwoLabel.text = employeeTwoFinal
        employeeThreeLabel.text = employeeThreeFinal
        employeeFourLabel.text = employeeFourFinal
        
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
