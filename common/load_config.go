package common

import (
	"io/ioutil"

	"github.com/22km/katana/log"
	"gopkg.in/yaml.v2"
)

// BaseConf ...
type BaseConf struct {
	Mode       string `yaml:"mode"`
	Port       string `yaml:"port"`
	GoMaxProcs int    `yaml:"goMaxProcs"`
}

// Conf ...
type Conf struct {
	Base *BaseConf   `yaml:"base"`
	Log  *log.Config `yaml:"log"`
}

var c *Conf

// LoadAppConf ...
func LoadAppConf(path string) error {
	c = &Conf{}

	b, err := ioutil.ReadFile(path)
	if err != nil {
		return err
	}

	return yaml.Unmarshal(b, c)
}

// AppConf ...
func AppConf() *Conf {
	return c
}
