//
//  VKAuthDelegate.swift
//  Tours
//
//  Created by Евгений Уланов on 11.10.2021.
//

import Foundation
import SwiftyVK

public class VKAuthDelegate: SwiftyVKDelegate {
    func vkNeedsScopes(for sessionId: String) -> Scopes {
        // Вызывается, когда SwiftyVK пытается получить доступ к учетной записи пользователя
              // Должен возвращать набор областей разрешений
    }
    
    func vkNeedToPresent(viewController: VKViewController) {
        // Вызывается, когда SwiftyVK хочет представить пользовательский интерфейс (например, webView или captcha)
              // Должен отображать данный контроллер вида из текущего контроллера вида сверху
    }
    
    func vkTokenCreated(for sessionId: String, info: [String : String]) {
        // Вызывается, когда пользователь предоставляет доступ и SwiftyVK получает новый токен сеанса
       // Может использоваться для выполнения запросов SwiftyVK и сохранения данных сеанса
    }
    func  vkTokenUpdated(for sessionId: String, info: [ String : String ]) {
        // Вызывается, когда срок действия существующего токена сеанса истек и успешно обновляется
        // Здесь не нужно делать ничего особенного
    }
    
    func  vkTokenRemoved(for sessionId: String ) {
        // Вызывается, когда пользователь вышел из системы
        // Используйте этот метод для отмены всех запросов SwiftyVK и удаления данных сеанса
    }
}
