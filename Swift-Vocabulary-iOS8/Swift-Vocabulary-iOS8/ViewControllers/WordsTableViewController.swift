//
//  WordsTableViewController.swift
//  Swift-Vocabulary-iOS8
//
//  Created by Jake Connerly on 7/15/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    //
    // MARK: - IBOutlets and Properties
    //
    
    var vocabController = VocabularyController()
    
        
    //
    // MARK: - View LifeCycle
    //

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        tableView.reloadData()
    }

    //
    // MARK: - Table view data source
    //

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)

        cell.textLabel?.text = vocabController.vocabWords[indexPath.row].word
        
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            guard let detailVC = segue.destination as? DefinitionViewController,
                  let indexPath = tableView.indexPathForSelectedRow else { return }
            
            detailVC.vocabWord = vocabController.vocabWords[indexPath.row]
            detailVC.saveButton.isHidden = true
            
        }else if segue.identifier == "AddWordSegue" {
            guard let addWordVC = segue.destination as? DefinitionViewController else { return }
            
            addWordVC.vocabController = vocabController
            
        }
    }
    
    @IBAction func unwindToWordList(_ sender: UIStoryboardSegue) {
    }

}
