//
//  ViewController.swift
//  star_pattern_logic
//
//  Created by Jamal Ahamad on 20/01/18.
//  Copyright © 2018 Jamal Ahamad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //triangleUPSideDown()
        //triangleUpSideDownwithSpace()
        //triangleDownSideUp()
       // pyramidUpSideDown()
       // pyramidDownsideUp()
       // pyramidUpsideDownWithLogical()
        //pyramidUpsideDownWithSpaceAndLogical()
        //printDiamond()
        printSquare()
    }

    // MARK:- Triangle !!!!! ..

    func triangleUPSideDown()  {
        
        for i in 1...5{
            
            for _ in 1...i{
            
              print("*", terminator: "")
            }
            
            print("")
        }
    }
    
    func triangleUpSideDownwithSpace(){
        var space = 4
        for i in 1...5{
            
            for _ in 0..<space{
                
                print(" ", terminator: "")
            }
            for _ in 0..<i{
                
                print("*", terminator: "")
            }
            space -= 1
            print("")
        }
        
    }
    
    func triangleDownSideUp(){
        var star = 5
        for i in 1...5{
            
            for _ in 1..<i{
                
                print(" ", terminator: "")
            }
            for _ in 0..<star{
                
                print("*", terminator: "")
            }
            star -= 1
            print("")
        }
    }
    // MARK:- PYRAMID !!!!
    
    func pyramidUpSideDown(){
        
        var space = 5
        for i in 1...5{
            
            for _ in 1..<space{
                
                print(" ", terminator: "")
            }
            for _ in 0..<i{
                
                print("* ", terminator: "")
            }
            space -= 1
            print("")
        }
        
    }
    
    func pyramidDownsideUp(){
        
        var star = 5
        let n = 5
        for i in 0...3{
            
            for _ in 0..<i{
                
                print(" ", terminator: "")
                
            }

//            for _ in 0...star{
//
//                print("* ", terminator: "")
//            }
            //  without space
            
            for _ in 0...(n - (2*i-1)){
                
                print("*", terminator: "")
                
            }
             print("")
             star -= 1
            
        }
        
    }
    
    func pyramidUpsideDownWithLogical(){
    
        for i in 0..<4{
            
            for j in 0...6{
                
                if j>=3-i && j <= 3+i{
                    
                    print("*", terminator: "")
                    
                }else {
                    
                    print(" ", terminator: "")
                }
            }
            
            print("")
        }
    }
    
    func pyramidUpsideDownWithSpaceAndLogical(){
        var k = 1
        for i in 1...5{
            
            for j in 1...9{
                
                if j <= 4+i && j>=6-i && k == 1{
                    
                      print("*", terminator: "")
                      k = 0
                }else{
                      print(" ", terminator: "")
                      k=1
                }
            }
            
            print("")
        }
    }
    
    func printDiamond(){
        var lastRow = 0
        for i in 0...7{
            
            if i<=3{
                lastRow += 1
            }else{
                lastRow -= 1
            }
            for j in 0...7{
                
                if j>=5-lastRow && j <= 3+lastRow{
                    
                    print("*", terminator: "")
                    
                }else {
                    
                    print(" ", terminator: "")
                }
            }
            
            print("")
        }
        
    }
    
    func printSquare(){
       
        for i in 0...5{
            
            for j in 0...7{
                
                if (j == 0 || j==7 || i==0 || i==5) {
                  
                    print("*", terminator: "")
            
                } else{
                    
                    print(" ", terminator: "")
            
                }
        }
            print("")
    }
  }
}



