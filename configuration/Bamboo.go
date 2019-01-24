package configuration

type Bamboo struct {
	// Service host
	Endpoint string
	Name string
	Aclseparator string
	// Routing configuration storage
	Zookeeper Zookeeper
}
