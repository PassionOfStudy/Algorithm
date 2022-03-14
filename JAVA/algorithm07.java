package JAVA;
// 음양 더하기
class Solution {
    public int solution(int[] absolutes, boolean[] signs) {
        int answer = 0;
        for(int i=0; i<absolutes.length; i++) {
            answer += (signs[i] == true) ? absolutes[i] : absolutes[i]*(-1);
        }
        return answer;
    }
}
public class algorithm07 {
    public static void main(String[] args) {
        int[] absolutes_test = {4, 7, 12};
        boolean[] signs_test = {true, false, true};
        Solution solution = new Solution();
        int result = solution.solution(absolutes_test, signs_test);
        System.out.println(result);
    }   
}
/*
<< 음양 더하기 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 1) 삼항 연산자를 이용하여 sign이 true이면 더하고 false 이면 기존수에 (-1)을 곱해 감산한다.

## 다른 구현 방법 생각 ##
> 간단한 문제라서 다른 생각은 하지 않았다.

## 문제를 풀면서 맞이한 문제점 ##
  없음 

 ## 다른 사람 풀이 중 심플한 코드 첨부
 (다들 비슷해서 PASS)
*/ 