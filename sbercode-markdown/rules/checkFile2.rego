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
	msg := "[ERROR] файла нет"
}

error[msg] {
	msg := input.error
}
