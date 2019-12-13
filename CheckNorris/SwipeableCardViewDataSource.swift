//
//  SwipeableCardViewDataSource.swift
//  CheckNorris
//
//  Created by Phill Farrugia on 21/10/17.
//  Traduzido por Mariana Abad on 04/12/19.
//  Copyright © 2019 Mariana Beilune Abad. All rights reserved.
//

import Foundation
import UIKit

protocol SwipeableCardViewDataSource: class {
    
    /// Determines the number of cards to be added into the
       /// SwipeableCardViewContainer. Not all cards will initially
       /// be visible, but as cards are swiped away new cards will
       /// appear until this number of cards is reached.
       ///
       /// - Returns: total number of cards to be shown
    
    // Determina o número de cards a serem adicionados na SwipeableCardViewContainer. Nem todos os cards irão iniciar visíveis, mas quando forem movidas, novos cards irão aparecer até o número máximo de cards ser atingido.
    // - Retorna o número máximo de cards para serem mostrados.
    func numberOfCards() -> Int
    
    func card(forItemAtIndex index: Int) -> SwipeableCardViewCard
    
    func viewForEmptyCards() -> UIView?
}
