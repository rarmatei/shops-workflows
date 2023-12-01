package main

func hello() {
	sum := 0
	max := int64(2)
	elements := []int{1, 2, 3, 4, 5}

	for _, value := range elements {
		println(value)
		sum++
		if sum <= int(max) {
			println("failure tolerated")
		}
	}
}

func main() {
	hello()
	hello()
}
