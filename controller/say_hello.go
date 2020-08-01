package controller

import (
	"github.com/22km/katana"
)

// SayHelloReq ...
type SayHelloReq interface{}

// SayHelloResp ...
type SayHelloResp struct {
	Who string `json:"who"`
	Say string `json:"say"`
}

// SayHello ...
func SayHello(c *katana.Context, req *SayHelloReq) (*SayHelloResp, katana.Error) {
	resp := &SayHelloResp{
		Who: "golang",
		Say: "Hello World!",
	}

	return resp, nil
}
