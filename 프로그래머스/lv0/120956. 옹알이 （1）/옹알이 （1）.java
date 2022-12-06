import java.util.*;

class Solution {
    public int solution(String[] babbling) {
        int answer = 0;

        ArrayList<String> compares = new ArrayList<String>();
        compares.add("aya");
        compares.add("ye");
        compares.add("woo");
        compares.add("ma");

        for (String e : babbling) {
            for (int i = 0; i < compares.size(); i++) {
                if (e.startsWith(compares.get(i)) || e.endsWith(compares.get(i))) {
                    e = e.replaceAll(compares.get(i), "");
                }
            }

            for (int i = 0; i < compares.size(); i++) {
                if (e.startsWith(compares.get(i)) || e.endsWith(compares.get(i))) {
                    e = e.replaceAll(compares.get(i), "");
                }
            }

            for (int i = 0; i < compares.size(); i++) {
                if (e.startsWith(compares.get(i)) || e.endsWith(compares.get(i))) {
                    e = e.replaceAll(compares.get(i), "");
                }
            }

            for (int i = 0; i < compares.size(); i++) {
                if (e.startsWith(compares.get(i)) || e.endsWith(compares.get(i))) {
                    e = e.replaceAll(compares.get(i), "");
                }
            }

            if (e.length() == 0) {
                answer++;
            }
        }



        return answer;
    }


}