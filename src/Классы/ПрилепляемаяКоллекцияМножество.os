#Использовать collectionos

Перем Коллекция;

Процедура Добавить(Желудь, ОпределениеЖелудя) Экспорт
	Коллекция.Добавить(Желудь);
КонецПроцедуры

Функция Получить() Экспорт
	Возврат Новый ФиксированноеМножество(Коллекция);
КонецФункции

&ПрилепляемаяКоллекция("Множество")
Процедура ПриСозданииОбъекта()
	Коллекция = Новый МножествоСоответствие();
КонецПроцедуры
