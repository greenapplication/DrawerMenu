//
//  LeftDrawerVC.swift
//  DrawerMenu
//
//  Created by MindLogic Solutions on 30/06/16.
//  Copyright © 2016 com.mls. All rights reserved.
//

import UIKit

class LeftDrawerVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    
    var arrayOfMenuNames:NSArray=["Dashboard","Groups","Messaging","Templates","Packages","Billing","Developers","Notifications","Support","Logout"]
    var arrayForGroups:NSArray=["Show Groups","Add Group"]
    var arrayForMessaging:NSArray=["Send Single Message","Send Single Message Later","Send Message to Group","Single Message History","Group Message History","API Message History","All Message History","All Message in Que"]
    var arrayForTemplates:NSArray=["List Templates","Add Template"]
    var arrayForPackages:NSArray=["Purchase New Package","Active Packages","Packages Purchase History"]
    var arrayForBilling:NSArray=["Invoices","Paid Invoices","Un-Paid Invoices"]
    var arrayForDevelopers:NSArray=["API Documentation","API Key"]
    var arrayForNotifications:NSArray=["Public Notifications","Private Notifications"]
    
    //array for menu list bool
    var arrayOfMenuNamesBool:NSMutableArray=["0","0","0","0","0","0","0","0","0","0"]
    
    //array for Menu Icon
    var arrayForIcon:NSMutableArray=["dashboard","group","message","template","packageicon","billing","developer","notification","setting","logout"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //disable automatically scroll when first time enter in drawer
        self.automaticallyAdjustsScrollViewInsets=false
        
        //hides empty cells in tableview
        tblView.tableFooterView = UIView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - tableview methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.arrayOfMenuNames.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(self.arrayOfMenuNamesBool.objectAtIndex(section).boolValue == true)
        {
            
            if section == 1 {
                if self.arrayForGroups.count > 0
                {
                    return self.arrayForGroups.count
                }
            }else if section == 2{
                if self.arrayForMessaging.count > 0
                {
                    return self.arrayForMessaging.count
                }
            }else if section == 3{
                if self.arrayForTemplates.count > 0
                {
                    return self.arrayForTemplates.count
                }
            }else if section == 4{
                if self.arrayForPackages.count > 0
                {
                    return self.arrayForPackages.count
                }
            }else if section == 5{
                if self.arrayForBilling.count > 0
                {
                    return self.arrayForBilling.count
                }
            }else if section == 6{
                if self.arrayForDevelopers.count > 0
                {
                    return self.arrayForDevelopers.count
                }
            }else if section == 7{
                if self.arrayForNotifications.count > 0
                {
                    return self.arrayForNotifications.count
                }
            }
        }
        return 0
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 35
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        if indexPath.section == 1 {
            let lblName=cell.viewWithTag(1)as! UILabel
            lblName.text=arrayForGroups[indexPath.row]as? String
        }else if indexPath.section == 2{
            let lblName=cell.viewWithTag(1)as! UILabel
            lblName.text=arrayForMessaging[indexPath.row]as? String
        }else if indexPath.section == 3{
            let lblName=cell.viewWithTag(1)as! UILabel
            lblName.text=arrayForTemplates[indexPath.row]as? String
        }else if indexPath.section == 4{
            let lblName=cell.viewWithTag(1)as! UILabel
            lblName.text=arrayForPackages[indexPath.row]as? String
        }else if indexPath.section == 5{
            let lblName=cell.viewWithTag(1)as! UILabel
            lblName.text=arrayForBilling[indexPath.row]as? String
        }else if indexPath.section == 6{
            let lblName=cell.viewWithTag(1)as! UILabel
            lblName.text=arrayForDevelopers[indexPath.row]as? String
        }else if indexPath.section == 7{
            let lblName=cell.viewWithTag(1)as! UILabel
            lblName.text=arrayForNotifications[indexPath.row]as? String
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let sectionHeaderString:String = arrayOfMenuNames[indexPath.section] as! String
        
        if sectionHeaderString == "Groups"
        {
            
            if indexPath.row == 0 {
                NSNotificationCenter.defaultCenter().postNotificationName("GroupVC", object: nil)
                
            }else{
                NSNotificationCenter.defaultCenter().postNotificationName("AddGroupVC", object: nil)
                
            }
            
        }else if sectionHeaderString == "Messaging"
        {
            
            if indexPath.row == 0 {
                NSNotificationCenter.defaultCenter().postNotificationName("SingleMessageVC", object: nil)
            }else if indexPath.row == 1{
                NSNotificationCenter.defaultCenter().postNotificationName("SingleMessageLaterVC", object: nil)
            }else if indexPath.row == 2{
                NSNotificationCenter.defaultCenter().postNotificationName("MessageToGroupVC", object: nil)
            }else if indexPath.row == 3{
                NSNotificationCenter.defaultCenter().postNotificationName("MessagesHistoryVC", object: nil)
            }else if indexPath.row == 4{
                NSNotificationCenter.defaultCenter().postNotificationName("GroupMessagesHistoryVC", object: nil)
            }else if indexPath.row == 5{
                NSNotificationCenter.defaultCenter().postNotificationName("APIMessagesHistoryVC", object: nil)
            }else if indexPath.row == 6{
                NSNotificationCenter.defaultCenter().postNotificationName("AllMessagesHistoryVC", object: nil)
            }else if indexPath.row == 7{
                NSNotificationCenter.defaultCenter().postNotificationName("AllMessagesInQueVC", object: nil)
            }
            
        }else if sectionHeaderString == "Templates"
        {
            
            if indexPath.row == 0 {
                NSNotificationCenter.defaultCenter().postNotificationName("TemplateVC", object: nil)
                
            }else{
                NSNotificationCenter.defaultCenter().postNotificationName("AddTemplateVC", object: nil)
            }
            
        }else if sectionHeaderString == "Packages"
        {
            
            if indexPath.row == 0 {
                NSNotificationCenter.defaultCenter().postNotificationName("PackagesVC", object: nil)
                
            }else if indexPath.row == 1{
                NSNotificationCenter.defaultCenter().postNotificationName("ActivePackagesVC", object: nil)
            }else{
                NSNotificationCenter.defaultCenter().postNotificationName("PurchaseHistoryVC", object: nil)
            }
            
        }else if sectionHeaderString == "Billing"
        {
            
            if indexPath.row == 0 {
                NSNotificationCenter.defaultCenter().postNotificationName("InvoicesVC", object: nil)
            }else if indexPath.row == 1{
                NSNotificationCenter.defaultCenter().postNotificationName("PaidInvoiceVC", object: nil)
            }else{
                NSNotificationCenter.defaultCenter().postNotificationName("UnPaidInvoiceVC", object: nil)
            }
            
        }else if sectionHeaderString == "Developers"
        {
            
            if indexPath.row == 0 {
                NSNotificationCenter.defaultCenter().postNotificationName("APIDocumentation", object: nil)
            }else{
                NSNotificationCenter.defaultCenter().postNotificationName("APIKey", object: nil)
            }
            
        }else
        {
            if indexPath.row == 0 {
                NSNotificationCenter.defaultCenter().postNotificationName("PublicNotifications", object: nil)
            }else{
                NSNotificationCenter.defaultCenter().postNotificationName("PrivateNotifications", object: nil)
            }
            
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        //create header view
        let headerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 50))
        headerView.backgroundColor = UIColor(red:227/255.0, green:234/255.0 ,blue:236/255.0 ,alpha:1.0)
        headerView.tag = section
        
        //create menu icon
        let frame = CGRectMake(10, 15, 20, 17)
        let headerImageView = UIImageView(frame: frame)
        let image: UIImage = UIImage(named:arrayForIcon[section] as! String)!
        headerImageView.image = image
        headerView .addSubview(headerImageView)
        
        //create menunames
        let headerString:UILabel = UILabel(frame: CGRect(x: 40, y: 10, width: tableView.frame.size.width-10, height: 30))
        headerString.text = (self.arrayOfMenuNames.objectAtIndex(section) as? String)
        headerString.font = UIFont(name:"Arial", size:14.0)
        headerString.textColor=UIColor(red:70/255.0, green:76/255.0 ,blue:90/255.0 ,alpha:1.0)
        headerView .addSubview(headerString)
        
        if section != 0 && section != 8 && section != (arrayOfMenuNames.count - 1)
        {
            //set down and up icon
            let collapsed = arrayOfMenuNamesBool.objectAtIndex(section).boolValue
            if collapsed == false
            {
                let frame = CGRectMake(200, 18, 18, 18)
                let headerImageView = UIImageView(frame: frame)
                let image: UIImage = UIImage(named: "up.png")!
                headerImageView.image = image
                headerView .addSubview(headerImageView)
            }
            else
            {
                let frame = CGRectMake(200, 18, 18, 18)
                let headerImageView = UIImageView(frame: frame)
                let image: UIImage = UIImage(named: "down.png")!
                headerImageView.image = image
                headerView .addSubview(headerImageView)
            }
        }
        
        ////create sepretor line
        //let labelLine = UILabel(frame: CGRectMake(0, 49, tableView.frame.size.width, 1))
        //labelLine.backgroundColor=UIColor(red:187/255.0, green:194/255.0 ,blue:197/255.0 ,alpha:1.0)
        //headerView.addSubview(labelLine)
        
        //display subarryas
        let headerTapped = UITapGestureRecognizer (target: self, action:#selector(LeftDrawerVC.sectionHeaderTapped(_:)))
        headerView .addGestureRecognizer(headerTapped)
        
        return headerView
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func sectionHeaderTapped(recognizer: UITapGestureRecognizer)
    {
        let indexPath : NSIndexPath = NSIndexPath(forRow: 0, inSection:(recognizer.view?.tag as Int!)!)
        var centerViewController = UIViewController?()
        
        
        if indexPath.section == 0 {
            //navigate to Dashboard screen
            centerViewController = self.storyboard?.instantiateViewControllerWithIdentifier("HomeVC") as! HomeVC
            
            let centerNavController = UINavigationController(rootViewController: centerViewController!)
            let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            
            appDelegate.centerContainer!.centerViewController = centerNavController
            appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
        }
        else {
            
            var collapsed = self.arrayOfMenuNamesBool.objectAtIndex(indexPath.section).boolValue
            collapsed = !collapsed;
            
            
            //code for hiding prev opened submenus
//            for i in 0..<self.arrayOfMenuNamesBool.count
//            {
//                if arrayOfMenuNamesBool.objectAtIndex(i).boolValue &&  i != indexPath.section
//                {
//                    arrayOfMenuNamesBool.replaceObjectAtIndex(i, withObject: false)
//                    let range = NSMakeRange(i, 1)
//                    let sectionToReload = NSIndexSet(indexesInRange: range)
//                    self.tblView.reloadSections(sectionToReload, withRowAnimation:UITableViewRowAnimation.None)
//                }
//            }
            
            self.arrayOfMenuNamesBool.replaceObjectAtIndex(indexPath.section, withObject: collapsed)
            
            //reload specific section animated
            let range = NSMakeRange(indexPath.section, 1)
            let sectionToReload = NSIndexSet(indexesInRange: range)
            self.tblView.reloadSections(sectionToReload, withRowAnimation:UITableViewRowAnimation.None)
        }
    }

}
