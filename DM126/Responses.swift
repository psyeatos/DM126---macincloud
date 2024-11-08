//
//  Responses.swift
//  DM126
//
//  Created by user270465 on 10/26/24.
//

import Foundation

struct Response {
    var choices: [String]
    var response: String
}

let responses : [Response] = [
    Response(choices: [
    "Kuriboh", "Dark magician", "Jinzo", "Dark necrofear"
    ],
    response: "Dark magician"),
    Response(choices: [
    "Curse of dragon", "Stardust dragon", "Red eyes black dragon", "Blue eyes white dragon"
    ],
    response: "Blue eyes white dragon"),
    Response(choices: [
    "Slifer", "Obelisk", "Winged dragon of ra", "Exodia"
    ],
    response: "Slifer"),
]
