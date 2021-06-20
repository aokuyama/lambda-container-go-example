package main

import (
	"context"
	"fmt"
	"github.com/aws/aws-lambda-go/lambda"
)

type Event struct {
	Mode string `json:"mode"`
}

func HandleRequest(ctx context.Context, event Event) (string, error) {
	return fmt.Sprintf("mode: %s", event.Mode), nil
}

func main() {
	lambda.Start(HandleRequest)
}
