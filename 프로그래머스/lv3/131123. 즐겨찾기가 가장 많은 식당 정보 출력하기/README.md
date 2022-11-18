# [level 3] 즐겨찾기가 가장 많은 식당 정보 출력하기 - 131123 

[문제 링크](https://school.programmers.co.kr/learn/courses/30/lessons/131123) 

### having 절과 where절의 차이
>having은 전체 결과, where은 개별 행
Having절은 WHERE절과 비슷하지만 그룹 전체 즉, 그룹을 나타내는 결과 집합의 행에만 적용된다
반면 WHERE절은 개별 행에 적용이 된다.

>having은 SQL select문이 집계 값이 지정된 조건을 충족하는 행만 반환하도록 지정하는 SQL절이다.
where은 단일 테이블에서 데이터를 가져 오거나 여러 테이블과 결합하여 조건을 지정하는데 사용되는 SQL절이다.

>having절은 그룹을 필터링하는 데 사용된다.
where절을 행을 필터링 하는데 사용된다.

>집계 함수는 having 절과 함께 사용할 수 있다.
where절을 have절에 포함된 하위 쿼리에 있지않으면 집계함수와 함께 사용할 수 없다.
(집계함수란, COUNT, MIN, MAX, SUM, AVG등등이 있다.)

>having 절은 Group By 절 뒤에 사용합니다.
Where 절은 Group By 절 앞에 사용합니다.

>간단 요약
Having은 그룹화 또는 집계가 발생한 후 레코드를 필터링하는데 사용된다.
Where은 그룹화 또는 집계가 발생하기 전에 레코드를 필터링하는데 사용된다.
메모리: 0.0 MB, 시간: 0.00 ms

### 구분

코딩테스트 연습 > GROUP BY

### 채점결과

Empty

### 문제 설명

<p>다음은 식당의 정보를 담은 <code>REST_INFO</code> 테이블입니다. <code>REST_INFO</code> 테이블은 다음과 같으며 <code>REST_ID</code>, <code>REST_NAME</code>, <code>FOOD_TYPE</code>, <code>VIEWS</code>, <code>FAVORITES</code>, <code>PARKING_LOT</code>, <code>ADDRESS</code>, <code>TEL</code>은 식당 ID, 식당 이름, 음식 종류, 조회수, 즐겨찾기수, 주차장 유무, 주소, 전화번호를 의미합니다.</p>
<table class="table">
        <thead><tr>
<th>Column name</th>
<th>Type</th>
<th>Nullable</th>
</tr>
</thead>
        <tbody><tr>
<td>REST_ID</td>
<td>VARCHAR(5)</td>
<td>FALSE</td>
</tr>
<tr>
<td>REST_NAME</td>
<td>VARCHAR(50)</td>
<td>FALSE</td>
</tr>
<tr>
<td>FOOD_TYPE</td>
<td>VARCHAR(20)</td>
<td>TRUE</td>
</tr>
<tr>
<td>VIEWS</td>
<td>NUMBER</td>
<td>TRUE</td>
</tr>
<tr>
<td>FAVORITES</td>
<td>NUMBER</td>
<td>TRUE</td>
</tr>
<tr>
<td>PARKING_LOT</td>
<td>VARCHAR(1)</td>
<td>TRUE</td>
</tr>
<tr>
<td>ADDRESS</td>
<td>VARCHAR(100)</td>
<td>TRUE</td>
</tr>
<tr>
<td>TEL</td>
<td>VARCHAR(100)</td>
<td>TRUE</td>
</tr>
</tbody>
      </table>
<hr>

<h5>문제</h5>

<p><code>REST_INFO</code> 테이블에서 음식종류별로 즐겨찾기수가 가장 많은 식당의 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회하는 SQL문을 작성해주세요. 이때 결과는 음식 종류를 기준으로 내림차순 정렬해주세요.</p>

<hr>

<h5>예시</h5>

<p><code>REST_INFO</code> 테이블이 다음과 같을 때</p>
<table class="table">
        <thead><tr>
<th>REST_ID</th>
<th>REST_NAME</th>
<th>FOOD_TYPE</th>
<th>VIEWS</th>
<th>FAVORITES</th>
<th>PARKING_LOT</th>
<th>ADDRESS</th>
<th>TEL</th>
</tr>
</thead>
        <tbody><tr>
<td>00001</td>
<td>은돼지식당</td>
<td>한식</td>
<td>1150345</td>
<td>734</td>
<td>N</td>
<td>서울특별시 중구 다산로 149</td>
<td>010-4484-8751</td>
</tr>
<tr>
<td>00002</td>
<td>하이가쯔네</td>
<td>일식</td>
<td>120034</td>
<td>112</td>
<td>N</td>
<td>서울시 중구 신당동 375-21</td>
<td>NULL</td>
</tr>
<tr>
<td>00003</td>
<td>따띠따띠뜨</td>
<td>양식</td>
<td>1234023</td>
<td>102</td>
<td>N</td>
<td>서울시 강남구 신사동 627-3 1F</td>
<td>02-6397-1023</td>
</tr>
<tr>
<td>00004</td>
<td>스시사카우스</td>
<td>일식</td>
<td>1522074</td>
<td>230</td>
<td>N</td>
<td>서울시 서울시 강남구 신사동 627-27</td>
<td>010-9394-2554</td>
</tr>
<tr>
<td>00005</td>
<td>코슌스</td>
<td>일식</td>
<td>15301</td>
<td>123</td>
<td>N</td>
<td>서울특별시 강남구 언주로153길</td>
<td>010-1315-8729</td>
</tr>
</tbody>
      </table>
<p>SQL을 실행하면 다음과 같이 출력되어야 합니다.</p>
<table class="table">
        <thead><tr>
<th>FOOD_TYPE</th>
<th>REST_ID</th>
<th>REST_NAME</th>
<th>FAVORITES</th>
</tr>
</thead>
        <tbody><tr>
<td>한식</td>
<td>00001</td>
<td>은돼지식당</td>
<td>734</td>
</tr>
<tr>
<td>일식</td>
<td>00004</td>
<td>스시사카우스</td>
<td>230</td>
</tr>
<tr>
<td>양식</td>
<td>00003</td>
<td>따띠따띠뜨</td>
<td>102</td>
</tr>
</tbody>
      </table>

> 출처: 프로그래머스 코딩 테스트 연습, https://programmers.co.kr/learn/challenges
