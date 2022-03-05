//
//  RegistrationInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol RegistrationBusinessLogic
{
  func doSomething(request: Registration.Something.Request)
}

protocol RegistrationDataStore
{
  //var name: String { get set }
}

final class RegistrationInteractor: RegistrationBusinessLogic, RegistrationDataStore
{
  var presenter: RegistrationPresentationLogic?
  var worker: RegistrationWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Registration.Something.Request)
  {
    worker = RegistrationWorker()
    worker?.doSomeWork()
    
    let response = Registration.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
