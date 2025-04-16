INCLUDE k_ii_1.ink
INCLUDE k_ii_2.ink
INCLUDE k_ii_3.ink
INCLUDE k_ii_4.ink
INCLUDE s_a_1.ink
INCLUDE s_k_1.ink
INCLUDE s_k_2.ink
INCLUDE s_d_1.ink
INCLUDE s_d_2.ink
INCLUDE s_b_0.ink
INCLUDE s_b_1.ink
INCLUDE s_b_2.ink
INCLUDE s_b_3.ink
INCLUDE s_b_4.ink
INCLUDE p_r_1.ink
INCLUDE d_ii_5.ink
INCLUDE s_a_2.ink
INCLUDE s_a_3.ink
INCLUDE s_a_4.ink
INCLUDE s_k_3.ink
INCLUDE s_k_4.ink
INCLUDE s_k_5.ink
INCLUDE s_ii_6.ink
INCLUDE s_ii_7.ink
INCLUDE s_ii_8.ink
INCLUDE s_ii_9.ink
INCLUDE s_ii_10.ink
INCLUDE s_ii_11.ink
INCLUDE s_ii_12.ink
INCLUDE s_ii_13.ink
INCLUDE s_ii_14.ink
INCLUDE s_ii_15.ink
INCLUDE s_ii_16.ink
INCLUDE s_ii_17.ink
INCLUDE d_ii_18.ink
INCLUDE d_ii_19.ink
INCLUDE d_ii_20.ink
INCLUDE d_ii_21.ink
INCLUDE d_ii_22.ink
INCLUDE s_a_5.ink
INCLUDE s_k_6.ink
INCLUDE s_k_7.ink
INCLUDE p_r_3.ink
INCLUDE s_d_3.ink
INCLUDE s_a_6.ink
INCLUDE s_k_8.ink
INCLUDE b_b_5.ink
INCLUDE p_r_4.ink
INCLUDE s_d_4.ink
INCLUDE s_d_5.ink
INCLUDE s_d_6.ink
INCLUDE s_d_7.ink
INCLUDE s_d_8.ink
INCLUDE k_ii_23.ink
INCLUDE k_ii_24.ink
INCLUDE s_b_6.ink
INCLUDE p_r_2.ink
INCLUDE s_a_7.ink
INCLUDE s_k_9.ink
INCLUDE s_d_9.ink

VAR is_arrival = false
VAR is_first_meeting = false
VAR is_setting_in = false
VAR is_dead_end = false
VAR is_ancient_artifact = false
VAR is_climax = false
VAR is_kicked_out_in_shame = false
VAR is_decided_to_leave = false
VAR is_stayed_on_planet = false


VAR dialog_K_II_1_complete = false
VAR dialog_K_II_2_completed = false
VAR dialog_K_II_3_completed = false
VAR dialog_K_II_4_completed = false
VAR dialog_S_D_1_completed = false
VAR dialog_S_D_2_completed = false
VAR dialog_S_A_1_completed = false
VAR dialog_S_K_1_completed = false
VAR dialog_S_K_2_completed = false
VAR dialog_S_B_0_completed = false
VAR dialog_S_B_1_completed = false
VAR dialog_S_B_2_completed = false
VAR dialog_S_B_3_completed = false
VAR dialog_S_B_4_completed = false
VAR dialog_S_A_2_completed = false
VAR dialog_S_A_3_completed = false
VAR dialog_S_A_4_completed = false
VAR dialog_S_K_3_completed = false
VAR dialog_S_K_4_completed = false
VAR dialog_S_K_5_completed = false
VAR dialog_S_II_6_completed = false
VAR dialog_S_II_7_completed = false
VAR dialog_S_II_8_completed = false
VAR dialog_S_II_9_completed = false
VAR dialog_S_II_10_completed = false
VAR dialog_S_II_11_completed = false
VAR dialog_S_II_12_completed = false
VAR dialog_S_II_13_completed = false
VAR dialog_S_II_14_completed = false
VAR dialog_S_II_15_completed = false
VAR dialog_S_II_16_completed = false
VAR dialog_S_II_17_completed = false
VAR dialog_D_II_18_completed = false
VAR dialog_D_II_19_completed = false
VAR dialog_D_II_20_completed = false
VAR dialog_P_R_2_completed = false
VAR dialog_D_II_21_completed = false
VAR dialog_D_II_22_completed = false
VAR dialog_S_A_5_completed = false
VAR dialog_S_K_6_completed = false
VAR dialog_S_K_7_completed = false
VAR dialog_P_R_3_completed = false
VAR dialog_S_D_3_completed = false
VAR dialog_S_A_6_completed = false
VAR dialog_S_K_8_completed = false
VAR dialog_B_B_5_completed = false
VAR dialog_P_R_4_completed = false
VAR dialog_S_D_4_completed = false
VAR dialog_S_D_5_completed = false
VAR dialog_S_D_6_completed = false
VAR dialog_S_D_7_completed = false
VAR dialog_S_D_8_completed = false
VAR dialog_K_II_24_completed = false
VAR dialog_S_B_6_completed = false
VAR dialog_D_II_5_completed = false
VAR dialog_P_R_1_completed=false
VAR polite=0
VAR chill=0
VAR cheeky=0

-> arrival_to_tetis
=== navigation_hub === 
#Location: Центр острова
Вы находитесь в центре островка. 
Отсюда можно отправиться в разные стороны:
+ {dialog_S_D_2_completed} [Пойти в гостевой домик] -> guest_house_location
+[Направиться на научную станцию] -> research_station_location
+[Прогуляться до пляжа] -> beach

# Космодром диалоги с ИИ
=== K_II_knot ===
#Location: Подлет
На мониторе корабля появился интерфейс Искуственного интеллекта космодрома Тетитса.
*{is_arrival}[Поприветствовать] -> dialog_K_II_1
*{is_arrival && dialog_K_II_1}[Спросить о планете] -> dialog_K_II_2
*{is_arrival && dialog_K_II_1}[Спросить о работниках станции] -> dialog_K_II_3
*{dialog_K_II_1_complete && dialog_K_II_1}[Объявить готовность к посадке] -> dialog_K_II_4
*{kicked_out_in_shame}[Спросить об отлете] -> dialog_K_II_23
*{decided_to_leave} [Спросить об отлете] -> dialog_K_II_23

# Научная станция диалоги с ассистентом
=== S_A_knot === 
#Location: Научная станция
*{is_first_meeting && !dialog_S_A_1_completed}[Познакомиться] -> dialog_S_A_1
*{is_setting_in && !dialog_S_A_2_completed}[Спросить о директоре] -> dialog_S_A_2
*{is_setting_in && !dialog_S_A_3_completed}[Спросить о компьютере] -> dialog_S_A_3
*{dialog_S_K_4_completed && !dialog_S_A_4_completed}[Спросить о цветах] -> dialog_S_A_4
*{dialog_D_II_21_completed && !dialog_S_A_5_completed}[Спросить о том что было три недели назад] -> dialog_S_A_5
*{is_dead_end && !dialog_S_A_6_completed}[Еще раз спросить что случилось три недели назад] -> dialog_S_A_6
*{stayed_on_planet && chill > 11}[Попрощаться с Михаилом] -> dialog_S_A_7
+ [Поговорить с сотрудниками на станции]-> research_station_location
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_s_a_no_phrase

# Научная станция диалоги с Директором
=== S_D_knot ===
#Location: Научная станция
*{is_first_meeting && !dialog_S_D_1_completed}[Познакомиться с директором] -> dialog_S_D_1
*{dialog_S_D_1 && !dialog_S_D_2_completed}[Спросить что теперь делать] -> dialog_S_D_2
*{dialog_S_K_8_completed && !dialog_S_D_3_completed}[Обвинить ученую] -> dialog_S_D_3
*{is_climax && !dialog_S_D_4_completed}[Попросить собрать сотрудников] -> dialog_S_D_4
*{dialog_S_D_4_completed && !dialog_S_D_5_completed}[Разоблачить ассистента] -> dialog_S_D_5
*{dialog_S_D_4_completed && !dialog_S_D_6_completed}[Разоблачить саму Елизавету Владимировну] -> dialog_S_D_6
*{dialog_S_D_4_completed && !dialog_S_D_7_completed}[Разобралчить главнуб ученую] -> dialog_S_D_7
*{dialog_S_D_4_completed && !dialog_S_D_8_completed && !stayed_on_planet}[Просто попрощаться со всеми сразу] -> dialog_S_D_8
*{stayed_on_planet && cheeky <=11 && polite<= 11 && chill<= 11}[Зайти к директору спросить нет ли возможности все же остаться] -> dialog_S_K_9
+ [Поговорить с сотрудниками на станции]-> research_station_location
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_s_d_no_phrase

=== S_K_knot ===
#Location: Дворик
*{is_first_meeting && !dialog_S_K_1_completed}[Познакомиться] -> dialog_S_K_1
*{dialog_S_D_1_completed && !dialog_S_K_2_completed}[Спросить совета] -> dialog_S_K_2
*{dialog_S_II_7_completed && !dialog_S_K_3_completed}[Попросить совета] -> dialog_S_K_3
*{dialog_S_II_7_completed && !dialog_S_K_4_completed}[Попросить сказать нужный номер] -> dialog_S_K_4
*{dialog_S_A_4_completed && !dialog_S_K_5_completed}[Сказать, что все узнал] -> dialog_S_K_5
*{dialog_D_II_21_completed && !dialog_S_A_5 && !dialog_S_K_6_completed}[Расспросить о событиях] -> dialog_S_K_6
*{dialog_S_A_5_completed && !dialog_S_K_7_completed}[Еще раз расспросить о событиях] -> dialog_S_K_7
*{is_dead_end && !dialog_S_K_8_completed}[Спросить о директоре] -> dialog_S_K_8
*{stayed_on_planet && cheeky > 11}[Попрощаться с Ваней] -> dialog_S_K_9
+ [Поговорить с сотрудниками на станции]-> research_station_location
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_s_k_no_phrase

=== D_II_knot ===
#Location: Домик
*{dialog_S_D_1_completed && !dialog_D_II_5_completed}[Спросить о приглашении] -> dialog_D_II_5
*{is_setting_in && !dialog_D_II_18_completed}[Узнать о развлечениях тут] -> dialog_D_II_18
*{is_setting_in && !dialog_D_II_19_completed}[Узнать о развлечениях тут] -> dialog_D_II_19
*{is_setting_in && !dialog_D_II_20_completed}[Узнать о развлечениях тут] -> dialog_D_II_20
*{is_ancient_artifact && !dialog_D_II_21_completed}[Попросить помочь с компьютером] -> dialog_D_II_21
*{is_ancient_artifact && !dialog_D_II_22_completed}[Расспросить таинственном отделе] -> dialog_D_II_22
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_ii_no_phrase

=== P_R_knot ===
#Location: Пляж
*{is_first_meeting && !dialog_P_R_1_completed}[Наблюдение ихтиозавра] -> dialog_P_R_1
*{is_setting_in && !dialog_P_R_2_completed}[Наблюдение плезиозавтра] -> dialog_P_R_2
*{is_ancient_artifact && !dialog_P_R_3_completed}[Наблюдение мезизавра] -> dialog_P_R_3
*{is_dead_end && !dialog_P_R_4_completed}[Наблюдение трелобита] -> dialog_P_R_4
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_p_r_no_phrase

=== S_II_knot ===
#Location: Склад
*{dialog_S_A_3_completed && !dialog_S_II_6_completed}[Просьба о выдаче компьютера] -> dialog_S_II_6
*{dialog_S_II_6_completed && !dialog_S_II_7_completed}[Просьба о выдаче списанной техники] -> dialog_S_II_7
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[MT-BZ-12] -> dialog_S_II_8
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[PC-AP-10] -> dialog_S_II_9
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[LT-HN-08] -> dialog_S_II_10
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[PC-HN-13] -> dialog_S_II_11
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[SR-FL-07] -> dialog_S_II_12
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[PC-HN-14] -> dialog_S_II_13
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[PC-HN-06] -> dialog_S_II_14
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[PC-HN-10] -> dialog_S_II_15
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[PC-HN-15] -> dialog_S_II_16
*{dialog_S_II_7_completed && !dialog_S_II_15_completed}[LT-BZ-09] -> dialog_S_II_17
+ [Поговорить с сотрудниками на станции]-> research_station_location
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_s_ii_no_phrase

=== B_B_knot ===
#Location: Пляж
*{is_dead_end && !dialog_B_B_5_completed}[Подойти к бегающей Клавдии Ивановне] -> dialog_B_B_5
research_station_location
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_b_b_no_phrase

=== S_B_knot ===
#Location: Кабинет ученой
*{is_first_meeting && !dialog_S_B_0_completed}[Познакомиться] -> dialog_S_B_0
*{dialog_S_K_2_completed && !dialog_S_B_1_completed}[Использовать аргумент судьбы] -> dialog_S_B_1
*{dialog_S_B_1_completed && !dialog_S_B_2_completed}[Использовать аргумент навыков] -> dialog_S_B_2
*{dialog_S_B_2_completed && !dialog_S_B_3_completed}[Использовать аргумент экономии] -> dialog_S_B_3
*{dialog_S_B_3_completed && !dialog_S_B_4_completed}[Использовать аргумент  жалости] -> dialog_S_B_4
*{stayed_on_planet && polite > 11}[Попрощаться с Клавдией Ивановной] -> dialog_S_B_6
+ [Поговорить с сотрудниками на станции]-> research_station_location
+ [Решить куда пойти]-> navigation_hub
+ -> dialog_s_b_no_phrase

=== spaceport_location ===
#Location: Космодром
Вы стоите на большой бетонной площадке, которая, впрочем, уже начала трескаться от вездесущих лиан и влажности. Ваш корабль прибыл сегодня утром, но роботы уже успели его разгрузить и загрузить обратно бесценными научными образцами и музейными экспонатами. Вам осталось только занять своё место в каюте.
+{is_first_meeting}[Обратиться к бортовому ИИ] -> K_II_knot

=== guest_house_location ===
#Location: Домик
Вы зашли в небольшой домик, где селятся гости станции. 
Тут есть всё необходимое, чтобы провести несколько дней с прекрасным видом на океан из окна
+{dialog_S_D_2_completed} [Обратиться к ИИ домика] -> D_II_knot
+[Вернуться в центр островка] -> navigation_hub


=== beach === 
#Location: Пляж
Перед вами шумит знаменитый океан Тетиса, только на горизонте виднеются ещё пару островков.
*{is_first_meeting}[Наблюдение ихтиозавра] -> dialog_P_R_1
*{is_setting_in}[Наблюдение плезиозавтра] -> dialog_P_R_2
*{is_ancient_artifact}[Наблюдение мезизавра] -> dialog_P_R_3
*{is_dead_end}[Наблюдение трелобита] -> dialog_P_R_4
*{is_dead_end}[Обратиться к главной учёной, которая как-то странно и резко двигается на берегу] -> dialog_B_B_5 
+[Вернуться в центр островка] -> navigation_hub

=== research_station_location === 
#Location: Научная станция
Вы прошли через ворота и попали на территорию научной станции. Тут есть внутренний дворик, используемый для ремонта техники, и несколько дверей в кабинеты сотрудников.
+[Поболтать с медведем-конструктором во дворе] -> S_K_knot
+[Обратиться к ассистенту директора] -> dialog_S_A_1
+[Постучаться и зайти в кабинет директора] -> dialog_S_D_1
+{is_setting_in && !dialog_S_II_15_completed}[Обратиться к складскому ИИ] -> S_II_knot
+{dialog_S_D_1_completed}[Заглянуть к главной учёной-биологу] -> dialog_S_B_0 
+[Вернуться в центр островка] -> navigation_hub

=== arrival_to_tetis ===
#Location: Подлет
Вы недавно закончили Академию и, как все медведи, планировали отправиться на стажировку. 
Ваши родители из традиции Конструкторов и держат свою ремонтную мастерскую на планете Берлога, но вы решили встать на путь Биоинженера. 
Время между окончанием Академии и стажировкой вы решили посвятить помощи своим родителям с работой в мастерской и из-за этого пропустили срок подачи документов на стажировки, поэтому не получили место вовремя. 
Вы почти отчаялись куда-то уехать в этом году, но тут получили приглашение на место стажёра Киберфизическо-биологического отдела научной станции на Тетисе.
И вот вы сели на попутный корабль и приближаетесь к Тетису.
~ is_arrival = true
-> K_II_knot

=== first_meeting ===
На космодроме вас никто не ждал, но Искусственный интеллект космодрома подсказал вам, в какую сторону идти до станции. Со всех сторон на горизонте виден берег моря. Станция оказалась меньше, чем вы представляли, — всего несколько белых куполов, закрытых защитным ограждением. Во дворе, около самого большого из куполов, вы видите молодого медведя, который ковыряется в генераторе.
~ is_first_meeting = true
-> research_station_location

=== settling_in ===
Вы разместились в гостевом домике. Обратный рейс на Берлогу будет через несколько дней. Вам предстоит решить, использовать ли это время для отдыха, наблюдений за динозаврами или попытаться разобраться, откуда всё же взялось ваше приглашение.
Как вас воспринимают работники научной станции:
Вежливый - {polite}
Чиловый - {chill}
Дерзкий - {cheeky}
~ is_setting_in = true
-> guest_house_location

=== ancient_artifact ===
Старый компьютер удалось включить, и конструктор Ваня помог вам перенести его в ваш домик. Осталось разобраться, как работать с такой старой техникой.
Как вас воспринимают работники научной станции:
Вежливый - {polite}
Чиловый - {chill}
Дерзкий - {cheeky}
~ is_ancient_artifact = true
-> guest_house_location

=== dead_end ===
Вы стояли и говорили с конструктором Ваней на улице, когда увидели, как директор подходит к пирсу на катере, высаживается на берег и идёт в научный центр. В руках у неё коробка с компьютером новой модели.
Как вас воспринимают работники научной станции:
Вежливый - {polite}
Чиловый - {chill}
Дерзкий - {cheeky}
~ is_dead_end = true
-> research_station_location

=== climax ===
Дни до прихода обратного рейса на Берлогу прошли незаметно. Вы решили зайти в научный центр и попрощаться. Если вы хотите собрать всех и рассказать о своих догадках, кто же отправил приглашение, то это самый подходящий момент.
~ is_climax = true
-> research_station_location

=== kicked_out_in_shame ===
Вы поссорились с работниками станции, и они заблокировали вам вход на территорию. Остаток времени пришлось провести в гостевом домике. Как бы то ни было, пришёл обратный рейс на Берлогу, и можно отправляться домой.
~ is_kicked_out_in_shame = true
-> spaceport_location

=== decided_to_leave ===
Вы прекрасно провели время на Тетисе, но пришло время улетать. Пора отправляться на космодром. Вас, кажется, никто не пришёл провожать, но это не удивительно — все очень заняты работой.
~ is_decided_to_leave = true
-> spaceport_location

=== stayed_on_planet ===
Вы произвели впечатление на учёных своими аналитическими способностями. Директор, кажется, хочет вам что-то сказать, но смотрит на коллег и не решается. Все простепенно все начинают расходиться по кабинетам, может быть кто-то захочет вам сказать еще пару слов.
~ is_stayed_on_planet = true
-> research_station_location


=== dialog_s_d_no_phrase ===
#(S_D_Knot: нет тематик)
Прошу прощения, сейчас я занята, задайте свой вопрос ассистенту Мише.
-> research_station_location

=== dialog_s_a_no_phrase ===
#(S_A_Knot: нет тематик)
Извини, я сейчас занят, попроси ИИ если тебе что-то надо, он мне всегда помогает.
-> research_station_location

=== dialog_s_k_no_phrase ===
#(S_K_Knot: нет тематик)
Ты что-то сказал? Не слышу ничего, пока двигатель проверяю, ну потом поговорим, бывай.
-> research_station_location

=== dialog_ii_no_phrase ===
#(D_II_Knot: нет тематик)
Добро пожаловать на станцию, надеюсь вы проведет время с интересом и пользой.
-> navigation_hub

=== dialog_p_r_no_phrase ===
#(P_R_Knot: нет тематик)
На пляже безмедвежье и даже трилобиты нашли сегодня другое место, чтобы погреться на мелководье.
-> navigation_hub

=== dialog_s_ii_no_phrase ===
#(S_II_Knot: нет тематик)
Не доступен для разговора
-> research_station_location

=== dialog_b_b_no_phrase ===
#(B_B_Knot: нет тематик)
Прошу прощения, у меня полно работы, займитесь чем-нибудь полезным.
-> navigation_hub

=== dialog_s_b_no_phrase ===
#(S_B_Knot: нет тематик)
Прошу прощения, у меня полно работы, займитесь чем-нибудь полезным.
-> research_station_location

