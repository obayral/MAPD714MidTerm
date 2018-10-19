//
//  ViewController.swift
//  ShoppingList
//  Author Oguz Bayral
//  Student ID: 301029119
//  Created on 18.10.2018.
//  Copyright © 2018 CentennialCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //declaring variables for default values of list name and quantity
    var defaultListName:String! = "My Shopping List"
    var defaultQuantity:String! = "1"
    
    //declaring the quantities and the list label as an outlet
    @IBOutlet weak var quantityItem1: UITextField!
    @IBOutlet weak var quantityItem2: UITextField!
    @IBOutlet weak var quantityItem3: UITextField!
    @IBOutlet weak var quantityItem4: UITextField!
    @IBOutlet weak var quantityItem5: UITextField!
    @IBOutlet weak var listName: UITextField!
    
    //Declaring Optional Int for getting the current quantity values of each items
    var currentValue: Int!
    var currentValue2:Int!
    var currentValue3:Int!
    var currentValue4:Int!
    var currentValue5:Int!
    
    //function to increase the first quantity variable
    @IBAction func increase(_ sender: UIButton) {
        currentValue = Int(quantityItem1.text!)
        currentValue! = currentValue!+1
        quantityItem1.text! = String(currentValue!)
    }
    
    //function to decrease the first quantity variable
    @IBAction func decrease(_ sender: UIButton) {
        if currentValue > 1 {
            currentValue = Int(quantityItem1.text!)
            currentValue! = currentValue!-1
            quantityItem1.text! = String(currentValue!)
        }
    }
    
    //function to increase the second quantity variable
    @IBAction func increaseItem2(_ sender: UIButton) {
        currentValue2 = Int(quantityItem2.text!)
        currentValue2! = currentValue2!+1
        quantityItem2.text! = String(currentValue2!)
    }
    
    //function to decrease the second quantity variable
    @IBAction func decreaseItem2(_ sender: UIButton) {
        
        if currentValue2 > 1 {
            currentValue2 = Int(quantityItem2.text!)
            currentValue2! = currentValue2!-1
            quantityItem2.text! = String(currentValue2!)
        }
    }
    
    //function to increase the third quantity variable
    @IBAction func increaseItem3(_ sender: UIButton) {
        currentValue3 = Int(quantityItem3.text!)
        currentValue3! = currentValue3!+1
        quantityItem3.text! = String(currentValue3!)
    }
    
    //function to decrease the third quantity variable
    @IBAction func decreaseItem3(_ sender: UIButton) {
        if currentValue3 > 1 {
            currentValue3 = Int(quantityItem3.text!)
            currentValue3! = currentValue3!-1
            quantityItem3.text! = String(currentValue3!)
        }
    }
    
    //function to decrease the fourth quantity variable
    @IBAction func decreaseItem4(_ sender: Any) {
        if currentValue4 > 1 {
            currentValue4 = Int(quantityItem4.text!)
            currentValue4! = currentValue4!-1
            quantityItem4.text! = String(currentValue4!)
        }
    }
    
    //function to increase the fourth quantity variable
    @IBAction func increaseItem4(_ sender: UIButton) {
        currentValue4 = Int(quantityItem4.text!)
        currentValue4! = currentValue4!+1
        quantityItem4.text! = String(currentValue4!)
    }
    
    //function to decrease the fifth quantity variable
    @IBAction func decreaseItem5(_ sender: Any) {
        if currentValue5 > 1 {
            currentValue5 = Int(quantityItem5.text!)
            currentValue5! = currentValue5!-1
            quantityItem5.text! = String(currentValue5!)
        }
    }
    
    //function to increase the fifth quantity variable
    @IBAction func increaseItem5(_ sender: UIButton) {
        currentValue5 = Int(quantityItem5.text!)
        currentValue5! = currentValue5!+1
        quantityItem5.text! = String(currentValue5!)
    }
    
    
    //setting the display options of the main story board when at begininning
    override func viewDidLoad() {
        super.viewDidLoad()
        listName.textAlignment = .center
        quantityItem1.isUserInteractionEnabled=false
        quantityItem2.isUserInteractionEnabled=false
        quantityItem3.isUserInteractionEnabled=false
        quantityItem4.isUserInteractionEnabled=false
        quantityItem5.isUserInteractionEnabled=false
        listName.text = defaultListName
        quantityItem1.text = defaultQuantity
        quantityItem2.text = defaultQuantity
        quantityItem3.text = defaultQuantity
        quantityItem4.text = defaultQuantity
        quantityItem5.text = defaultQuantity
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //cancel button, simply calls the viewDidLoad method
    @IBAction func refresh(_ sender: UIButton) {
        viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        guard let calcOpt = segue.destination as? MyList else{return}
        
    }
}

