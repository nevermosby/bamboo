package configuration

type Bamboo struct {
	// Service host
	Endpoint string
	Name string
	// Routing configuration storage
	Zookeeper Zookeeper
}
