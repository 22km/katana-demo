package common

import (
	"fmt"
)

// Error ...
type Error struct {
	no  int
	msg string
}

// No ...
func (e *Error) No() int {
	return e.no
}

// Error ...
func (e *Error) Error() string {
	return e.msg
}

func (e *Error) copy() *Error {
	return &Error{
		no:  e.no,
		msg: e.msg,
	}
}

// GenError 用于外部生成Error
func GenError(no int, msg string) *Error {
	return &Error{
		no:  no,
		msg: msg,
	}
}

func newErr(no int, msg string) *Error {
	return &Error{
		no:  no,
		msg: msg,
	}
}

// Concat ...
func (e *Error) Concat(format string, a ...interface{}) *Error {
	err := e.copy()
	err.msg += fmt.Sprintf(format, a...)
	return err
}

// define err
var (
	Success    = newErr(0, "success")
	BadRequest = newErr(-1, "bad request")
)
