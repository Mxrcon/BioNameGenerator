rm Dictionaries.db
csvsql --db "sqlite:///Dictionaries.db" --insert ./TsvDictionaries/*.tsv
