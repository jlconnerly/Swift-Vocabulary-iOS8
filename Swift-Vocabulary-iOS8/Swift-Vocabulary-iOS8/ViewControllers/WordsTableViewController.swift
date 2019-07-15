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
    
    var vocabController: VocabularyController?
    
        
    //
    // MARK: - View LifeCycle
    //

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //
    // MARK: - Table view data source
    //

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
