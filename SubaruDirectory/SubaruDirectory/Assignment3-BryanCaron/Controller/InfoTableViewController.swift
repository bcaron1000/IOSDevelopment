//
//  InfoTableViewController.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-08.
//

import UIKit

class InfoTableViewController: UITableViewController {


    
    var selectedModel: Model?
    
    var dataManager : InfoDataManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let selectedModel = selectedModel {
            self.navigationItem.title = selectedModel.model
        }
        //1990s Models
        if selectedModel!.model == "Legacy(1990)" {
            dataManager = InfoDataManager(fileName: "Legacy1990List")
        }
        else if selectedModel!.model == "Outback(1995)" {
            dataManager = InfoDataManager(fileName: "Outback1995List")
        }
        else if selectedModel!.model == "Impreza(1993)" {
            dataManager = InfoDataManager(fileName: "Impreza1993List")
        }
        else if selectedModel!.model == "Impreza WRXSTI(1992-1999)" {
            dataManager = InfoDataManager(fileName: "ImprezaWRXSTI19921999List")
        }
        else if selectedModel!.model == "AlcyoneSVX(1992)" {
            dataManager = InfoDataManager(fileName: "AlcyoneSVX1992List")
        }
        else if selectedModel!.model == "Forester(1998)" {
            dataManager = InfoDataManager(fileName: "Forester1998List")
        }
        //2000s Models
        else if selectedModel!.model == "Forester(2000)"{
            dataManager = InfoDataManager(fileName: "Forester2000List")
        }
        else if selectedModel!.model == "Impreza WRX(2002)"{
            dataManager = InfoDataManager(fileName: "ImprezaWRX2002List")
        }
        else if selectedModel!.model == "B9 Tribeca(2005)"{
            dataManager = InfoDataManager(fileName: "B9Tribeca2005List")
        }
        else if selectedModel!.model == "WRX STi(2004)"{
            dataManager = InfoDataManager(fileName: "WRXSTi2004List")
        }
        else if selectedModel!.model == "Baja(2003)"{
            dataManager = InfoDataManager(fileName: "Baja2003List")
        }
        
        //2010s Models
        else if selectedModel!.model == "BRZ(2013)"{
            dataManager = InfoDataManager(fileName: "BRZ2013List")
        }
        else if selectedModel!.model == "XVCrosstrek(2013)"{
            dataManager = InfoDataManager(fileName: "XVCrosstrek2013List")
        }
        else if selectedModel!.model == "WrxSTI(2010)"{
            dataManager = InfoDataManager(fileName: "WrxSTI2010List")
        }
        else if selectedModel!.model == "Legacy(2010)"{
            dataManager = InfoDataManager(fileName: "Legacy2010List")
        }
        else if selectedModel!.model == "Forester(2010)"{
            dataManager = InfoDataManager(fileName: "Forester2010List")
        }
        //2020s Models
        else if selectedModel!.model == "Subaru Outback(2020)"{
            dataManager = InfoDataManager(fileName: "SubaruOutback2020List")
        }
        else if selectedModel!.model == "Forester(2020)"{
            dataManager = InfoDataManager(fileName: "Forester2020List")
        }
        else if selectedModel!.model == "Crosstrek(2020)"{
            dataManager = InfoDataManager(fileName: "Crosstrek2020List")
        }
        else if selectedModel!.model == "Ascent(2020)"{
            dataManager = InfoDataManager(fileName: "Ascent2020List")
        }
        else if selectedModel!.model == "Impreza(2020)"{
            dataManager = InfoDataManager(fileName: "Impreza2020List")
        }
        else if selectedModel!.model == "Legacy(2020)"{
            dataManager = InfoDataManager(fileName: "Legacy(2020)List")
        }
        else if selectedModel!.model == "WRX(2020)"{
            dataManager = InfoDataManager(fileName: "WRX2020List")
        }
        else if selectedModel!.model == "WRXSTI(2020)"{
            dataManager = InfoDataManager(fileName: "WRXSTI2020List")
        }
        else{                             //BRZ(2020)
            dataManager = InfoDataManager(fileName: "BRZ2020List")
        }
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 730
        
        
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager!.numberOfDetails()
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell") as! InfoTableViewCell

     let currentDetail = dataManager!.detail(at: indexPath)
        cell.DetailTextView.text = currentDetail.detail
        cell.engineSizeTextView.text = currentDetail.engineSize
        let imageFileName = selectedModel!.model
        cell.DetailImage?.image = UIImage(named: imageFileName)

     return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
