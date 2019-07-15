//
//  DefinitionViewController.swift
//  Swift-Vocabulary-iOS8
//
//  Created by Jake Connerly on 7/15/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    //
    // MARK: - IBOutlets and Properties
    //
    
  
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    
    
    var vocabWord: VocabularyWord? {
        didSet {
            loadViewIfNeeded()
            updateviews()
        }
    }
    
    //
    // MARK: -View LifeCycle
    //

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //
    // MARK: - Methods
    //
    
    func updateviews() {
        guard let vocabWord = vocabWord else { return }
        
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
}
