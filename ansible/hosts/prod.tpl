[flocker-client]
10.100.198.200

[flocker-node]
10.100.192.20[0:2]

[jenkins-node-swarm]
10.100.198.200
10.100.192.200

[logging]
10.100.198.202

[prod]
10.100.198.201 consul_extra="-server -bootstrap -ui"

[registry]
10.100.198.200

[swarm]
10.100.192.200 swarm_master=true consul_extra="-server -bootstrap -ui" docker_cfg=docker-swarm-master.service
10.100.192.20[1:2] swarm_master_ip=10.100.192.200 consul_extra="-join 10.100.192.200" consul_server_ip=10.100.192.200 docker_cfg=docker-swarm-node.service

[swarm-master]
10.100.192.200
