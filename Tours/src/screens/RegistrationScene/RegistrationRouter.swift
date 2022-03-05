//
//  RegistrationRouter.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

@objc protocol RegistrationRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
    func routeToQuestionnaire()
}

protocol RegistrationDataPassing
{
  var dataStore: RegistrationDataStore? { get }
}

final class RegistrationRouter: NSObject, RegistrationRoutingLogic, RegistrationDataPassing
{
    func routeToQuestionnaire() {
        return
    }
    
  weak var viewController: RegistrationViewController?
  var dataStore: RegistrationDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: RegistrationViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: RegistrationDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
