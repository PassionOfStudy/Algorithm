package JAVA;
// 하샤드 수
class Solution {
    public boolean solution(int x) {
        // 로직 = 각자릿수의 합을 구한 후, 주어진 숫자와 나누어 나머지가 0이면 true, 아니면 false
        boolean answer = true;
        int num = x;
        int digitSum = 0;
        // 1. 각 자릿수의 합을 구한다.(10으로 나눈 나머지를 더하거나, 문자열로 바꾸어서 접근하거나 )
        while(true) {
            digitSum += num % 10;
            num /= 10;
            if(num == 0) {
                break;
            }
        }
        // 2. 주어진 x와 나누어서 나머지가 0이면 true, 0이 아니면, false (삼항연산자 이용)
        answer = x % digitSum == 0 ? true : false;
        return answer;
    }
}
public class algorithm28 {
    public static void main(String[] args) {
    }    
}
/*
<< 하샤드 수 >>
## 나의 문제풀이 접근 ##
> 로직 => 1) 각 자릿수의 합을 구하기위해 10으로 나눈 나머지를 더해가는 digitSum을 선언하고 num이 0일때 까지 while문을 반복하며 digiSum을 구한다.
         2) 삼항연산자를 이용해 주어진 x가 digitSum으로 나누어 떨어지면 true, 떨이지지 않으면 false를 return한다.
         3) 결과 값 출력

## 다른 구현 방법 생각 ##
> 각 자릿수를 구하는 방법 중에서 String의 split("")메서드를 이용하여 문자열 배열로 나눈후
  for문을 돌면서 각 요소를 Integer.parseInt()메서드로 Integer형으로 바꿔 더해주는 방법도 생각났다.

## 문제를 풀면서 맞이한 문제점 ##
  이전에 각 자릿수의 합을 구하는 문제의 연속선상이라 여러운 점은 없었다.

 ## 다른 사람 풀이 중 심플한 코드 첨부
 1. 문자열 배열을 이용해 각자릿수의 합을 구하는 방법
/////////////////////////////////////////////////////////////////
public class HarshadNumber{
    public boolean isHarshad(int num){

    String[] temp = String.valueOf(num).split("");

    int sum = 0;
    for (String s : temp) {
        sum += Integer.parseInt(s);
    }

    if (num % sum == 0) {
            return true;
    } else {
      return false;
    }
    }

       // 아래는 테스트로 출력해 보기 위한 코드입니다.
    public static void  main(String[] args){
        HarshadNumber sn = new HarshadNumber();
        System.out.println(sn.isHarshad(18));
    }
}
////////////////////////////////////////////////////////////////// 
*/
