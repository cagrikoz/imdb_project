# imdb_project
 data engineering masterclass homework
 
 Veri setleri mysql'e python aracılığı ile yüklenmiştir. Öncelikle imdb'in indirilen veri setleri C:\ProgramData\MySQL\MySQL Server 8.0\Uploads dizini içerisinde 
 name.basics, title.akas, title.basics, title.crew, title.episode, title.principals, title.ratings isimleriyle tutulmalıdır. Kullanılan imdb_create.py ve 
 imdb_load_data.sql uzantılı iki dosya bulunmaktadır. imdb_load_data.sql dosyası içerisinde imdb verilerini yükleyen sorgular bulunmaktadır. imdb_create.py dosyası
 çalıştığında ilk olarak mysql database'ine bağlanıyor ardından aynı dizin altındaki imdb_load_data.sql dosyasını açarak sorguları çalıştırıyor. Script'in başında ve
 sonunda performansı ölçmek için time bilgileri tutuluyor.(Not: python script'inin hatasız çalışması için sql ve python dosyalarının bir dizin altında bulunması
 gerekmektedir.)
 
 
 
 
