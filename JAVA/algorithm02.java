package JAVA;
import java.util.Scanner;
// 짝수와 홀수
public class algorithm02 {
    public static void main(String[] args) {
        String answer = "";
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();
        class Solution {
            public String solution(int num) {
                String answer = "";
                if(num % 2 != 0) {
                    answer = "Odd";
                } else {
                    answer = "Even";
                }
                return answer;
            }
        }
        Solution result = new Solution();
        answer = result.solution(num);
        System.out.println(answer);
    }
}

/*
<< 짝수와 홀수 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 정수를 2로 나누어서 나머지가 0이면 짝수, 나머지가 1이면 홀수

## 다른 구현 방법 생각 ##
> 굳이 어려운 로직을 생각할 필요없이 단순하게 생각!

## 문제를 풀면서 맞이한 문제점 ##
  없음...
*/ 