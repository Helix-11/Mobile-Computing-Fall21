//
//  ViewController.swift
//  Krohn_WordGuess
//
//  Created by student on 10/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var guessButton: UIButton!
    
    var maxNumOfGuesses = 10;
    var count = 0;
    var guessed = 0;
    var remaining = 5;
    var missed = 0;
    var letterGuessed = " ";
    
    var words = [["COW","MISSOURI","CAT","PLAYSTATION","FORD"],
                ["Animal that produces milk","The best State","Animal that is a common pet","This is a gaming console","American auto maker"]]
    var word = " ";
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        enterLabelChanged(guessLetterField)
        maxNumOfGuesses = maxNumOfGuesses - 1;
        guessCountLabel.text = "You have " + String(maxNumOfGuesses) + " guesses left";
        word = words[0][count];
        let letter = guessLetterField.text!;
        letterGuessed = letterGuessed + letter;
        var revealedWord = " ";
        if(maxNumOfGuesses > 0){
            for l in word{
                if letterGuessed.contains(l){
                    
                    revealedWord += "\(l)"
                }
                else{
                    revealedWord += "_ "
                }
            }
            userGuessLabel.text = revealedWord;
            guessLetterField.text = " ";
        }
        if(userGuessLabel.text!.contains("_") == false){
            guessCountLabel.text = "Congratulations! You guessed the word. Play again?"
            playAgainButton.isHidden = false;
            guessButton.isEnabled = false;
            guessed = guessed + 1;
            wordsGuessedLabel.text = "Words Guessed: "
            wordsGuessedLabel.text = wordsGuessedLabel.text! + String(guessed)
        }
        if(maxNumOfGuesses == 0){
            guessCountLabel.text = "I'm sorry, you are all out of guesses. Play again?"
            playAgainButton.isHidden = false;
            guessButton.isEnabled = false;
            missed = missed + 1;
            wordsMissedLabel.text = "Words Missed: "
            wordsMissedLabel.text = wordsMissedLabel.text! + String(missed);
        }
    }
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        playAgainButton.isHidden = true;
        letterGuessed = " ";
        userGuessLabel.text = " ";
        maxNumOfGuesses = 10;
        guessCountLabel.text = "You have " + String(maxNumOfGuesses) + " guesses left";
        count += 1;
        if(count == words[0].count){
            guessCountLabel.text = "Good Job! You finished the game.";
        }
        else{
            word = words[0][count]
            for _ in 1...words[0][count].count{
                userGuessLabel.text = userGuessLabel.text! + "_ ";
            }
            hintLabel.text = "Hint: ";
            hintLabel.text = hintLabel.text! + words[1][count];
            remaining = remaining - 1;
            wordsRemainingLabel.text = "Words Remaining:";
            wordsRemainingLabel.text = wordsRemainingLabel.text! + String(remaining);
            guessButton.isEnabled = true;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wordsGuessedLabel.text = wordsGuessedLabel.text! + String(guessed);
        wordsRemainingLabel.text = wordsRemainingLabel.text! + String(remaining);
        wordsMissedLabel.text = wordsMissedLabel.text! + String(missed);
        let total = words[0].count;
        totalWordsLabel.text = totalWordsLabel.text! + String(total);
        
        for _ in 1...words[0][0].count{
            userGuessLabel.text = userGuessLabel.text! + "_ ";
        }
        
        guessCountLabel.text = "You have " + String(maxNumOfGuesses) + " guesses left";
        hintLabel.text = "Hint: " + words[1][count];
    }
    
    @IBAction func enterLabelChanged(_ sender: UITextField) {
            
        var textEnterd = guessLetterField.text!;
        textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEnterd
    }
}

