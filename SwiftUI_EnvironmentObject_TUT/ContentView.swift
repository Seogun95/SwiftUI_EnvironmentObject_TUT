

import SwiftUI

struct ContentView: View {
    //@ObservedObject var userSetting = UserSetting()를 아래와같이 수정
    @EnvironmentObject var userSetting: UserSetting
    
    var body: some View {
        VStack {
            Text("\(self.userSetting.score)")
                .font(.largeTitle)
            Button("클릭시 score 상승") {
                self.userSetting.score += 1
            }
        
            Divider()
                .padding()
            
            /*MyScoreView(score: self.$userSetting.score)를 아래와같이 수정
                MyScoreView의 바인딩을 Environment로 수정해줘야함*/
            MyScoreView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //.environmentObject(UserSetting()) 추가
        ContentView().environmentObject(UserSetting())
    }
}
