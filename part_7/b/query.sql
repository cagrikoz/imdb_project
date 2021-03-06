with tbl as (select nb.nconst, nb.primary_name, nb.primary_profession, tp.tconst, tp.category from imdb.name_basics nb
inner join imdb.title_principals tp on tp.nconst = nb.nconst
where tp.category = 'actress' and nb.primary_profession like '%music_department%' and nb.death_year > 1999)
select tbl.primary_name, tbl.category, tbl.primary_profession from tbl inner join imdb.title_basics tb on tb.tconst = tbl.tconst
where tb.title_type = 'movie' and tb.start_year >= 2000
group by tbl.primary_name, tbl.category, tbl.primary_profession;