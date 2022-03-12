package JAVA;
import java.util.Scanner;
// 문자열을 정수로 바꾸기
class Solution {
    public int solution(String s) {
        int answer = 0;
        
        answer = Integer.parseInt(s);
        ////////////////////////////////////////////////////////////
        // 처음 중구난방으로 풀었던 풀이... 감추고 싶지만 일단 박제
        // if(s.charAt(0) != '-') {
        //     // 문자열String을 int로
        //     System.out.println(s.charAt(0));
        //     answer = Integer.parseInt(s);
        // } else {
        //     // 1) 첫번째 문자 부호를 적용하고
        //     // 2) 문자열String을 int로
        //     System.out.println(s.charAt(0));
        //     answer = Integer.parseInt(s);
        // }
        ////////////////////////////////////////////////////////////
        return answer;
    }
}
public class algorithm05 {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input = sc.nextLine();
        Solution solution = new Solution();
        int result = solution.solution(input);
        System.out.println(result);
    }
}
    
/*
<< 문자열을 정수로 바꾸기 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 1) 첫 번째 문자가 "-"인지 아닌지 if문으로 분기
         2) --> "-"가 있으면 두번째 인덱스부터 String type을 Integer type으로 변환
            |
            --> "-"가 없으면 첫번째 인덱스부터 String type을 Integer type으로 변환
         3) 변환된 값을 출력   

## 다른 구현 방법 생각 ##
> Integer클래스의 parseInt(String) 메소드를 사용하여 Integer로 변환했는데 다른 방법이 없는지 찾아보았다.
  구현된 method를 사용하지말고 순수 로직으로 푼 방법이 있어 인상적이었다. 아직 사고가 유연하지 못함;;.. ㅠ_ㅠ

## 문제를 풀면서 맞이한 문제점 ##
  변수 자료형이 Class로 선언되어있기 때문에 각 Class type에 맡는 메소드를 호출해야하는데 아직 
  자바문법이 익숙하지 않아 많이 해메었다.

 ## 다른 사람 풀이 중 심플한 코드 첨부
/////////////////////////////////////////////////////////////////
public class StrToInt {
    public int getStrToInt(String str) { 

      boolean isPlus = (str.charAt(0)=='-') ? false : true;
      int ans=0;
      int i = isPlus ? 0 : 1;
      for(; i<str.length(); i++){
        ans = 10*ans + str.charAt(i)-'0';
      }

        return isPlus ? ans : -1 * ans;
    }
    //아래는 테스트로 출력해 보기 위한 코드입니다.
    public static void main(String args[]) {
        StrToInt strToInt = new StrToInt();
        System.out.println(strToInt.getStrToInt("-1234"));
    }
}
////////////////////////////////////////////////////////////////// 
*/ 