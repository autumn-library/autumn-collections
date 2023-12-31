#Использовать ".."
#Использовать "."
#Использовать asserts

&Тест
Процедура ПрилепляемаяКоллекцияКарта() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияКарта"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями.ЕстьПрилепляемаяКоллекция("Карта"))
		.ЭтоИстина();

	ПрилепляемаяКоллекция = УправляющийПрилепляемымиКоллекциями.ПолучитьПрилепляемуюКоллекцию("Карта");

	Ожидаем.Что(ПрилепляемаяКоллекция)
		.ИмеетТип("ПрилепляемаяКоллекцияКарта");

	ПрилепляемаяКоллекция.Добавить(1, Новый ТестОпределение());

	Коллекция = ПрилепляемаяКоллекция.Получить();

	Ожидаем.Что(Коллекция)
		.ИмеетТип("ФиксированнаяКарта");

	Ожидаем.Что(Коллекция.Получить("Тест").ИначеВызватьИсключение("Не найден добавленный элемент"))
		.Равно(1);

КонецПроцедуры

&Тест
Процедура ПрилепляемаяКоллекцияМассив() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияМассив"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями.ЕстьПрилепляемаяКоллекция("Массив"))
		.ЭтоИстина();

	ПрилепляемаяКоллекция = УправляющийПрилепляемымиКоллекциями.ПолучитьПрилепляемуюКоллекцию("Массив");

	Ожидаем.Что(ПрилепляемаяКоллекция)
		.ИмеетТип("ПрилепляемаяКоллекцияМассив");

	ПрилепляемаяКоллекция.Добавить(1, Новый ТестОпределение());

	Коллекция = ПрилепляемаяКоллекция.Получить();

	Ожидаем.Что(Коллекция)
		.ИмеетТип("ФиксированныйМассив");

	Ожидаем.Что(Коллекция[0])
		.Равно(1);

КонецПроцедуры

&Тест
Процедура ПрилепляемаяКоллекцияМножество() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияМножество"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями.ЕстьПрилепляемаяКоллекция("Множество"))
		.ЭтоИстина();

	ПрилепляемаяКоллекция = УправляющийПрилепляемымиКоллекциями.ПолучитьПрилепляемуюКоллекцию("Множество");

	Ожидаем.Что(ПрилепляемаяКоллекция)
		.ИмеетТип("ПрилепляемаяКоллекцияМножество");

	ПрилепляемаяКоллекция.Добавить(1, Новый ТестОпределение());

	Коллекция = ПрилепляемаяКоллекция.Получить();

	Ожидаем.Что(Коллекция)
		.ИмеетТип("ФиксированноеМножество");

	Ожидаем.Что(Коллекция.Содержит(1))
		.ЭтоИстина();

КонецПроцедуры

&Тест
Процедура ПрилепляемаяКоллекцияСоответствие() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияСоответствие"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями.ЕстьПрилепляемаяКоллекция("Соответствие"))
		.ЭтоИстина();

	ПрилепляемаяКоллекция = УправляющийПрилепляемымиКоллекциями.ПолучитьПрилепляемуюКоллекцию("Соответствие");

	Ожидаем.Что(ПрилепляемаяКоллекция)
		.ИмеетТип("ПрилепляемаяКоллекцияСоответствие");

	ПрилепляемаяКоллекция.Добавить(1, Новый ТестОпределение());

	Коллекция = ПрилепляемаяКоллекция.Получить();

	Ожидаем.Что(Коллекция)
		.ИмеетТип("ФиксированноеСоответствие");

	Ожидаем.Что(Коллекция.Получить("Тест"))
		.Равно(1);

КонецПроцедуры

&Тест
Процедура ПрилепляемаяКоллекцияСписок() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияСписок"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями.ЕстьПрилепляемаяКоллекция("Список"))
		.ЭтоИстина();

	ПрилепляемаяКоллекция = УправляющийПрилепляемымиКоллекциями.ПолучитьПрилепляемуюКоллекцию("Список");

	Ожидаем.Что(ПрилепляемаяКоллекция)
		.ИмеетТип("ПрилепляемаяКоллекцияСписок");

	ПрилепляемаяКоллекция.Добавить(1, Новый ТестОпределение());

	Коллекция = ПрилепляемаяКоллекция.Получить();

	Ожидаем.Что(Коллекция)
		.ИмеетТип("ФиксированныйСписок");

	Ожидаем.Что(Коллекция.Содержит(1))
		.ЭтоИстина();

КонецПроцедуры

&Тест
Процедура ПрилепляемаяКоллекцияТаблицаЗначений() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияТаблицаЗначений"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями.ЕстьПрилепляемаяКоллекция("ТаблицаЗначений"))
		.ЭтоИстина();

	ПрилепляемаяКоллекция = УправляющийПрилепляемымиКоллекциями.ПолучитьПрилепляемуюКоллекцию("ТаблицаЗначений");

	Ожидаем.Что(ПрилепляемаяКоллекция)
		.ИмеетТип("ПрилепляемаяКоллекцияТаблицаЗначений");

	ТестОпределение = Новый ТестОпределение();

	ПрилепляемаяКоллекция.Добавить(1, ТестОпределение);

	Коллекция = ПрилепляемаяКоллекция.Получить();

	Ожидаем.Что(Коллекция)
		.ИмеетТип("ТаблицаЗначений");

	Ожидаем.Что(Коллекция)
		.Не_().Равно(ПрилепляемаяКоллекция.Получить());

	Ожидаем.Что(Коллекция[0].Имя).Равно("Тест");
	Ожидаем.Что(Коллекция[0].Желудь).Равно(1);
	Ожидаем.Что(Коллекция[0].ОпределениеЖелудя).Равно(ТестОпределение);

КонецПроцедуры

&Тест
Процедура ПользовательскаяПрилепляемаяКоллекция() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияСтрока"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями.ЕстьПрилепляемаяКоллекция("Строка"))
		.ЭтоИстина();

	ПрилепляемаяКоллекция = УправляющийПрилепляемымиКоллекциями.ПолучитьПрилепляемуюКоллекцию("Строка");

	Ожидаем.Что(ПрилепляемаяКоллекция)
		.ИмеетТип("ПрилепляемаяКоллекцияСтрока");

	ПрилепляемаяКоллекция.Добавить(1, Новый ТестОпределение());
	ПрилепляемаяКоллекция.Добавить(2, Новый ТестОпределение());

	Коллекция = ПрилепляемаяКоллекция.Получить();

	Ожидаем.Что(Коллекция)
		.ИмеетТип("Строка");

	Ожидаем.Что(Коллекция).Равно("1, 2");

КонецПроцедуры

&Тест
Процедура ДубльПрилепляемойКоллекции() Экспорт

	УправляющийПрилепляемымиКоллекциями = Новый УправляющийПрилепляемымиКоллекциями();
	УправляющийПрилепляемымиКоллекциями.ДобавитьПрилепляемуюКоллекцию(Тип("ПрилепляемаяКоллекцияСтрока"));

	Ожидаем.Что(УправляющийПрилепляемымиКоллекциями)
		.Метод("ДобавитьПрилепляемуюКоллекцию",  Список.ИзЭлементов(Тип("ПрилепляемаяКоллекцияСтрока")).ВМассив())
		.ВыбрасываетИсключение("Прилепляемая коллекция Строка уже зарегистрирована");

КонецПроцедуры
