package JAVA;
import java.util.Scanner;
// 두 정수 사이의 합
public class algorithm04 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("숫자 a를 입력하세요 :");
        int a = sc.nextInt();
        System.out.println("숫자 b를 입력하세요 :");
        int b = sc.nextInt();
        long sum = 0;

        class Solution {
            public long solution(int a, int b) {
                int answer = 0;
                if(a < b){
                    int repeat = b-a+1;
                    for(int i=0; i<repeat; i++) {
                        answer += (a+i);
                    }
                } else if(a == b){
                    answer = a;
                } else {
                    int repeat = a-b+1;
                    for(int i=0; i<repeat; i++) {
                        answer += (b+i);
                    }
                }               
                return answer;
            }
        }
        Solution result = new Solution();
        sum = result.solution(a, b);
        System.out.println(sum);
    }
}

/*
<< 두 정수 사이의 합 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 1) a > b, a == b, a < b의 경우로 나눠서 생각 
         2) - a > b일 경우, a += 1;을 b-a만큼 반복한다.
            |
            - a == b일 경우, 같으니 a를 출력
            |
            - a < b일 경우, b += 1;을 a-b만큼 반복한다.

## 다른 구현 방법 생각 ##
> 다른 방법이 생각나지 않아서 고민하다가 다른 사람의 풀이를 찾아보았다.
> 신박한 방법 중 하나는 수학의 등차수열의 합 공식을 이용한 방법이었는데, 수학적 사고가 안됨;; ㅠ_ㅠ
> 삼항연산자를 이용하여 코드를 간결하게 한 줄로 표현한 방법이 인상적이었다.

## 문제를 풀면서 맞이한 문제점 ##
  없음...

 ## 다른 사람 풀이 중 심플한 코드 첨부
/////////////////////////////////////////////////////////////////
class Solution {
  public long solution(int a, int b) {
      long answer = 0;
      for (int i = ((a < b) ? a : b); i <= ((a < b) ? b : a); i++) 
          answer += i;

      return answer;
  }
}
////////////////////////////////////////////////////////////////// 
*/ 