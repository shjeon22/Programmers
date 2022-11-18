# [level 4] 입양 시각 구하기(2) - 59413 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/59413?language=oracle) 

### 설명

>> 더미테이블 DUAL : 단순계산, 산술연산,함수 결과등 쿼리 결과를 손쉽게 확인해볼 수 있는 임시테이블
>>LEVEL 계층형 쿼리에서 자주쓰는 CONNECT BY절에서 LEVEL을 수용하면,원하는 행을 리턴(LEVEL을 사용하여 FOR문처럼 활용가능)
>> ex> selet LEVEL from DUAL connect by LEVEL <= 10;
>> CONNEVT BY LEVEL <= ?(숫자)를 사용하면 1부터 ?(숫자)까지 LEAVEL 값이 증가
>> LEVEL = ROWNUM ()

### 참고 1 : https://royzero.tistory.com/60  - 암시적 JOIN에 대한 설명
### 참고 2 : https://madinthe90.tistory.com/25 - 계층형 쿼리 구문 LEVEL


### 구분

코딩테스트 연습 > GROUP BY

### 채점결과

Empty

### 문제 설명

<p><code>ANIMAL_OUTS</code> 테이블은 동물 보호소에서 입양 보낸 동물의 정보를 담은 테이블입니다. <code>ANIMAL_OUTS</code> 테이블 구조는 다음과 같으며, <code>ANIMAL_ID</code>, <code>ANIMAL_TYPE</code>, <code>DATETIME</code>, <code>NAME</code>, <code>SEX_UPON_OUTCOME</code>는 각각 동물의 아이디, 생물 종, 입양일, 이름, 성별 및 중성화 여부를 나타냅니다.</p>
<table class="table">
        <thead><tr>
<th>NAME</th>
<th>TYPE</th>
<th>NULLABLE</th>
</tr>
</thead>
        <tbody><tr>
<td>ANIMAL_ID</td>
<td>VARCHAR(N)</td>
<td>FALSE</td>
</tr>
<tr>
<td>ANIMAL_TYPE</td>
<td>VARCHAR(N)</td>
<td>FALSE</td>
</tr>
<tr>
<td>DATETIME</td>
<td>DATETIME</td>
<td>FALSE</td>
</tr>
<tr>
<td>NAME</td>
<td>VARCHAR(N)</td>
<td>TRUE</td>
</tr>
<tr>
<td>SEX_UPON_OUTCOME</td>
<td>VARCHAR(N)</td>
<td>FALSE</td>
</tr>
</tbody>
      </table>
<p>보호소에서는 몇 시에 입양이 가장 활발하게 일어나는지 알아보려 합니다. 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.</p>

<h5>예시</h5>

<p>SQL문을 실행하면 다음과 같이 나와야 합니다.</p>
<table class="table">
        <thead><tr>
<th>HOUR</th>
<th>COUNT</th>
</tr>
</thead>
        <tbody><tr>
<td>0</td>
<td>0</td>
</tr>
<tr>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>2</td>
<td>0</td>
</tr>
<tr>
<td>3</td>
<td>0</td>
</tr>
<tr>
<td>4</td>
<td>0</td>
</tr>
<tr>
<td>5</td>
<td>0</td>
</tr>
<tr>
<td>6</td>
<td>0</td>
</tr>
<tr>
<td>7</td>
<td>3</td>
</tr>
<tr>
<td>8</td>
<td>1</td>
</tr>
<tr>
<td>9</td>
<td>1</td>
</tr>
<tr>
<td>10</td>
<td>2</td>
</tr>
<tr>
<td>11</td>
<td>13</td>
</tr>
<tr>
<td>12</td>
<td>10</td>
</tr>
<tr>
<td>13</td>
<td>14</td>
</tr>
<tr>
<td>14</td>
<td>9</td>
</tr>
<tr>
<td>15</td>
<td>7</td>
</tr>
<tr>
<td>16</td>
<td>10</td>
</tr>
<tr>
<td>17</td>
<td>12</td>
</tr>
<tr>
<td>18</td>
<td>16</td>
</tr>
<tr>
<td>19</td>
<td>2</td>
</tr>
<tr>
<td>20</td>
<td>0</td>
</tr>
<tr>
<td>21</td>
<td>0</td>
</tr>
<tr>
<td>22</td>
<td>0</td>
</tr>
<tr>
<td>23</td>
<td>0</td>
</tr>
</tbody>
      </table>
<hr>

<p>본 문제는 <a href="https://www.kaggle.com/aaronschlegel/austin-animal-center-shelter-intakes-and-outcomes" target="_blank" rel="noopener">Kaggle의 "Austin Animal Center Shelter Intakes and Outcomes"</a>에서 제공하는 데이터를 사용하였으며 <a href="https://opendatacommons.org/licenses/odbl/1.0/" target="_blank" rel="noopener">ODbL</a>의 적용을 받습니다.</p>


> 출처: 프로그래머스 코딩 테스트 연습, https://programmers.co.kr/learn/challenges
