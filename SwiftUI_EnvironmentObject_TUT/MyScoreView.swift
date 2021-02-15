//
//  MyScoreView.swift
//  SwiftUI_EnvironmentObject_TUT
//
//  Created by 김선중 on 2021/02/14.
//

import SwiftUI

struct MyScoreView: View {
    
    //before : @Binding var score: Int
    @EnvironmentObject var userSetting: UserSetting
    
    var body: some View {
        VStack {
            // before : Text("\(self.score)")
            Text("\(self.userSetting.score)")
            Button("클릭시 score 증가") {
                //before : self.score += 1
                self.userSetting.score += 1
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.black)
        }
        .padding()
        .background(Color.yellow)
        
    }
}

struct MyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        //before : MyScoreView(score: .constant(0))
        MyScoreView()
    }
}
