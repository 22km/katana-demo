package main

import (
	"flag"
	"fmt"
	"runtime"

	"katana-demo/common"
	"katana-demo/controller"

	"github.com/22km/katana"
	"github.com/22km/katana/log"
)

func main() {
	configPath := flag.String("config", "app.dev.yaml", "config file's path")
	flag.Parse()

	// 初始化启动配置
	if err := common.LoadAppConf(*configPath); err != nil {
		panic("init config failed! err:" + err.Error())
	}

	// 设置 proc
	if common.AppConf().Base.GoMaxProcs > 1 {
		runtime.GOMAXPROCS(common.AppConf().Base.GoMaxProcs)
	} else {
		runtime.GOMAXPROCS(runtime.NumCPU())
	}

	// 初始化日志
	if err := log.Init(common.AppConf().Log); err != nil {
		panic("init log failed! err:" + err.Error())
	}
	defer log.Close()

	// web server 路由 & 启动
	engine := katana.New(common.AppConf().Base.Mode)
	engine.Use(katana.GinRecovery(), katana.Recorder())

	say := engine.Group("/say")
	say.ANY("/hello", controller.SayHello)
	say.GET("/hi", controller.SayHi)

	fmt.Println("try http://127.0.0.1:8088/say/hello")
	fmt.Println("or http://127.0.0.1:8088/say/hi?who=outside")

	if err := engine.Run(common.AppConf().Base.Port); err != nil {
		panic("boot server failed! err:" + err.Error())
	}
}
