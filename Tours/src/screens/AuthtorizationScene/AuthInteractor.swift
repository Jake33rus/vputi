//
//  AuthInteractor.swift
//  Tours
//
//  Created by Евгений Уланов on 03.01.2022.
//  Copyright (c) 2022 Tours. All rights reserved.
//
//

import UIKit

protocol AuthBusinessLogic
{
  func doSomething(request: Auth.Something.Request)
}

protocol AuthDataStore
{
  //var name: String { get set }
}

final class AuthInteractor: AuthBusinessLogic, AuthDataStore
{
  var presenter: AuthPresentationLogic?
  var worker: AuthWorker?
  //var name: String = ""
  
  // MARK: Do something
  
  func doSomething(request: Auth.Something.Request)
  {
    worker = AuthWorker()
    worker?.doSomeWork()
    
    let response = Auth.Something.Response()
    presenter?.presentSomething(response: response)
  }
}
