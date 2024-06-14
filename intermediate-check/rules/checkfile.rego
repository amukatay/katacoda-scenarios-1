package sbercode

default ok = false

ok = true {
	res := input.exists
	res== "exists"
}

allow[msg] {
	ok
	msg := "[OK] файл присутствует"
}

deny[msg] {
	ok == false
	msg := `
Данная таблица показывает возможности форматирования:

|*Столбец 1*|**Столбец 2**|***Столбец 3***|
|:-|:-:|-:|
|**Равнение по левому краю**|***Равнение по центру***|*Равнение по правому краю*|
|***Запись***|*Запись*|**Запись**|

`
}

deny[msg] {
	ok == false
	msg := `|Столбец 1|Столбец 2|Столбец 3|
|-|-|-|
|Длинная запись в первом столбце|Запись в столбце 2|Запись в столбце 3|
|Кртк зпс| |Слева нет записи|`
}

deny[msg] {
	ok == false
	msg := sprintf("```\n%s\n```\n", ["printf('hello world')"])
}

deny[msg] {
	ok == false
	msg := sprintf("Данный код не работает:\n```\n%s\n```", [`printf('hello world1')
	printf('hello world2')
		printf('hello world3')
			printf('hello world4')`])
}

error[msg] {
	msg := input.error
}

deny[msg] {
	ok == false
	msg := `

    line 1 of code
    	line 2 of code
    		line 3 of code
`
}

