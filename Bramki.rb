# Kamil Rybarski
# 15.12.2017

# ----
# Bramki logiczne
# ----
# Napisać program, w którym zdefiniowane są funkcje/bramki:
# - gAnd - Jako parametr funkcji może zostać podana dowolna liczba binarnych wejść.
# - gOr - Jako parametr funkcji może zostać podana dowolna liczba binarnych wejść.
# - gXor -  Bramka dwuwejściowa
# - gNot - Bramka jednowejściowa

# Każda funkcja ma działać jak określona w nazwie bramka binarna.

# Przykładowy wynik działania programu:

# ----------
# #puts gOr(FALSE, TRUE, FALSE, FALSE)
# true
# #puts gXor(TRUE, TRUE)
# false
# ----------

def not_gate input
	"NOT #{input} => #{!input}"
end

def xor_gate arg1, arg2
	"XOR (#{arg1}, #{arg2}) => #{(arg1 != arg2)}"
end

def and_gate arg1, arg2
	"AND (#{arg1}, #{arg2}) => #{arg1 && arg2}"
end

def or_gate arg1, arg2
	"OR (#{arg1}, #{arg2}) => #{arg1 || arg2}"
end

puts "AND:"
puts and_gate true, true
puts and_gate true, false
puts and_gate false, true
puts and_gate false, false

puts "OR:"
puts or_gate true, true
puts or_gate true, false
puts or_gate false, true
puts or_gate false, false

puts "NOT:"
puts not_gate true
puts not_gate false

puts "XOR:"
puts xor_gate true, true
puts xor_gate false, false
puts xor_gate true, false
puts xor_gate false, true