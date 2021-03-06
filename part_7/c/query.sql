with tbl as (select tb.tconst from imdb.title_basics tb
left join imdb.title_principals tp on tp.tconst = tb.tconst
where tb.title_type = 'movie' and tp.category = 'actress' group by tb.tconst having count(*)>=4)
select count(*) movie_count from tbl;