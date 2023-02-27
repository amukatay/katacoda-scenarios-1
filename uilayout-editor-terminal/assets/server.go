package main
import (
    "fmt"
    "net/http"
)
type msg string
func (m msg) ServeHTTP(resp http.ResponseWriter, req *http.Request) {
   fmt.Fprint(resp, m) 
}
func main() {
    msgHandler := msg("Добро пожаловать в SberCode Academy")
    fmt.Println("Вебсервер запущен. Для остановки сервера нажмите CTRL+C")
    http.ListenAndServe("localhost:80", msgHandler)
}
