//
//  ViewController.swift
//  CalculatorSMV
//
//  Created by Max Simchyk on 06.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calculatorWorking: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    
    var working: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        // Do any additional setup after loading the view.
    }
    func clearAll ()
    {
        working = ""
        calculatorWorking.text = ""
        calculatorResults.text = ""
        
    }
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }

    @IBAction func backTap(_ sender: Any) {
        if(!working.isEmpty){
            working.removeLast()
            calculatorWorking.text = working
        
        }
    }
    func addToWorking(value: String){
        working=working + value
        calculatorWorking.text = working
    }
    @IBAction func percentTap(_ sender: Any) {
        addToWorking(value: "%")
    }
    @IBAction func divideTap(_ sender: Any) {
        addToWorking(value: "/")
    }

    @IBAction func timesTap(_ sender: Any) {
        addToWorking(value: "X")
    }
    
    @IBAction func minusTap(_ sender: Any) {
        addToWorking(value: "-")
    }
    
    @IBAction func plusTap(_ sender: Any) {
        addToWorking(value: "+")
    }
    
    @IBAction func decimalTap(_ sender: Any) {
        addToWorking(value: "/")
    }
    
    @IBAction func sevenTap(_ sender: Any) {
        addToWorking(value: "7")
    }
    
    @IBAction func eightTap(_ sender: Any) {
        addToWorking(value: "8")
    }
    
    @IBAction func nineTap(_ sender: Any) {
        addToWorking(value: "9")
    }
    
    @IBAction func fourTap(_ sender: Any) {
        addToWorking(value: "4")
    }
    @IBAction func fiveTap(_ sender: Any) {
        addToWorking(value: "5")
    }
    @IBAction func sixTap(_ sender: Any) {
        addToWorking(value: "6")
    }
    
    @IBAction func oneTap(_ sender: Any) {
        addToWorking(value: "1")
    }
    
    @IBAction func twoTap(_ sender: Any) {
        addToWorking(value: "2")
    }
    
    @IBAction func threeTap(_ sender: Any) {
        addToWorking(value: "3")
    }
    @IBAction func equalsTap(_ sender: Any) {
        let expression = NSExpression(format: working)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        calculatorResults.text = resultString
    }
    func formatResult(result: Double)-> String
    {
        if(result.truncatingRemainder(dividingBy: 1) == 0)
        {
            return String(format: "%.0f", result)
        }
        else
        {
            return String (format: "%.2f", result)
        }
    }
















}

