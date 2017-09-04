//
//  main.swift
//  ToDoList Console
//
//  Created by Admin on 9/2/17.
//  Copyright © 2017 Yurii Krupa. All rights reserved.
//

import Foundation

var exitKey:Bool = false
var itemsList:[String] = []

func selectItem() -> Int {
    var t = Int()
    for var item in itemsList{
        print(item)
    }
    print("Type selected")
    var selectedItem:String = readLine()!
    if itemsList.contains(selectedItem){
        for i in 0..<itemsList.count {
            if itemsList[i] == selectedItem {
                t = i
            }
        }
    }else{
        print("Such item missing")
    }
    return t
}

while !exitKey {
    print("Type operation key [ add | add-e | rm | rml | ls | e]: ")
    let key:String = readLine()!
    switch key {
        
    case "add":
        print("Type in your note")
        let item:String = readLine()!
        if itemsList.contains(item) {
            print("Item is already exist")
        }else{
            itemsList.append(item)
        }
        
    case "add-e":
        print("Type which one should be modified")
        /* for var item in itemsList{
         print(item)
         }
         print("Type selected")
         var selectedItem:String = readLine()!
         if itemsList.contains(selectedItem){
         for i in 0..<itemsList.count {
         if itemsList[i] == selectedItem {
         print("Type new text")
         itemsList[i] = readLine()!
         }
         }
         }else{
         print("Such item missing")
         break
         } */
        
        print("Type new text")
        itemsList[selectItem()] = readLine()!
        
    case "rml":
        itemsList.removeLast()
        print("Last list item has removed")
        
    case "rm":
        print("Type which one should be deleted")
        /* for var item in itemsList{
         print(item)
         }
         print("Type selected")
         var selectedItem:String = readLine()!
         if itemsList.contains(selectedItem){
         for i in 0..<itemsList.count {
         if itemsList[i] == selectedItem {
         itemsList.remove(at: i)
         
         }
         }
         }else{
         print("Such item missing")
         break
         }
         */
        itemsList.remove(at: selectItem())
        
    case "ls":
        print("List of items:")
        for var item in itemsList{
            print(item)
        }
        
    case "e":
        exitKey = true
        print("Program Exit!")
        
    default:
        print("Wrong operation key")
        break
    }
    
}

