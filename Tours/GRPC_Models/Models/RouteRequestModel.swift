//
//  RouteRequestModel.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import Foundation

struct RouteRequestModel {
    // Дата от
    let from: Int
    // Датa по
    let to: Int
    // Позиция пользователя
    let userLatitude: Float?
    let userLongitude: Float?
    // Интересующая локация
    let fromLatitude: Float?
    let fromLongitude: Float?
    //Предпочитаемый транспорт
    let preferTransport: [Adventure_Net_Controller_Transport]?
    // Количество точек для посещения
    let pointCount: Int32?
    // Количество приемов пищи
    let eatCount: Int32?
    // Сумма тура
    let money: Float
    // С ночевкой
    let useHotel: Bool?
    // Город для посещения 
    let cityID: Int64
}
