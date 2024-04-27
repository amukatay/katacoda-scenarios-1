package sbercode

#default error = []

pod_list[pods] {
  item := input.items[_]   
  item.kind == "Pod"                   
  pods := item
}

allow[msg] {  
  count(pod_list) > 0
  msg := "Pod created"
}

allow[msg] {  
  count(pod_list) = 0
  msg := "Pod created2"
}

deny[msg] {  
  count(pod_list) = 0
  msg := "https://www.google.ru/ \n No pod found333333333333333333333333333333333333333333333333333333333 33333333333333333 333333333333333 33333333333333 333333333333333 333333333 333333333 \r\n 33333333333 \n 22222222 444444444 \n"
}

deny[msg] {  
  count(pod_list) = 0
  msg := "*Error*. **Pod** ***created3***"
}

deny[msg] {  
  count(pod_list) = 0
  msg := "_Error_.\\ __Pod__ ___created3___"
}

deny[msg] {  
  count(pod_list) = 0
  msg := "[Яндекс](https://ya.ru\"Всплывашка\")"
}

deny[msg] {  
  count(pod_list) = 0
  msg := "Error. Pod<br> created3"
}

deny[msg] {  
  count(pod_list) = 0
  msg := `
### [Definition lists](https://github.com/markdown-it/markdown-it-deflist)

Term 1

:   Definition 1
with lazy continuation.

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.

_Compact style:_

Term 1
  ~ Definition 1

Term 2
  ~ Definition 2a
  ~ Definition 2b
`
}
error[msg] {  
  count(pod_list) < 0
  msg := "https://www.google2.ru/"
}
