package JAVA;
// 수박수박수박수박수박수?
class Solution {
    public String solution(int n) {
        // 로직 = 문자열 "수", "박"을 변수에 저장한 후, n만큼 for문을 반복하며 짝수면 "수", 홀수면 "박"을 출력
        // 1. 문자 '수', '박'을 저장할 char형 변수를 선언 및 초기화
        String su = "수";
        String bak = "박";
        // 문자열에 문자를 추가하기 위해서 StringBuilder라는 클래스의 append() 메소드를 이용한다.
        StringBuilder suBak = new StringBuilder();
        StringBuilder suBakTest = new StringBuilder();
        // 2. n만큼 for문을 반복한다.
        for(int i=0; i<n; i++) {
            // 3. 2로 나눈나머지가 0이면(짝수) '수', 0이 아니면(홀수) '박'의 문자를 추가한다
            suBakTest = (i % 2) == 0 ? suBak.append(bak) : suBak.append(su);
        }
        // 문자열을 리턴해야하기 때문에 StringBuilder클래스를 toString()메서드로 String으로 변환
        return suBak.toString();
    }
}
public class algorithm19 {
    public static void main(String[] args) {
        
    }
}
/*
<< 수박수박수박수박수박수? >>
## 나의 문제풀이 접근 ##
> 로직 => 1) 필요한 변수 선언 : 문자열 "수", "박"을 담을 변수 2개를 선언과 동시에 초기화, 문자열을 붙여줄 StringBuilder 인스턴스 선언
         2) for문을 통해 n번 반복한다. 
         3) 2로 나눈 나머지가 짝수면 StringBuilder클래스의 append() 메서드를 통해 "수"를 추가하고, 홀수면 "박"을 추가한다.
         4) n번 반복이 끝나면 StringBuilder클래스를 toString()메서드를 이용하여 String 타입을 변경한 후 출력

## 다른 구현 방법 생각 ##
> 다른 방법이 생각나지 않아서 고민하다가 다른 사람의 풀이를 찾아보았다.

## 문제를 풀면서 맞이한 문제점 ##
  1. 타입에 더 엄격해져야한다.
    > 관련 메서드를 호출하기 위해 가지고 있는 Class를 호출하여 인스턴트를 생성해야하며,
      나중에는 출력하려는 데이터 타입으로 변환해줘야한다.

 ## 다른 사람 풀이 중 심플한 코드 첨부
 1. 쓸데없이 "수", "박" 변수를 선언할 필요없고, StringBuilder클래스를 선언할 필요도 없이 직관적인 코드
/////////////////////////////////////////////////////////////////
public class WaterMelon {
    public String watermelon(int n){
    String result = "";
    for (int i = 0; i < n; i++)
      result += i % 2 == 0 ? "수" : "박";
        return result;
    }

    // 실행을 위한 테스트코드입니다.
    public static void  main(String[] args){
        WaterMelon wm = new WaterMelon();
        System.out.println("n이 3인 경우: " + wm.watermelon(3));
        System.out.println("n이 4인 경우: " + wm.watermelon(4));
    }
}
////////////////////////////////////////////////////////////////// 
2. return으로 한 줄로 정리해서 나타내는 풀이(아직 문법이 익숙치 않아 숙련이 필요할 것 같다.)
/////////////////////////////////////////////////////////////////
public class WaterMelon {
    public String watermelon(int n){

        return new String(new char [n/2+1]).replace("\0", "수박").substring(0,n);
    }

    // 실행을 위한 테스트코드입니다.
    public static void  main(String[] args){
        WaterMelon wm = new WaterMelon();
        System.out.println("n이 3인 경우: " + wm.watermelon(3));
        System.out.println("n이 4인 경우: " + wm.watermelon(4));
    }
}
////////////////////////////////////////////////////////////////// 
*/ 