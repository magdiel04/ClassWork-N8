//
//  main.swift
//  ClassWork N8
//
//  Created by Magdiel Altynbekov on 3/10/22.
//

import Foundation
// Воин, Колдун, Медик, Защитник
// У каждого по 1000 ХП изначально
// Каждый раунд наносят по 200, 300, 0, 100
// Медик лечит один раз в 2 раунда всю команду на 200 ХП
// Медик наносить удар не может

// Босс
// 5000 ХП изначально
// Наносит по 200 ХП урона каждому игроку в течение игры пока не умрет

// Игра закончится когда умирает босс и жив хотябы один игрок, либо когда все игроки умрут, а босс жив
// В конце выводится print - сколько раундов прошло, сколько урона нанёс каждый игрок и кто все таки стал победители


var heroes: [String] = ["Воин", "Колдун", "Медик","Защитник"]
var hp = [1000, 1000, 1000, 1000]
var atakaH = [200, 300, 0, 100]
var medik = [200]
var boss = ["Босс"]
var hpboss = [5000]
var atakaB = [200]
var round = 0

    
repeat{
    hpboss[0] -= atakaH[0]
    hpboss[0] -= atakaH[1]
    hpboss[0] -= atakaH[2]
    hpboss[0] -= atakaH[3]
    ""
    hp[0] -= atakaB[0]
    hp[1] -= atakaB[0]
    hp[2] -= atakaB[0]
    hp[3] -= atakaB[0]
    ""
    hp[0] += 100
    hp[1] += 100
    hp[2] += 100
    hp[3] += 100
    ""
    round += 1
}while hpboss[0] > 0

print("Оставшиеся ХП босса - \(hpboss)")
print("Оствшиеся ХП героев - \(hp)")
print("Прошло - \(round) раундов")
print("Воин нанёс \(atakaH[0] * round)")
print("Колдун нанёс \(atakaH[1] * round)")
print("Медик нанёс \(atakaH[2] * round)")
print("Защитник нанёс \(atakaH[3] * round)")
