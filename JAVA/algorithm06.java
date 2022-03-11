package JAVA;

import java.util.*;

public class algorithm06 {
    public static void main(String[] args) {
        int[] random = {1,2};
        class Solution {
            public int solution(int[] numbers) {
                int answer = -1;
                int[] whole = {0,1,2,3,4,5,6,7,8,9};
                int[] num = {1,2,3,4,6,7,8,0};
                ArrayList<Integer> selectIndex = new ArrayList<Integer>();//타입설정 int타입만 사용가능
                int sum = 0;
                int wholeSum = 0; 
                
                for(int i=0; i<whole.length; i++) {
                     for(int j=0; j<num.length; j++) {
                         if(whole[i] == num[j]) {
                            selectIndex.add(i);
                         }
                     }
                }
                for(int i=0; i<selectIndex.size(); i++) {
                    int index = selectIndex.get(i);
                    sum += whole[index];
                }
                for(int i=0; i<whole.length; i++) {
                    wholeSum += whole[i];
                }
                int result = wholeSum - sum;
                System.out.println(result);
                return answer;
            }
        }
        Solution result = new Solution();
        result.solution(random);
    }
}

/*
<< 없는 숫자 더하기 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 1) 전체 합과 주어질 numbers의 배열의 합을 뺀다
         2) 전체의 합은 반복문을 통하여 구한다.
         3) numbers의 합은 주어지지 않았기 때문에 중첩for문을 돌면서
            전체 배열 요소와 numbers의 요소가 같다면 맞는 index를 인덱스배열에 추가하여
            numbers의 배열을 찾는다
         4) for문을 돌면서 찾은 numbers의 전체 합을 구한다.
         5) 전체 합과 numbers의 합을 빼준다.
            

## 다른 구현 방법 생각 ##
> 다른 방법이 생각나지 않아서 고민하다가 다른 사람의 풀이를 찾아보았다.
> 신박한 방법 중 하나는 수학의 등차수열의 합 공식을 이용한 방법이었는데, 수학적 사고가 안됨;; ㅠ_ㅠ
> 삼항연산자를 이용하여 코드를 간결하게 한 줄로 표현한 방법이 인상적이었다.

## 문제를 풀면서 맞이한 문제점 ##
  1. 고정된 길이의 배열이 아닌 가변적인 배열인 ArrayList가 필요했다.
    > 고정된 길이의 배열에서는 다른 요소를 추가, 삭제가 되지 않음..
    > 나의 로직에서는 numbers의 인덱스를 추가하는 가변적인 배열이 필요했음
  2. 너무 고정적인 생각을 버리지 못했다.
    > 나중에 다른 사람의 풀이를 보면서 numbers의 배열과 일치하는 whole 배열의 요소를
      0으로 변경한 후에 합하는 것을 보고, 너무 허무했다...;;;


 ## 다른 사람 풀이 중 심플한 코드 첨부
/////////////////////////////////////////////////////////////////
import java.util.*;
class Solution {
    public int solution(int[] numbers) {
        int answer = 0;
        int[] sum = {0,1,2,3,4,5,6,7,8,9};

        for(int i = 0; i< sum.length; i++){
            for(int j=0; j< numbers.length; j++){
                if(sum[i] == numbers[j]){
                    sum[i] -= numbers[j];
                }
            }
            answer += sum[i];
        }
        return answer;
    }
}
////////////////////////////////////////////////////////////////// 
*/ 