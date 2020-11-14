import (
	drone "github.com/drone/drone-yaml/yaml"
)

drone.#Pipeline & {
	name: "default"
	platform: {
		os:   "linux"
		arch: "amd64"
	}
	steps: [{
		name:  "lint"
		image: "haproxy-mixin-build-image:0.0.1"
		commands: [
			"make lint",
		]
	}]
}
