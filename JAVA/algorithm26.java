package JAVA;
// 제일 작은 수 제거하기
import java.util.*;

class Solution {
    public int[] solution(int[] arr) {
        // 로직 = 결과를 저장할 배열을 선언하고 반복문을 이용하여 제일 작은 수의 인덱스를 찾아 그 인덱스를 제외한 값을 저장 
        int size = arr.length;
        int[] arrSort = new int[size];
        // arrSort = arr; 주소값을 전달해서 문제;;;; 순수 값을 가져와야한다.
        // 따라서 값만 따로 저장해서 완전히 새로운 arrSort배열을 만든다
        for(int i=0; i<size; i++) {
            arrSort[i] = arr[i];
        }
        // 배열의 요소를 추가하거나 삭제해야하므로 ArrayList 선언
        ArrayList<Integer> list = new ArrayList<Integer>();
        // 정렬에 필요한 temp사용
        int temp = 0;
        // 사이즈가 1일 경우는 -1만 반환
        if(size == 1) {
            int[] answer = {-1};
            return answer;
        } else {
            // 오름차순 정렬
            for(int i=0; i<size; i++) {
                for(int j=i+1; j<size; j++) {
                    if(arrSort[j] > arrSort[i]) {
                        temp = arrSort[j];
                        arrSort[j] = arrSort[i];
                        arrSort[i] = temp;
                    }
                }
            }
            // 마지막 인덱스를 제외하고 ArrayList에 저장
            int min = arrSort[arrSort.length-1];
            for(int i=0; i<size; i++) {
                if(arr[i] != min) {
                    list.add(arr[i]);
                } 
            }
            
            int[] answer = new int[list.size()];
            for(int i=0; i<list.size(); i++) {
                answer[i] = list.get(i);
            }
            return answer;
        }    
    }
}
public class algorithm26 {
    public static void main(String[] args) {
    }
}
/*
<< 제일 작은 수 제거하기 >>
## 나의 문제풀이 접근 ##
> 로직 => 1) 주어진 배열을 이중for문을 사용하여 제일 작은 수를 찾아 저장
         2) 가변길이를 가지는 ArrayList를 선언한 후, for문을 반복하며, min아니면 .get()메서드를 호출하여 값 추가
         3) 결과 값 출력

## 다른 구현 방법 생각 ##
> 고정된 틀에서 벗어나지 못했다... 하위 다른 사람이 푼 문제를 보고 깨닫게되었다.

## 문제를 풀면서 맞이한 문제점 ##
  1. 아무래도 타입변환에 대한 Error문제가 많았음
    > 계속 신경쓰면서 사용하며 익숙해 지는 방법밖에 없는 것 같다.
  2. Primitive Type(원시타입)과 Reference Type(참조타입)에 대한 이해가 필요
    > 정렬되지 않은 arr[]과 정렬된 arrSort[]를 이용할 때 arr = arrSort를 해줬더니
      Reference Type이라서 arrSort를 바꾸면 arr도 바뀌는 현상이 발생했다.
    > 결국 헤매이다 이 문제는 for문을 통해서 각 인덱스의 값을 전달해 주는 것으로 해결했다.
      다른 방법에 대해서는 아직 검색해보지 못했다.

 ## 다른 사람 풀이 중 심플한 코드 첨부
 1. minIndex를 구하는 과정이 새로워서 첨부한다.
/////////////////////////////////////////////////////////////////
class Solution {
  public int[] solution(int[] arr) {
      if(arr.length <= 1) return new int[]{-1};
      int minIndex = 0;
      for(int i = 1; i < arr.length; i++){
          if(arr[minIndex] > arr[i]){
              minIndex = i;
          }
      }
      int[] answer = new int[arr.length - 1];
      int i = 0;
      int j = 0;
      while(i < answer.length){
          if(j == minIndex){
            j++;
            continue;  
          } 
          answer[i++] = arr[j++];
      }
      return answer;
  }
}
////////////////////////////////////////////////////////////////// 
*/
