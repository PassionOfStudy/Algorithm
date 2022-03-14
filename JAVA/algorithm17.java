package JAVA;
// 문자열 다루기 기본
class Solution {
    public boolean solution(String s) {
        // 로직 = 문자열을 문자형배열로 쪼갠 후, 문자열 길이가 4 or 6인지 확인 후, for문을 돌며 숫자인지 문자인지 확인
          boolean answer = true;
        // 1. 문자열을 문자형배열로 쪼갠다.
        // 2. 조건에서 처럼 s의 길이가 4 혹은 6인지 확인한다.
        char[] charArr = s.toCharArray();
        if(charArr.length != 4 && charArr.length != 6) {
            answer = false;
            return answer;
        }
        // 3. 배열의 길이만큼 for문을 돈다.
        /* 문자를 ASCII 코드로 변환하는 방법 char->int캐스팅
            char a = '1';
            int ascii = (int) a;
            System.out.println(ascii);
        */
        for(char c : charArr) {
            // 3. 문자가 문자이면 false를 리턴하고 나오고 숫자이면 끝까지 반복한다.
            if( 47 < (int) c && (int) c < 58) {
                answer = true;
            } else {
                answer = false;
                break;
            }
        }
        return answer;
    }
}
public class algorithm17 {
    public static void main(String[] args) {
        
    }
}
/*
<< 문자열 다루기 기본 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 1) 문자 하나하나를 검증하기 위해 문자열을 문자형배열로 만든다.
         2) 주어진 문제에서 4, 6의 길이인지 배열의 length를 이용하여 확인
         3) 배열의 길이만큼 for문을 돌며 문자를 ASCII코드로 변환하여 숫자인지 아닌지 확인
         5) 0~9 -> 48~57의 범위안에 있으면 true 아니면 false를 리턴하고 break문으로 반복문 탈출

## 다른 구현 방법 생각 ##
> 나의 역량으로는 이것이 원초적이고 생각할 수 있는 것의 한계였다.
> 다른 문제 풀이를 보면서 신기했던 방법은 try catch구문을 통해서 에러처리를 이용한 것이다.
  Integer.parseInt()를 이용해 NumberFormatException의 error를 호출하면 숫자가 아닌 것으로 하는 로직.

## 문제를 풀면서 맞이한 문제점 ##
  1. 문제를 제대로 읽지 않아서 문자열의 길이가 4,6이라는 조건을 잊고 테스트를 진행함
    > 항상 알고리즘 문제를 풀 때 문제파악이 중요하다!

 ## 다른 사람 풀이 중 심플한 코드 첨부
 (try catch 예외처리를 통한 Error유형으로 구분하는 논리!)
/////////////////////////////////////////////////////////////////
class Solution {
  public boolean solution(String s) {
      if(s.length() == 4 || s.length() == 6){
          try{
              int x = Integer.parseInt(s);
              return true;
          } catch(NumberFormatException e){
              return false;
          }
      }
      else return false;
  }
}
////////////////////////////////////////////////////////////////// 
*/ 