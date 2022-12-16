class Solution {
    public int solution(String A, String B) {
        int answer = 0;
        
        String tA = A;
        for ( int i = 0 ; i <A.length(); i++){
            if(tA.equals(B)){
                return answer; 
            }
            String a = tA.substring(tA.length() -1);
            tA = a + tA.substring(0, tA.length()-1);
            ++answer;
        }
        
        return -1;
    }
}