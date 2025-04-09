
/* pay_box insert */
insert into pay_box values( 16, 4 , 'B1' ,41000, '카드결제',sysdate, 'UNUSED');

주문내역 

주문 번호 : 고유키
상품정보 : 박스이미지, 구매날짜, 박스명
결재 금액 : 결재 금액
개봉 여부 : 

user pk 

member, paybox, box_img
조건 user_pk , 
payid 

/* 주문내역 쿼리 */
select user_pk      /*고유키*/        
        ,box_img    /* 박스이미지*/   
        ,box_name   /* 박스 이름*/    
        ,pay_date   /*구매날짜*/      
        ,price      /* 구매 가격*/    
        ,p.status   /* 개봉 여부 */    
from pay_box p
join member using(user_pk)
join box b using(box_code)
join box_img bi using (box_img_code)
where user_pk = '4';
  

/* 환불 내역 쿼리 */
select user_pk      /*고유키*/
        ,box_img    /* 박스이미지*/
        ,box_name   /* 박스 이름*/
        ,pay_date   /* 환불 날짜 (컬럼 추가 되면 컬럼명 변경예정)*/  
        ,price      /* 구매 가격*/
        ,p.status   /* 환불 진행 여부 */
from pay_box p
join member using(user_pk)
join box b using(box_code)
join box_img bi on bi.box_img_code = b.box_img_code
where user_pk = '4';

/* 배송 내역 쿼리  */

select   order_id      /*접수 번호*/
        ,product_img    /* 실상품 이미지*/
        /* 배송신청 날짜  컬럼 */
        ,product_name /* 실상품 이름 */
        ,product_price /* 실상품 가격 */
        ,user_name        
        ,d.address   /*  배송지 주소*/
        /* 배송 상태 컬럼*/

from delivery d
join product using(product_id)
join product_detail using(product_sn)
join member b using(user_pk)
where user_pk = '4';



select * from box;
select * from pay_box;
select * from trade;