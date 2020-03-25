//
//  ViewController.swift
//  SwiftTest
//
//  Created by mac on 2019/11/5.
//  Copyright © 2019 my. All rights reserved.
//

import UIKit

struct People {
    var name = "name"
    var age = 10
    var sex = "man"
}

struct Model {
    var a : Int
    var b : String
    var c : Bool
    
}


class Class2 {
    var mark : Int!
}

struct sample {
    lazy var sam = sample2()
}

struct sample2 {
    let name = "name"
}

struct number {
    let num = 3.14
    var digisit :Int
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var sam = sample()
        
        print("\(sam.sam.name)")
        
        
        var n = number(digisit: 999)
        
        print("num = \(n.num) digisit = \(n.digisit)")
        
        n.digisit = 1000
                
        print("digisit = \(n.digisit)")
        
        let cl2 = Class2()
        
//        cl2.mark = 100;
        
//        print("---- \(String(describing: cl2.mark))")
        
        let cl3 = cl2
        
        if cl2 === cl3 {
            print("2 === 3")
        }
        
        if cl2 !== cl3 {
            print("2 !== 3")
        }
        
        
        
        let mystring = "viewdidload"
        print(mystring)
        
        let people = People()
        
        print("people === \(people.name) === \(people.age) === \(people.sex)")
        
        
        var model = Model(a: 99, b: "bbb", c: true)
        
        print("a = \(model.a) b = \(model.b) c = \(model.c)")
        
        model.a = 100
        
        model.b = "dddd"
        
        model.c = false
        
        print("a = \(model.a) b = \(model.b) c = \(model.c)")
        
    
        let btn = UIButton()
        
        self.view.addSubview(btn)

        btn.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: 50)
        
        btn.setTitle("my button", for: UIControl.State.normal)
        
        btn.setTitleColor(UIColor.black, for: UIControl.State.normal)
        
        btn.backgroundColor = UIColor.yellow
        
        btn.tag = 99
        
        btn.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
        
        let lab = UILabel()
        
        self.view .addSubview(lab)

        let labRect : CGRect = CGRect(x: 0, y: self.view.frame.size.height/2, width: self.view.frame.size.width, height: 100)
        
        lab.frame = labRect
        
        lab.text = "my label"

        lab.textColor = UIColor.black
        
        lab.font = UIFont.systemFont(ofSize: 15)
        
        lab.backgroundColor = UIColor.red
        
        lab.textAlignment = NSTextAlignment.center
        
        lab.numberOfLines = 10
        
        let string = getString()

        print("string = \(string)")
        
        lab.text = string
        
        let bounds = getMaxMin(array: [0,3,5,7,2,1,8,9,100])
        
        print("min=\(bounds.min)  max=\(bounds.max)")
        
        lab.text = "min:\(bounds.min) max:\(bounds.max)"
        
        var someDict2 : [Int : String] = [1:"one",2:"two",3:"three"]
        
        let value = someDict2[1]

        print("value = \(String(describing: value))")
        
        someDict2.updateValue("one+one", forKey: 1)
        
        print("value = \(String(describing: someDict2[1]))")
        
        someDict2.removeValue(forKey: 2)
        
        print("2 = \(String(describing: someDict2[2]))")
        
        
        var array = [Int]()
        
        array.append(3)
        
        var arry2 = [Int](repeating: 0, count: 2)
        
        arry2.append(2)
        
        var array3 = array + arry2
        
        array3.append(1)
        
        array3 += [10]
        
        for index in array3 {
            print("index = \(index)")
        }
        
        var yuanzu = (1,2,3)
        
//        let yuanzu2 = (Bool:true,Int:1,Float:0.5,Float:1.5)
        
        print("a = \(yuanzu.0)")
        
        yuanzu = (10,20,30)
        
        print("a2 = \(yuanzu.0)")
        
//        print("yuanzu2 = \(yuanzu2.Bool) = \(yuanzu2.Int) = \(yuanzu2.Float)")
        
        
        let devid = {(v1:Int,v2:Int) -> Int in
            return v1 + v2;
        }
        
        let result = devid(10,20)
        
        print("result = \(result)")
        
        
        
        let numbers = [1,4,9,7,8,0,2,6,3,5]
        
        let nums1 = numbers.sorted()
        
        print("nums1 = \(nums1)")
        
     
        let nums2 = numbers.sorted(by:sort)
        
        print("nums2 = \(nums2)")
       
        
        
        
    }
    
    
    
    
    
    @objc func btnAction(sender : UIButton){
        print("tag = \(sender.tag)")
        
    }
    

    let flag = sort(num1: 1, num2: 2)
    
}

func action(a:Int,b:Int){
    print("a == \(a) b == \(b)")
}

func sort(num1:Int,num2:Int) -> Bool {
    return num1 > num2
}

func sortArr(arr:Array<Int>) -> Array<Int>{
    return arr
}

func getString() -> String{
    return "123456"
}


func getMaxMin(array:[Int]) -> (min:Int , max:Int) {
    print("array = \(array)")
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[0..<array.count] {
        if value < currentMin{
            currentMin = value
        }
        else if value > currentMax{
            currentMax = value
        }
    }
    return(currentMin,currentMax)
    
}
