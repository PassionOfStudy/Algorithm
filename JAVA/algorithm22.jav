package JAVA;
// 자릿수 더하기
import java.util.*;

public class Solution {
    public int solution(int n) {
        int mul = 0; // 나눈 몫
        double remainder = (double) n; // 나눈 나머지 (Math.pow()가 double형을 반환함)
        // 로직 = n이 몇 자릿수인지 구한후, 구한 자릿수로 나눈 몫과 나머지를 구한 후 시행
        // 1. 자릿수 multiplier의 변수 선언
        int multiplier = 0; // n의 자릿수
        // 2. 자릿수 multiplier를 구한다. (편법 : int를 문자열로 바꾼 후 문자열 길이를 구한다.)
        String tempString = Integer.toString(n);
        multiplier = tempString.length();
        // 3. 자릿수 만큼 for문을 돌면서 몫과 나머지를 구하고,
        for(int i=multiplier; i>0; i--) {
            // 4. 몫은 더해나가고 나머지는 다시 몫과 나머지를 구하는 반복을 시행한다.
            mul += remainder / Math.pow(10, i-1);
            remainder = remainder % Math.pow(10, i-1);
        }
        return mul;
    }
}
public class algorithm22 {
    public static void main(String[] args) {
        
    }
}
/*
<< 자릿수 더하기 >>
## 나의 문제풀이 접근 ##
> 로직 => 1) 자릿수가 몇인지 구한다.
         2) 자릿수 만큼 for문을 반복하며 10의 승수를 나누어 몫과 나머지를 구한다.
         3) 나눈 몫은 변수에 더해가고, 나머지를 가지고 다시 for문을 반복한다.

## 다른 구현 방법 생각 ##
> 고정된 틀에서 벗어나지 못했다... 하위 다른 사람이 푼 문제를 보고 깨닫게되었다.

## 문제를 풀면서 맞이한 문제점 ##
  1. 10의 승수를 구하는 로직을 구하는데 시간이 좀 걸렸다.
    > 결국 Math.pow() 메서드를 이용하여 해결
  2. type Error
    > Math.pow()가 double형을 리턴하기 때문에 double -> int로는 다운 캐스팅은 불가하다.(데이터 손실)
      int -> double로 업 캐스팅은 가능.
    ex) int / double = double로 자동 형변환되어 결과가 double형으로 나옴
    ex) int a = b (x) double형 변수 b를 int형 변수 a로 다운 캐스팅은 불가..

 ## 다른 사람 풀이 중 심플한 코드 첨부
 1. 형변환 자릿수 구하는 것을 제외한 아주 깔끔한 방법이다.
/////////////////////////////////////////////////////////////////
import java.util.*;

public class Solution {
    public int solution(int n) {
        int answer = 0;

        while (n != 0) {
            answer += n % 10;
            n /= 10;
        }

        return answer;
    }
}
////////////////////////////////////////////////////////////////// 
2. 숫자가 아닌 문자열로 접근하는 참신한 방법! ^__^
////////////////////////////////////////////////////////////////// 
import java.util.*;

public class Solution {
    public int solution(int n) {
        int answer = 0;
        String[] array = String.valueOf(n).split("");
        for(String s : array){
            answer += Integer.parseInt(s);
        }
        return answer;
    }
}
////////////////////////////////////////////////////////////////// 
*/
