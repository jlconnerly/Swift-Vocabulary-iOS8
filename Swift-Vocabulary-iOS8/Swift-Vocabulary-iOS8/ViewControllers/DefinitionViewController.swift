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
    
  
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var definitionTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    
    var vocabController: VocabularyController?
    
    //
    // MARK: - View LifeCycle
    //
    
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
        updateviews()
    }
    
    
    //
    // MARK: - IBActions & Methods
    //
    

    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        guard let vocabController = vocabController,
              let newWordName = wordTextField.text,
              let newDefinition = definitionTextView.text else { return }
        let newWord = VocabularyWord(word: newWordName, definition: newDefinition)
        vocabController.addWord(word: newWord)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    func updateviews() {
        guard let vocabWord = vocabWord else { return }
        wordTextField.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
}
