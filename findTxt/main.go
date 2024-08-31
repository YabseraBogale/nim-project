package main

import (
	"log"
	"os"
	"os/exec"
)

func main() {
	cmd := exec.Command("locate", "~/*.txt", ">>", "out.txt")
	cmd.Stdout = os.Stdout
	cmd.Stderr = os.Stderr
	err := cmd.Run()
	if err != nil {
		log.Fatalf("cmd.Run() failed with %s\n", err)
	}

}
