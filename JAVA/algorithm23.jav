package JAVA;
// 자연수 뒤집기
class Solution {
    public int[] solution(long n) {
        // 로직 = 숫자를 문자열로 만들고 문자열을 배열로 쪼갠 뒤, 내림차순 정렬
        // 1. 숫자를 문자열로 변환한 후 split()메서드를 통해서 문자열배열로 변환한다.
        String str = Long.toString(n);
        String[] strArr = str.split("");
        // 2. 순서를 뒤집어 저장할 문자열 배열을 선언한다.
        String[] reverseArr = new String[strArr.length];
        // 3. for문을 돌면서 정반대의 인덱스 값을 거꾸로 저장한다.
        for(int i=0; i<strArr.length; i++) {
            reverseArr[strArr.length-i-1] = strArr[i];       
        }
        // 4. String[]을 int[]로 바꾸기 위해서 int[] 선언
        int[] numbers = new int[reverseArr.length];
        for(int i = 0;i < reverseArr.length;i++)
        {
        // 5. String을 Integer클래스의 parseInt()메서드를 통해 형변환
           numbers[i] = Integer.parseInt(reverseArr[i]);
        }
        // 6. 값 출력
        return numbers;
    }
}

public class algorithm22 {
    public static void main(String[] args) {
        
    }
}
/*
<< 자연수 뒤집기 >>
## 나의 문제풀이 접근 ##
> 로직 => 1) Long형 숫자를 문자열로 변환한다. Long.toString() 메서드 사용
         2) String을 split("")메서드를 활용해 String[] 배열로 전환
         3) 순서를 뒤집어 저장할 변수를 선언과 동시에 크기를 지정
         4) for문을 이용해 순서가 뒤집어진 배열을 차례로 저장
         5) String[] -> int[]로 전환하기 위해 int[] 배열을 선언과 동시에 크기 지정
         6) for문을 반복하면서 각 인덱스값을 Integer.parseInt() 메서드를 이용해 타입변경
         7) 변환된 int[] 값을 출력한다

## 다른 구현 방법 생각 ##
> 고정된 틀에서 벗어나지 못했다... 너무 로직이 복잡해지면 코드를 싹 지우고 다시 풀어보자.
  숫자이니 10을 나눈 나머지를 차례대로 적용하여 자릿수를 구하는 생각을 왜 못할까? ㅠ_ㅠ

## 문제를 풀면서 맞이한 문제점 ##
  1. 처음에는 간단하게 생각해 신경쓰지 않고, 배열로 만든 후, sort() 메서드를 이용하려고 했지만
    > 이것은 오름차순, 내림차순 정렬이 아닌, 말 그대로 순서만 바꾸는 로직이라 실패
    > for문을 이용해 순서를 바꾸는 로직을 이용하고 싶어서 생각해서 풀어냈다.
  
 ## 다른 사람 풀이 중 심플한 코드 첨부
 1. 형변환에 대해서 통달한 사람의 풀이 인것 같다. ("" + n) 이 부분을 생각못했다.. ㅠ_ㅠ
/////////////////////////////////////////////////////////////////
class Solution {
  public int[] solution(long n) {
      String a = "" + n;
        int[] answer = new int[a.length()];
        int cnt=0;

        while(n>0) {
            answer[cnt]=(int)(n%10);
            n/=10;
            System.out.println(n);
            cnt++;
        }
      return answer;
  }
}
////////////////////////////////////////////////////////////////// 
*/