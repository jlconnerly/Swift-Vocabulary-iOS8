//
//  VocabularyController.swift
//  Swift-Vocabulary-iOS8
//
//  Created by Jake Connerly on 7/15/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import Foundation

class VocabularyController {
    
    var vocabWords: [VocabularyWord]
    
    init(vocabWords: [VocabularyWord]) {
        self.vocabWords = [VocabularyWord(word: "Dictionary", definition: "A dictionary is a type of hash table, providing fast access to the entries it contains. Each entry in the table is identified using its key, which is a hashable type such as a string or number. You use that key to retrieve the corresponding value, which can be any object. In other languages, similar data types are known as hashes or associated arrays."),
                           VocabularyWord(word: "variable", definition: "Variables are the “things” in your code, like numbers, text, buttons and images. Every bit of information your app uses, is stored in a variable or a constant. "),
                           VocabularyWord(word: "Swift", definition: "Happening quickly or promptly")]
    }
    
}


