//
//  StatementRouter.swift
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

@objc protocol StatementRoutingLogic
{
    func routeToLogin(segue: UIStoryboardSegue?)
}

protocol StatementDataPassing
{
    var dataStore: StatementDataStore? { get }
}

class StatementRouter: NSObject, StatementRoutingLogic, StatementDataPassing
{
    weak var viewController: StatementViewController?
    var dataStore: StatementDataStore?
    
    //Esse é o roteador para enviar para a proxima view (a de login / caso de logout)
    func routeToLogin(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! LoginViewController //Definição do destino da segue
            var destinationDS = destinationVC.router!.dataStore!
            passDataToStatement(source: dataStore!, destination: &destinationDS)
        }
    }
    
    func passDataToStatement(source: StatementDataStore, destination: inout LoginDataStore) {
        destination.user = source.user
    }
}
