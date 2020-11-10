//
//  ViewController.swift
//  SwipeTableViewCell
//
//  Created by Владимир Коваленко on 04.11.2020.
//  Copyright © 2020 Vladimir Kovalenko. All rights reserved.
//

import UIKit
import SwipeCellKit
import MGSwipeTableCell

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       // tableView.separatorStyle = .
        tableView.backgroundColor = .cyan
        tableView.dataSource = self
       
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "CELL")
        
        
    }
    
    var array = ["Adox CMH 125","Adox CMH 400","Adox CMS 25","Adox CHS 50","Adox CHS 100","Adox CHS 100II","Adox CMS 20","Adox CMS 20II","Adox ORT 25","Adox PAN 25","Adox Silvermax","Agfa Cinerex IC1N","Agfa Copex","Agfa Copex Rapid","AgfaPhoto APX 100","AgfaPhoto APx 400 ","Argenti LSRF","Argenti Pan X","Argenti Protopan 400","Arista EDU Ultra 100","Arista EDU Ultra 200","Arista EDU Ulrta 400","Arista II 100","Arista II 400","Arista Premium 100","Arista Premium 400","Astrum A2-SH","Astrum FN64","Astrum Foto 100","Astrum Foto 200","Astrum Foto 400","Astrum MZ-3","Astrum Micrat-Orto","Astrum NK-2","Astrum NK-2SH","Astrum ZT-8 ","Aviphot APX 200 S","Aviphot APX 400 S","Aviphot ASP 400 S ",
                 "Bergger Pancro 400","Bluefire Pan 400","Bluefire Police"
                 ,"ERA 100","Eastman 2366","Eastman 2383","Eastman 5129","Eastman 5201","Eastman 5203","Eastman 5205","Eastman 5207"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! TableViewCell
        cell.delegate = self
        
        cell.textLabel?.text = array[indexPath.section]
        
        if indexPath.section == 0 {
            
            cell.roundCorners(corners: [.topRight, .topLeft], radius: 25.0)
            
            let volumeBut = MGSwipeButton(title: " Убрать звук", icon: #imageLiteral(resourceName: "albums_mute"), backgroundColor: #colorLiteral(red: 0.9441747069, green: 0.5805539489, blue: 0.2003090978, alpha: 1))
            volumeBut.buttonWidth = 80
            
            let stackBut = MGSwipeButton(title: " В список", icon: #imageLiteral(resourceName: "albums_inlist"), backgroundColor:#colorLiteral(red: 0.01496514957, green: 0.4769831896, blue: 0.9854087234, alpha: 1))
            
            cell.rightButtons = [stackBut, volumeBut]
            
        } else if indexPath.section == 1 {
            cell.roundCorners(corners: [.topRight, .bottomRight], radius: 25.0)
            
            let volumeBut = MGSwipeButton(title: " Вкл. звук", icon: #imageLiteral(resourceName: "albums_unmute"), backgroundColor: #colorLiteral(red: 0.9441747069, green: 0.5805539489, blue: 0.2003090978, alpha: 1))
            
            let stackBut = MGSwipeButton(title: " Убрать из списка", icon: #imageLiteral(resourceName: "albums_outlist"), backgroundColor:#colorLiteral(red: 0.01496514957, green: 0.4769831896, blue: 0.9854087234, alpha: 1))
            
            cell.rightButtons = [stackBut, volumeBut]
        }
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}

extension ViewController: MGSwipeTableCellDelegate {
    
    //
}
