Ruby version: 3.0.0 

Rails version: 7.0.8

Database: Postgresql

Весь необходимый интерфейс - консольный.
Создаём данные: rails db:seed
Переходим в консоль: rails c
Назначаем переменные используемые в методах.

player = Player.take
match = Match.take

Реализованные методы:

1. assign_distance и assign_accuracy

Реализуют требование: отметить, что игрок выполнил такой-то показатель в матче

Оба метода принимают два параметра: match_id и (distance или accuracy)

Пример: player.assign_distance(match.id, 9)
        player.assign_accuracy(match.id, 75)


2. check_accuracy и check_distance (без параметров)

Реализуют требование: проверить выполнил ли игрок конкретный показатель хотя бы 1 раз за предыдущие 5 матчей команды.

Пример: player.check_accuracy
        player.check_distance


3. snipers_in_team и marathon_runners_in_team (без параметров)

Реализуют требование: выбрать Top-5 игроков по конкретному показателю в конкретной команде.

Пример: player.snipers_in_team
        player.marathon_runners_in_team

4. self.snipers и self.marathon_runner (без параметров)

Реализуют требование: выбрать Top-5 игроков по конкретному показателю по всем командам в целом.

Пример: Player.snipers
        Player.marathon_runner