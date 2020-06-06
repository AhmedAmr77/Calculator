//
//  CalcManager.swift
//  Calculator
//
//  Created by Ahmd Amr on 6/5/20.
//  Copyright © 2020 Ahmd Amr. All rights reserved.
//

import Foundation

class CalcManager {
    
    var num1:Float = 0.0
    var num2:Float = 0.0
    var res:Float = 0.0
    var opr : String = ""
    var flag = false
    var f = 0
    var oprFlag = false
    
    
    func takeNum(stringNum: String, resLbl: String) -> String {
        oprFlag = false
        var lbl = resLbl
        if flag {
            lbl = "0"
            flag = false
        }
        if (lbl.contains(".")){      //for dotButton, when adding . and the resultLbl is 0 .
            lbl += "\(stringNum)"
            return lbl
        } else {
            if Float(lbl)! == 0 {
                lbl = "\(stringNum)"
                return lbl
            } else{
                lbl += "\(stringNum)"
                return lbl
            }
        }
    }
    
    func operation(operate: String, resLbl: String) {
        if !oprFlag {
            if f != 0 {
                _ = calc(op: opr, resLbl: resLbl)
                num1 = Float(res)
            } else {
                num1 = Float(resLbl)!
            }
        }
        oprFlag = true
        opr = operate
        flag = true
        f = 1
    }
    
    func checker(lbl: String?, resLbl: String) -> String {
        let dec = Float(lbl!)!.truncatingRemainder(dividingBy: 1) //to know if num is decimal or not.
        if dec == 0 && !resLbl.contains("."){  //second condition for if user enter 12.0 ERROR will appear.
            return "\(Int(Float(lbl!)!))" //Float(lbl) for when add int+int ERROR (can't convert float String to Int) --> Int(lbl)
        } else{
            return "\(Float(lbl!)!)"
        }
    }
    
    func calc(op: String, resLbl: String) -> String {
        num2 = Float(resLbl)!
        switch op {
        case "div":
            res = num1 / num2
        case "mul":
            res = num1 * num2
        case "min":
            res = num1 - num2
        case "pls":
            res = num1 + num2
        default:
            print("erroooor")
        }
        return checker(lbl: "\(res)", resLbl: resLbl)
    }
    
}
