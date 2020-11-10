////
////  SwipeTableViewController.swift
////  SwipeTableViewCell
////
////  Created by Владимир Коваленко on 05.11.2020.
////  Copyright © 2020 Vladimir Kovalenko. All rights reserved.
////
//
//import UIKit
//import SwipeCellKit
//
//class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
//   
//    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//    
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
//           guard orientation == .right else { return nil }
//        
//        let stack = SwipeAction(style: .default, title: "В список") { action, indexPath in
//            
//        }
//        let volume = SwipeAction(style: .default, title: "Убрать Звук") { action, indexPath in
//            
//        }
//        if indexPath.row % 2 == 1{
//            stack.image = UIImage(systemName: "text.badge.plus")
//            self.list()
//        }else{
//            stack.image = UIImage(systemName: "text.badge.minus")
//            stack.title = "Убрать из списка"
//            self.unlist()
//        }
//        if indexPath.row % 2 == 0{
//            volume.image = UIImage(systemName: "speaker.slash")
//            self.volume()
//        }else{
//            volume.image = UIImage(systemName: "speaker")
//            volume.title = "Вкл. звук"
//            self.novolume()
//        }
//        
//        stack.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
//        //stack.image = UIImage(systemName: "text.badge.plus")
//        //volume.image = UIImage(systemName: "speaker.3")
//        volume.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
//        return [stack,volume]
//       }
//    
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)  as! SwipeTableViewCell
//     cell.delegate = self
//    return cell
//    }
//    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath,
//                   for orientation: SwipeActionsOrientation) -> SwipeOptions {
//        var options = SwipeOptions()
//        options.expansionStyle = .selection
//        return options
//    }
//    
//    func list(){
//    
//    }
//    func volume(){
//   
//      }
//    func unlist(){
//
//    }
//    func novolume(){
//    
//      }
//    
//}
