=== dialog_S_D_3 ===
*[Сказать, что видел коробку с компьютером] -> вежливое_обвинение
*[Спросить, зачем ей новый компьютер] -> равнодушное_обвинение
*[Обвинить в подставе ради компьютера] -> дерзкое_обвинение

=== вежливое_обвинение ===
Вы: Елизавета Владимировна, здравствуйте. Я видел, как вы несли коробку с новым компьютером. Теперь всё понятно. #Р
Директор: *холодно* Здравствуйте. И что именно вам стало понятно? #Н
Вы: Вы отправили запрос на стажёра, чтобы получить новый компьютер. Это было вашей целью, не так ли? #Р
Директор: *возмущённо* Это совершенно не соответствует действительности! Я никогда не стала бы поступать так непрофессионально. Ваши предположения оскорбительны. #З
Вы: Но запрос был отправлен с этой станции, и вы могли бы быть заинтересованы в новом оборудовании. #Р
Директор: *резко* Ваше присутствие здесь больше нежелательно. Пожалуйста, покиньте станцию немедленно. #З
~dialog_S_D_3_completed = true
-> kicked_out_in_shame

=== равнодушное_обвинение ===
Вы: Елизавета Владимировна, здравсвуйте . Я видел, как вы тащили коробку с новым компьютером и кажется все понял, хотя это уже не имеет значения. #Н
Директор: *холодно* Здравствуйте. И что именно вам стало ясно? #Н
Вы: Ну, вы же отправили запрос на стажёра, чтобы получить этот компьютер, да? #Н
Директор: *возмущённо* Это совершенно не соответствует действительности! Я никогда не стала бы поступать так непрофессионально. Ваши предположения оскорбительны. #З
Вы: Но запрос был отправлен с этой станции, и вы могли  быть заинтересованы в новом оборудовании. #Н
Директор: *резко* Ваше присутствие здесь больше нежелательно. Пожалуйста, покиньте станцию немедленно. #З
~dialog_S_D_3_completed = true
-> kicked_out_in_shame

=== дерзкое_обвинение ===
Вы: Ну что, директор, привет. Я видел, как ты тащила коробку с новым компьютером. Теперь понятно, зачем ты меня сюда вызвала. #З
Директор: *холодно* Здравствуйте. И что именно вам стало понятно? #Н
Вы: Ты отправила запрос на стажёра, чтобы получить новый компьютер. Это было твоей целью, не так ли? #З
Директор: *возмущённо* Это совершенно не соответствует действительности! Я никогда не стала бы поступать так непрофессионально. Ваши предположения оскорбительны. #З
Вы: Но запрос был отправлен с этой станции, и ты могла бы быть заинтересована в новом оборудовании. #З
Директор: *резко* Ваше присутствие здесь больше нежелательно. Пожалуйста, покиньте станцию немедленно. #З
~dialog_S_D_3_completed = true
-> kicked_out_in_shame
