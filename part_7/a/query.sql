with tbl as (select tb.tconst, tb.primary_title, tb.start_year, tp.nconst, nb.primary_name, tp.category
from imdb.title_basics tb
inner join imdb.title_principals tp on tp.tconst = tb.tconst
inner join imdb.name_basics nb on nb.nconst = tp.nconst
where tb.title_type = 'movie' and tp.category in('actor','actress')
and tb.start_year between 2000 and 2010)
select tbl.primary_title, tbl.start_year, tc.directors, tbl.primary_name, tbl.category from tbl
inner join imdb.title_crew tc on tc.tconst = tbl.tconst and tc.directors = tbl.nconst;