//
//  ViewController.swift
//  Tarea1
//
//  Created by Rodolfo Melin on 24/08/16.
//  Copyright © 2016 rodo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var textBookNumber: UITextField!
    
    
    @IBOutlet weak var showData: UITextView!
    


    @IBAction func returnKeyPressed(sender: AnyObject) {
        
        
        if(textBookNumber.text != ""){
        
            let BASE_URL = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
            
            
            
           let url = NSURL(string:BASE_URL+textBookNumber.text!)
            
            
            print(url!)
            
            
            let datos:NSData? = NSData(contentsOfURL: url!)
            
            if (datos != nil){
             let texto = NSString(data:datos!,encoding: NSUTF8StringEncoding)
              showData.text =  texto as! String;
             
            }else{
            showData.text = "There is not internet connection"
            }
            
            
        
        }
   
    }
   
    @IBAction func getBooks(sender: AnyObject) {
        textBookNumber.text=""
        
    }

}


   