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
    var resurt : Double = 0
    var firstnumber : Double = 0
    var Secondnumber : Double = 0
    var firstnumberS : String = ""
    var SecondnumberS : String = ""
    var curentParamater = Paramater.none
     enum Paramater{
    case division
    case mutil
    case minus
    case add
    case none
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func ButonAct(_ sender: UIButton) {
        if curentParamater == .none   {
            firstnumberS += String(sender.tag)
            
            firstnumber = Double(firstnumberS)!
            myView.text = String(firstnumber)
            
        } else if curentParamater != .none && Secondnumber != 0   {
           SecondnumberS = String(sender.tag)
            Secondnumber = Double(SecondnumberS)!
            myView.text = SecondnumberS
        }else if curentParamater != .none && Secondnumber == 0   {
        myView.text = String(sender.tag)
        Secondnumber = Double(myView.text!)!
        }
        
    }
    
    @IBAction func ACTION(_ sender:UIButton) {
        switch curentParamater {
               case .division:
                 firstnumber /= Secondnumber
                 resurt = firstnumber
                   myView.text = String(resurt)
               case .mutil:
                   firstnumber *= Secondnumber
                   resurt = firstnumber
                   myView.text = String(resurt)
               case .minus :
                   firstnumber -= Secondnumber
                   resurt = firstnumber
                   myView.text = String(resurt)
               case .add :
                   firstnumber += Secondnumber
                   resurt = firstnumber
                   myView.text = String(resurt)
               default:
                   print("none")
               }
        switch sender.tag {
        case 10:
            curentParamater = .none
            firstnumber = 0
            Secondnumber = 0
            firstnumberS = ""
            SecondnumberS = ""
            resurt = 0
            myView.text = String(resurt)
            
        case 11:
            curentParamater = .division
        case 12:
            curentParamater = .mutil
        case 13 :
            curentParamater = .minus
        case 14 :
            curentParamater = .add
        case 15:
            myView.text = String(resurt)
        default:
            curentParamater = .none
        }
       

    }
    
    
    }
    
    /*case divide
    case multiply
    case minus
         case plus*/
        
    
    
    
    


