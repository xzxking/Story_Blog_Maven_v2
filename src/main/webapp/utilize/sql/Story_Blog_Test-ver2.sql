-- Story Blog Ver.2 User Test




-- �ù� --





-- Story Blog Ver.2 Diary Test
select * from story_diary;
Select d_diary from story_diary where user_email = 'admin';
Select distinct d_diary from story_diary where user_email = 'admin'; --distinct�� �ߺ� ����!!
SELECT nvl(count(*),0) FROM story_diary WHERE user_email ='admin' and d_diary ='11';
Select distinct d_diary from story_diary where user_email = 'admin' order by d_diary asc;
Select distinct d_diary from story_diary where user_email = 'admin' and d_diary != 'Test' order by d_diary asc;

-- ���� �˻� �׽�Ʈ (�ذ�.. ��ȣ��������)
select * from (select rownum rnum, b.* from (select num, d_diary, d_date, subject, content from story_diary
		 where user_email='admin' and d_diary = '11' and subject like '%3%' or content like '%3%' order by num desc) b) 
		 where rnum between 1 and 10; -- �Ұ���. �� �ҷ���
select * from (select rownum rnum, b.* from (select num, d_diary, d_date, subject, content from story_diary
		 where user_email='admin' and d_diary = '11' and (subject like '%3%' or content like '%3%') order by num desc) b) 
		 where rnum between 1 and 10; -- ����. ���ϴ� �� �����
 
-- ���� �����ΰ�...��
select subject, d_diary, content from story_diary where d_diary = '11' and user_email = 'admin' and subject like '%3%'; -- ���� 3������ ���� ��, ����.. 4������ �̻�..
select subject, d_diary, content from story_diary where d_diary = '11' and user_email = 'admin' and subject like '%3%' or content like '%3%'; -- 4��, �Ұ���
select subject, d_diary, content from story_diary where d_diary = '11' and user_email = 'admin' and (subject like '%3%' or content like '%3%'); -- ��ȣó��, ����

SELECT nvl(count(*),0) FROM story_diary WHERE user_email = 'admin' and d_diary = '11' and (subject like '%3%' or content like '%3%');
SELECT nvl(count(*),0) FROM story_diary WHERE user_email = 'admin' and d_diary = '11' and subject like '%3%';

-- ���� �ҷ����� �׽�Ʈ
select * from (select rownum rnum, b.* from (select subject, d_date, filename1, filename2, filename3, filename4, filename5, filename6 from story_diary
		 where user_email = 'admin' and (FILENAME1 is not null or filename2 is not null or
         filename3 is not null or filename4 is not null or filename5 is not null or filename6 is not null)  order by d_date desc) b) where rnum between 1 and 20;

Select subject, d_date, filename1, filename2, filename3, filename4, filename5, filename6 from story_diary where user_email = 'admin' and 
(FILENAME1 is not null or filename2 is not null or filename3 is not null or filename4 is not null or filename5 is not null or filename6 is not null) order by d_date desc;  

-- ���� ��
SELECT nvl(count(*),0) FROM story_diary WHERE user_email = 'admin' and 
(FILENAME1 is not null or filename2 is not null or filename3 is not null or filename4 is not null or filename5 is not null or filename6 is not null);
