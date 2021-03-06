## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

def min_max_difference(line)
  array = line.split.map(&:to_i)
  array.max - array.min
end

file = File.open('data/3.txt', 'r:UTF-8')
door_key = 0
file.each do |line|
  door_key += min_max_difference(line)
end
puts door_key
file.close
