//
//  ModelTableViewController.swift
//  Assignment3-BryanCaron
//
//  Created by Bryan Caron on 2021-07-07.
//

import UIKit

class ModelTableViewController: UITableViewController {

    var selectedYear : Year?
    
    var dataManager : ModelDataManager?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        if let selectedYear = selectedYear {
            self.navigationItem.title = selectedYear.year
        }
        if selectedYear!.year == "1990-1999"{
            dataManager = ModelDataManager(fileName: "1990sModels")
        }
        else if selectedYear!.year == "2000-2009"{
            dataManager = ModelDataManager(fileName: "2000sModels")
        }
        else if selectedYear!.year == "2010-2019"{
            dataManager = ModelDataManager(fileName: "2010sModels")
        }
        else{
            dataManager = ModelDataManager(fileName: "2020sModels")
        }
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager!.numberOfModels()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "modelCell", for: indexPath)

        let currentModel = dataManager!.model(at: indexPath)
        cell.textLabel?.text = currentModel.model
        
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "DetailInfoSegue" {
            if let infoVC = segue.destination as? InfoTableViewController,
               let selectedIndexPath = tableView.indexPathForSelectedRow {
                
               
                let currentModel = dataManager?.model(at: selectedIndexPath)
                
                infoVC.selectedModel = currentModel
            }
        }
    }
    

   }

