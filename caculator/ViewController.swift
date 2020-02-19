//
//  ViewController.swift
//  caculator
//
//  Created by Toan on 2/18/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UILabel!
    @IBOutlet weak var myView2: UILabel!
    var mang : [Double]  = []
    var firstnumber : Double = 0
    var SecondNumber :Double = 0
    var paramaterOnSreen :Bool = false
    var operation :Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
         
    }
    
   
    @IBAction func ButonAct(_ sender: UIButton) {
        if paramaterOnSreen == true{
            paramaterOnSreen = false
            myView2.text =  String(firstnumber)
            myView.text = String(sender.tag)
            SecondNumber = Double(myView.text ?? "") ?? 0
            
         
        }else if paramaterOnSreen == false {
        
            myView.text = myView.text! + String(sender.tag)
            
            
        }
    }
    
    @IBAction func ACTION(_ sender:UIButton) {
        var chon = sender.tag
        
        
         if chon == 10{
            firstnumber = 0
            SecondNumber = 0
            myView.text = ""
            myView2.text = ""
        }else if chon == 11{
            firstnumber = Double(myView.text!)!
            myView.text =  "/"
            paramaterOnSreen = true
            operation = 11
        }else if chon == 12 {
            
            firstnumber = Double(myView.text!)!
            mang.append(firstnumber)
            myView.text = "*"
            paramaterOnSreen = true
            operation = 12
           
        }else if chon == 13 {
           firstnumber = Double(myView.text!)!
            mang.append(firstnumber)
            myView.text = "-"
            paramaterOnSreen = true
             operation = 13
           
        }else if chon == 14 {
            firstnumber = Double(myView.text!)!
             mang.append(firstnumber)
            myView.text = "+"
            paramaterOnSreen = true
           operation = 14
        }else if chon == 15{
            if operation == 11{
                myView.text  = String(firstnumber/SecondNumber)
                 myView2.text =  String(firstnumber)  + "/" + String(SecondNumber)
                 
            } else if operation == 12 {
                myView.text  = String(firstnumber*SecondNumber)
                myView2.text =  String(firstnumber)  + "*" + String(SecondNumber)
            }else if operation == 13{
                myView.text  = String(firstnumber-SecondNumber)
                myView2.text =  String(firstnumber)  + "-" + String(SecondNumber)
            }else if operation == 14 {
                myView.text  = String(firstnumber+SecondNumber)
                myView2.text =  String(firstnumber)  + "+" + String(SecondNumber)
            }
            
        }
    
    
    
    /*case divide
    case multiply
    case minus
         case plus*/
        
    }
    
    
    
}

