package JAVA;
// 가운데 글자 가져오기
public class algorithm03 {
    public static void main(String[] args) {
        class Solution {
            public String solution(String s) {
                String answer = "";
        
                int len = s.length();
                if(len % 2 != 0) {
                    // 홀수이면 가운데 인덱스(2로나눠 반올림한 수 + 1) 문자 추출
                    int index = Math.round(len / 2);
                    char result_char = s.charAt(index);
                    answer = Character.toString(result_char);
                    // System.out.println(result);
        
                } else {
                    // 짝수이면 가운데 인덱스부터 +1인덱스까지 문자 추출
                    int index_first = Math.round(len / 2) - 1;
                    int index_second = index_first + 2;
                    answer = s.substring(index_first, index_second);
                    // System.out.println(result);
                }       
                return answer;
            }
        }      
    }
}

/*
<< 가운데 글자 가져오기 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 1) 문자열의 길이를 알아야 문자열의 가운데 인덱스를 추출할 수 있다.
         2) - 문자열의 길이가 홀수이면 가운데 인덱스 한 문자 추출
            |
            - 문자열의 길이가 짝수이면 가운데 인덱스 두 문자 추출
## 다른 구현 방법 생각 ##
> 굳이 어려운 로직을 생각할 필요없이 단순하게 생각!

## 문제를 풀면서 맞이한 문제점 ##
  없음...

 ## 다른 사람 풀이 중 심플한 코드 첨부
/////////////////////////////////////////////////////////////////
class StringExercise{
    String getMiddle(String word){

        return word.substring((word.length()-1) / 2, word.length()/2 + 1);    
    }
    // 아래는 테스트로 출력해 보기 위한 코드입니다.
    public static void  main(String[] args){
        StringExercise se = new StringExercise();
        System.out.println(se.getMiddle("power"));
    }
}
////////////////////////////////////////////////////////////////// 
*/ 