
//
//  ViewController.swift
//  Calculator
//
//  Created by Ahmd Amr on 6/1/20.
//  Copyright © 2020 Ahmd Amr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cm = CalcManager()
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClearButton(_ sender: UIButton) {
        resultLabel.text = "0"
        cm.num1 = 0.0; cm.res = 0.0
        cm.opr = ""
        cm.flag = false; cm.f = 0
    }
    @IBAction func Negator(_ sender: UIButton) {
        let x = cm.checker(lbl: resultLabel.text, resLbl: resultLabel.text!)
        if x.contains("."){
            resultLabel.text = "\(-Float(x)!)"
        } else {
            resultLabel.text = "\(-Int(x)!)"
        }
    }
    @IBAction func percentButton(_ sender: UIButton) {
        var num = Float(resultLabel.text!)!
        num /= 100
        resultLabel.text = "\(num)"
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        cm.operation(operate: "div", resLbl: resultLabel.text!)
    }
    @IBAction func multiplicationButton(_ sender: UIButton) {
        cm.operation(operate: "mul", resLbl: resultLabel.text!)
    }
    @IBAction func minusButton(_ sender: UIButton) {
        cm.operation(operate: "min", resLbl: resultLabel.text!)
    }
    @IBAction func plusButton(_ sender: UIButton) {
        cm.operation(operate: "pls", resLbl: resultLabel.text!)
    }
    @IBAction func equalButton(_ sender: UIButton) {
        resultLabel.text = cm.calc(op: cm.opr, resLbl: resultLabel.text!)
        cm.num1 = 0.0; cm.res = 0.0
        cm.opr = ""
        cm.flag = false; cm.f = 0
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
        if !(resultLabel.text?.contains("."))!{
            resultLabel.text! += "."
        }
    }
    
    @IBAction func zeroBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "0", resLbl: resultLabel.text!)
    }
    @IBAction func oneBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "1", resLbl: resultLabel.text!)
    }
    @IBAction func twoBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "2", resLbl: resultLabel.text!)
    }
    @IBAction func threeBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "3", resLbl: resultLabel.text!)
    }
    @IBAction func fourBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "4", resLbl: resultLabel.text!)
    }
    @IBAction func fiveBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "5", resLbl: resultLabel.text!)
    }
    @IBAction func sixBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "6", resLbl: resultLabel.text!)
    }
    @IBAction func sevenBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "7", resLbl: resultLabel.text!)
    }
    @IBAction func eightBuutton(_ sender: UIButton) {
       resultLabel.text = cm.takeNum(stringNum: "8", resLbl: resultLabel.text!)
    }
    @IBAction func nineBuutton(_ sender: UIButton) {
        resultLabel.text = cm.takeNum(stringNum: "9", resLbl: resultLabel.text!)
    }

}
