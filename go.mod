module katana-demo

go 1.12

require (
	github.com/22km/katana v0.0.0-20200801040836-47a840b662ab
	github.com/robfig/cron v1.2.0 // indirect
	gopkg.in/yaml.v2 v2.2.4
)

replace (
	cloud.google.com/go => github.com/googleapis/google-cloud-go v0.50.0
	cloud.google.com/go/bigquery => github.com/googleapis/google-cloud-go/bigquery v1.3.0
	cloud.google.com/go/datastore => github.com/googleapis/google-cloud-go/datastore v1.0.0
	cloud.google.com/go/pubsub => github.com/googleapis/google-cloud-go/pubsub v1.1.0
	cloud.google.com/go/storage => github.com/googleapis/google-cloud-go/storage v1.4.0
	golang.org/x/crypto => github.com/golang/crypto v0.0.0-20191219195013-becbf705a915
	golang.org/x/exp => github.com/golang/exp v0.0.0-20191227195350-da58074b4299
	golang.org/x/image => github.com/golang/image v0.0.0-20191214001246-9130b4cfad52
	golang.org/x/lint => github.com/golang/lint v0.0.0-20191125180803-fdd1cda4f05f
	golang.org/x/mobile => github.com/golang/mobile v0.0.0-20191210151939-1a1fef82734d
	golang.org/x/mod => github.com/golang/mod v0.1.0
	golang.org/x/net => github.com/golang/net v0.0.0-20200114155413-6afb5195e5aa
	golang.org/x/oauth2 => github.com/golang/oauth2 v0.0.0-20191202225959-858c2ad4c8b6
	golang.org/x/sync => github.com/golang/sync v0.0.0-20190911185100-cd5d95a43a6e
	golang.org/x/sys => github.com/golang/sys v0.0.0-20191220220014-0732a990476f
	golang.org/x/text => github.com/golang/text v0.3.2
	golang.org/x/time => github.com/golang/time v0.0.0-20191024005414-555d28b269f0
	golang.org/x/tools => github.com/golang/tools v0.0.0-20191227053925-7b8e75db28f4
	golang.org/x/xerrors => github.com/golang/xerrors v0.0.0-20191204190536-9bdfabe68543
	google.golang.org/api => github.com/googleapis/google-api-go-client v0.15.0
	google.golang.org/appengine => github.com/golang/appengine v1.4.0
	google.golang.org/genproto => github.com/googleapis/go-genproto v0.0.0-20191223191004-3caeed10a8bf
	google.golang.org/grpc => github.com/grpc/grpc-go v1.26.0
)
