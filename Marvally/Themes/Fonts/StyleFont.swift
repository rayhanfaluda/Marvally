//
//  StyleFont.swift
//  Marvally
//
//  Created by MacBook on 29/06/22.
//

import Foundation
import SwiftUI

class StyleFont {
    static var largeTitle: UIFont {
        UIFont(name: "Montserrat-Bold", size: 24)!
    }
    
    static var smallTitle: UIFont {
        UIFont(name: "Montserrat-SemiBold", size: 17)!
    }
    
    static var mediumTitle: Font {
        Font.custom("Montserrat-Bold", size: 18, relativeTo: .headline)
    }
    
    static var title1: Font {
        Font.custom("Montserrat-SemiBold", size: 24, relativeTo: .title2)
    }
    
    static var heading1: Font {
        Font.custom("Montserrat-SemiBold", size: 18, relativeTo: .headline)
    }

    static var heading2: Font {
        Font.custom("Montserrat-SemiBold", size: 17, relativeTo: .headline)
    }
    
    static var subtitle: Font {
        Font.custom("Montserrat-Regular", size: 13, relativeTo: .footnote)
    }
    
    static var captionSmall: Font {
        Font.custom("Montserrat-Regular", size: 11, relativeTo: .caption2)
    }
    
    static var graphText: Font {
        Font.custom("Montserrat-Bold", size: 13, relativeTo: .footnote)
    }
    
    static var welcomeTo: Font {
        Font.custom("Montserrat-Bold", size: 24, relativeTo: .title2)
    }
    
    static var Lugna: Font {
        Font.custom("Montserrat-Light", size: 48, relativeTo: .largeTitle)
    }
    
    static var body: Font {
        Font.custom("Montserrat-Regular", size: 16, relativeTo: .callout)
    }
    
    static var bodyMood: Font {
        Font.custom("Montserrat-Light", size: 15, relativeTo: .subheadline)
    }
    
    static var buttonText: Font {
        Font.custom("Montserrat-Medium", size: 15, relativeTo: .subheadline)
    }
    
    static var dashboardText: Font {
        Font.custom("Montserrat-Medium", size: 13, relativeTo: .footnote)
    }
    
    static var segmentedControlText: Font {
        Font.custom("Montserrat-Bold", size: 15, relativeTo: .subheadline)
    }
    
    static var textFieldText: Font {
        Font.custom("Montserrat-Regular", size: 16, relativeTo: .callout)
    }
    
    static var journalTitle: Font {
        Font.custom("Montserrat-SemiBold", size: 21, relativeTo: .title3)
    }
    
    static var signUp: Font {
        Font.custom("Montserrat-Bold", size: 17, relativeTo: .headline)
    }
    
    static var signIn: Font {
        Font.custom("Montserrat-Bold", size: 17, relativeTo: .headline)
    }
    
    static var emoji: Font {
        Font.custom("Montserrat-Light", size: 34, relativeTo: .largeTitle)
    }
    
    static var dateTime: Font {
        Font.custom("Montserrat-Medium", size: 11, relativeTo: .caption2)
    }
    
    static var veryLargeTitle: Font {
        Font.custom("Montserrat-Bold", size: 36, relativeTo: .largeTitle)
    }
}
