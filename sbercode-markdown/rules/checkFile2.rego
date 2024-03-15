package sbercode

default ok = false

ok = true {
	res := input.exists
	res== "exists"
}

allow[msg] {
	ok == false
	msg := "[OK] файл присутствует"
}

error[msg] {
	ok == false
	msg := "[ERROR] файла нет"
}

deny[msg] {
	msg := input.error
}
