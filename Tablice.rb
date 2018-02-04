# Kamil Rybarski
# 15.12.2017

# Zadanie z tablicami asocjacyjnymi
# --------------------

#  W zadaniu należy zdefiniować dwie tablice asocjacyjne:
#  1. Zawierającą nazwy państw i ich dwuliterowe kody np PL (wybrać 6 dowolnych)
#  2. Zawierającą listy miast z danego państwa reprezentowanego przez dwuliterowy symbol państwa (wpisać po kilka lub co najmniej jedno miasto w 4 z 6 państw)

# Wypisać wszystkie miasta ze wszystkich państw, dla których podane są listy miast.

# Przykładowy wynik działania programu:

# ----------
# Miasta w kraju Polska: 
# Szczecin
# Warszawa
# Miasta w kraju Niemcy: 
# Berlin
# Miasta w kraju Francja: 
# Paryz
# Miasta w kraju Czechy: 
# Praga
# Brno


# UWAGA: Państwa Węgry i Austria nie są wymienione, bo nie podano dla nich żadnych miast.


countries = { 
	:PL => "Polska",
	:DE => "Niemcy",
	:GB => "Wielka Brytania",
	:FR => "Francja",
	:CZ => "Czechy",
	:RU => "Rosja",
}

cities = {     
	countries[:PL] => ["Warszawa", "Poznań", "Sosnowiec", "Zakopane"],
	countries[:FR] => "Paryż",
	countries[:CZ] => ["Brno", "Praga"],
	countries[:RU] => "Moskwa", 
}

countries.each_pair { |key, value|
 	unless cities[value].nil?
 	 	puts "Miasta z kraju #{countries[key]}:"
 		puts cities[value] 		
 	end
}