package main

import (
	"fmt"
	"os"
)

func main() {
	home, err := os.UserHomeDir()
	if err != nil {

	}

	homedir, err := os.ReadDir(home)
	if err != nil {

	}

	for _, i := range homedir {
		fmt.Println(i.Name())
	}

}
