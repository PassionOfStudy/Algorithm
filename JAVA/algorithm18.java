package JAVA;
// 서울에서 김서방 찾기
class Solution {
    public String solution(String[] seoul) {
        // 로직 = seoul배열의 길이만큼 반복하며 "Kim"인 인덱스를 찾아 값을 반환
        // 1. 향상된 for문을 이용해보자
        int index = 0;
        for(String item : seoul) {
            // 주의 할점!
            // String의 경우 == 연산자는 컨텐츠의 내용을 비교하기보다 저장된 주소를 비교함! 2시간 뻘짓;;
            if(item.equals("Kim")) {    
                break;
            } else {    
                index++;
            }
        }
        String answer = String.format("김서방은 %d에 있다", index);
        return answer;
    }
}
public class algorithm18 {
    public static void main(String[] args) {
        
    }
}

/*
<< 서울에서 김서방 찾기 >>
## 처음 나의 문제풀이 접근 ##
> 로직 => 1) 김서방의 위치(index)를 저장할 int type 변수 선언
         2) seoul String 배열의 길이만큼 for문을 실행
         3) seoul[i]번째 content와 "Kim" 같을 때 까지 index++;
         4) seoul[i]번째 content와 "Kim" 같다면 index를 출력하고 break로 for문 탈출

## 다른 구현 방법 생각 ##
> 다른 방법이 생각나지 않아서 고민하다가 다른 사람의 풀이를 찾아보았다.

## 문제를 풀면서 맞이한 문제점 ##
  1. String의 경우 == 비교연산자를 통하여 비교할 수 없으며, String의 메소드인 equals()를 이용하여
    > 컨텐츠를 비교해야한다.(여기서 맞는 로직인데 틀려서 2시간 고생함;;)

 ## 다른 사람 풀이 중 심플한 코드 첨부
 (Array클래스의 asList()메소드를 활용한 방법. 다른 풀이들은 대부분 비슷해서 이 풀이를 첨부)
/////////////////////////////////////////////////////////////////
import java.util.Arrays;

public class FindKim {
    public String findKim(String[] seoul){
        //x에 김서방의 위치를 저장하세요.
        int x = Arrays.asList(seoul).indexOf("Kim");

        return "김서방은 "+ x + "에 있다";
    }

    // 실행을 위한 테스트코드입니다.
    public static void main(String[] args) {
        FindKim kim = new FindKim();
        String[] names = {"Queen", "Tod","Kim"};
        System.out.println(kim.findKim(names));
    }
}
////////////////////////////////////////////////////////////////// 
*/ 