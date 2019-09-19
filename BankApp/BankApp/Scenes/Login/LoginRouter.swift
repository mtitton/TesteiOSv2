//
//  LoginRouter.swift
//  BankApp
//
//  Created by Marcus Titton on 19/09/19.
//  Copyright (c) 2019 Marcus Titton. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol LoginRoutingLogic
{
    func routeToStatement(segue: UIStoryboardSegue?)
}

protocol LoginDataPassing
{
    var dataStore: LoginDataStore? { get }
}

class LoginRouter: NSObject, LoginRoutingLogic, LoginDataPassing
{
    weak var viewController: LoginViewController?
    var dataStore: LoginDataStore?
  
    // MARK: Routing
    
    func routeToStatement(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! StatementViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToStatement(source: dataStore!, destination: &destinationDS)
        }
    }
    
    func passDataToStatement(source: LoginDataStore, destination: inout StatementDataStore) {
        destination.user = source.user
    }
}
