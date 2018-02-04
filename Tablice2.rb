wojewodztwa = {
    :D => "Dolnośląskie",
	:S => "Śląskie",
	:O => "Opolskie",
	:Z => "Zachodniopomorskie",
	:F => "Lubuskie",
	:L => "Lubelskie",
}
	
Miasta = {
    wojewodztwa[:D] => ["Wrocław", "Legncia"],
	wojewodztwa[:S] => ["Katowice", "Bieruń", "Bielsko-Biała"],
	wojewodztwa[:O] => "Opole",
	wojewodztwa[:Z] => ["Szczecin","aaaaa"],
	wojewodztwa[:F] => ["Gorzów","Zielona góra"],
	wojewodztwa[:L] => "Lublin",
}

wojewodztwa.each_pair { |key, value|
    unless Miasta[value].nil?
	    puts "Miasta z województwa #{wojewodztwa[key]}:"
		puts Miasta[value]
		end
}