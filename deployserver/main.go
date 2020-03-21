package main

import (
	"io"
	"log"
	"net/http"
	"os/exec"
        "fmt"
)

func reLaunch() {
        fmt.Println("in reLaunch")
	cmd := exec.Command("sh", "./deploy.sh")
	err := cmd.Start()
	if err != nil {
		log.Fatal(err)
                fmt.Println("err:", err)
	}
	err = cmd.Wait()
        fmt.Println("end reLaunch")
}

func firstPage(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "<h1>Hello DevOps Server Page</h1>")
	reLaunch()
}

func main() {
	http.HandleFunc("/", firstPage)
	http.ListenAndServe(":5000", nil)
}
