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

func printItems(arr : [String]) {
    for var item in arr{
        print(item)
    }
}

func selectItem(arr : [String]) -> Int {
    var t = Int()
    printItems(arr : arr)
    print("Type selected")
    var selectedItem:String = readLine()!
    if arr.contains(selectedItem){
        for i in 0..<arr.count {
            if arr[i] == selectedItem {
                t = i
            }
        }
    }else{
        print("Such item missing")
    }
    return t
}

while !exitKey {
    print("Type operation key [ add | add-e | rm | rml | ls | e ]: ")
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
        print("Type new text")
        itemsList[selectItem(arr : itemsList)] = readLine()!
        
    case "rml":
        itemsList.removeLast()
        print("Last list item has removed")
        
    case "rm":
        print("Type which one should be deleted")
        itemsList.remove(at: selectItem(arr : itemsList))
        
    case "ls":
        print("List of items:")
        printItems(arr : itemsList)
        
    case "e":
        exitKey = true
        print("Program Exit!")
        
    default:
        print("Wrong operation key")
        break
    }
    
}

