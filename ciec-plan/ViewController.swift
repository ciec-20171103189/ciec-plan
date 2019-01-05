//
//  ViewController.swift
//  ciec-plan
//
//  Created by s20171103189 on 2018/10/27.
//  Copyright © 2018 s20171103189. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var str:Double = 0
    var display:Double = 1
    var extemp:Double = 0
    var divtex:Double = 1
    var sexabe:Double = 0

    @IBOutlet weak var result: UITextField!
    
    @IBAction func button1(_ sender: Any) {
        if(sexabe == 1)
        {
        result.text = ""
        }
        result.text = result.text! + "1"
        sexabe = 0
    }
    
    @IBAction func button2(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "2"
        sexabe = 0
    }
    
    @IBAction func button3(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "3"
        sexabe = 0
    }
    
    @IBAction func button4(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "4"
        sexabe = 0
    }
    
    @IBAction func button5(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "5"
        sexabe = 0
    }
    
    @IBAction func button6(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "6"
        sexabe = 0
    }
    
    @IBAction func button7(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "7"
        sexabe = 0
    }
    
    @IBAction func button8(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "8"
        sexabe = 0
    }
    
    @IBAction func button9(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "9"
        sexabe = 0
    }
    
    @IBAction func button0(_ sender: Any) {
        if(sexabe == 1)
        {
            result.text = ""
        }
        result.text = result.text! + "0"
        sexabe = 0
    }
    
    @IBAction func buttonMul(_ sender: Any) {
        if(str == 3)
        {
            display = temp + Double (result.text!)!
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
        }
        else if(str == 4)
        {
            display = temp - Double (result.text!)!
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
        }
        else if(str == 2)
        {
            display = display / Double (result.text!)!
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
        }
        else
        {
            display = display * Double (result.text!)!
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
        }
        str = 1
    }
    
    @IBAction func buttonDiv(_ sender: Any) {
        if(str == 3)
        {
            display = temp + Double (result.text!)!
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
            divtex = 0
        }
        else if(str == 1)
        {
            display = display * Double(result.text!)!
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
            divtex = 0
        }
        else if(str == 4)
        {
            display = temp - Double(result.text!)!
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
            divtex = 0
        }
        else
        {
            if(divtex != 1)
            {
                display = display / Double (result.text!)!
            }
            else
            {
                display = Double (result.text!)!
                divtex = 0
            }
            result.text = ""
            result.text = "\(display)"
            sexabe = 1
        }
        str = 2
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        if(str == 4)
        {
            temp = temp - Double (result.text!)!
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
        }
        else if(str == 1)
        {
            temp = display * Double (result.text!)!
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
        }
        else if(str == 2)
        {
            temp = display / Double (result.text!)!
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
        }
        else
        {
            temp = temp + Double (result.text!)!
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
        }
        str = 3
    }
    
    @IBAction func buttonReduce(_ sender: Any) {
        if(str == 3)
        {
            temp = temp + Double (result.text!)!
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
            extemp = 1
        }
        else if(str == 1)
        {
            temp = display * Double(result.text!)!
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
            extemp = 1
        }
        else if(str == 2)
        {
            temp = display / Double(result.text!)!
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
            extemp = 1
        }
        else
        {
            if(extemp != 0)
            {
            temp = temp - Double (result.text!)!
            }
            else
            {
            temp = Double (result.text!)!
            extemp = 1
            }
            result.text = ""
            result.text = "\(temp)"
            sexabe = 1
        }
        str = 4
    }
    
    @IBAction func buttonResult(_ sender: Any) {
        if str == 1
        {
            display = display * Double (result.text!)!
            result.text = "\(display)"
        }
        if str == 2
        {
            display = display / Double (result.text!)!
            result.text = "\(display)"
        }
        if str == 3
        {
            temp = temp + Double (result.text!)!
            result.text = "\(temp)"
        }
        if str == 4
        {
            temp = temp - Double (result.text!)!
            result.text = "\(temp)"
        }
        temp = 0
        display = 1
        extemp = 0
        divtex = 1
        str = 0
        sexabe = 0
    }
    
    @IBAction func buttonDelet(_ sender: Any) {
        result.text = ""
        temp = 0
        display = 1
        extemp = 0
        divtex = 1
        str = 0
        sexabe = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
