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
|*Столбец 1*|**Столбец 2**|***Столбец 3***|
|:-|:-:|-:|
|**Равнение по левому краю**|***Равнение по центру***|*Равнение по правому краю*|
|***Запись***|*Запись*|**Запись**|

`
}

deny[msg] {
	ok == false
	msg := `
|Столбец 1|Столбец 2|Столбец 3|
|-|--------|---|
|Длинная запись в первом столбце|Запись в столбце 2|Запись в столбце 3|
|Кртк зпс| |Слева нет записи|
`
}

deny[msg] {
	ok == false
	msg := `
```
print('hello world') 
```
`
}

error[msg] {
	msg := input.error
}
