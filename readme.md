# 기능 목록
- 사용자 관리
  - [x] usertable 스키마
    - user_id varchar(40) not null primary key
    - user_pw varchar(40) not null
  - [x] 가입
  - [x] 탈퇴
  - [x] 로그인(쿠키)
  - [x] 로그아웃(쿠키)
- To-do
  - [x] todotable 스키마
    - todo_id int not null primary key
    - user_id varchar(40) not null
    - date_time datetime not null
    - todo_content varchar(1000) not null
    - todo_title varchar(100) not null
    - foreign key (user_id) references usertable(user_id)
  - [ ] 할일 생성
  - [ ] 할일 수정
  - [ ] 할일 삭제
- 날씨
  - 위치 요청 기능 포함? http://www.gisdeveloper.co.kr/?p=11131
- 일정
  - 구글 캘린더 연동
  - 일정 테이블(schedtable)
    - sched_id, user_id, date_time, content //foreign key (user_id) references usertable(user_id)
- 뉴스 스크랩
  - 네이버 뉴스
- 금융
  - 주식
  - 환율
