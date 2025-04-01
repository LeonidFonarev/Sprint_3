//
//  ViewController.swift
//  Counter
//
//  Created by Leonid on 01.04.2025.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var refresher: UIButton!
    @IBOutlet weak var console: UITextView!
    @IBOutlet weak var reset: UIButton!
    
    var counting: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        console.isEditable = false
        console.isScrollEnabled = true
    }
    
    
    @IBAction func Reset(_ sender: Any) {
        console.text.removeAll()
    }
    
    
    @IBAction func PlusButton(_ sender: Any) {
        counting += 1
        counter.text = "\(counting)"
        let newText: String = " [\(DateTimeToDay())]: \n значение изменено на +1\n"
        console.text.append(newText)
    }
    
    
    @IBAction func MinusButton(_ sender: Any) {
        if counting > 0 {
            counting -= 1
            counter.text = "\(counting)"
            let newText: String = "[\(DateTimeToDay())]: \n значение изменено на -1\n"
            console.text.append(newText)
        } else {
            let newText: String = "[\(DateTimeToDay())]:попытка уменьшить значение счётчика ниже 0\n"
            console.text.append(newText)
        }
    } 
    
    
    
    @IBAction func Refresher(_ sender: Any) {
        counting = 0
        counter.text = "\(counting)"
        let newText: String = "\(DateTimeToDay())\n Внесено изменение 'Обнуление'\n"
        console.text.append(newText)
    }
}

