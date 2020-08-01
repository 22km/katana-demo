package controller

import (
	"fmt"

	"github.com/22km/katana"
)

// SayHiReq ...
type SayHiReq struct {
	Who string `form:"who"`
}

// SayHiResp ...
type SayHiResp struct {
	Action  string `json:"action"`
	Content string `json:"content"`
}

// SayHi ...
func SayHi(c *katana.Context, req *SayHiReq) (*SayHiResp, katana.Error) {
	resp := &SayHiResp{
		Action:  fmt.Sprintf("%s say", req.Who),
		Content: "Hi, katana.",
	}

	return resp, nil
}
