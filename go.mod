module github.com/openshift/builder

go 1.13

require (
	github.com/MakeNowJust/heredoc v0.0.0-20170808103936-bb23615498cd
	github.com/Nvveen/Gotty v0.0.0-20120604004816-cd527374f1e5 // indirect
	github.com/containers/buildah v1.19.8
	github.com/containers/common v0.33.4
	github.com/containers/image/v5 v5.10.5
	github.com/containers/storage v1.24.8
	github.com/docker/distribution v2.7.1+incompatible
	github.com/elazarl/goproxy v0.0.0-20191011121108-aa519ddbe484 // indirect
	github.com/fsouza/go-dockerclient v1.6.6
	github.com/opencontainers/runc v1.0.0-rc91.0.20200707015106-819fcc687efb
	github.com/opencontainers/runtime-spec v1.0.3-0.20200710190001-3e4195d92445
	github.com/openshift/api v0.0.0-20210222200543-70b287c0a0a5
	github.com/openshift/client-go v0.0.0-20201020074620-f8fd44879f7c
	github.com/openshift/imagebuilder v1.1.8
	github.com/openshift/library-go v0.0.0-20201123212217-43f358922ea0
	github.com/openshift/source-to-image v1.3.1
	github.com/pkg/errors v0.9.1
	github.com/spf13/cobra v1.1.1
	github.com/spf13/pflag v1.0.5
	golang.org/x/sys v0.0.0-20201218084310-7d0127a74742
	k8s.io/api v0.20.0
	k8s.io/apimachinery v0.20.0
	k8s.io/client-go v0.20.0
	k8s.io/component-base v0.20.0
	k8s.io/klog/v2 v2.4.0
	k8s.io/kubectl v0.20.0
	k8s.io/kubernetes v1.20.0
)

replace (
	github.com/containerd/containerd => github.com/containerd/containerd v1.3.2
	// needed to force a newer containers/image than we'd pull in via buildah, to get its #1089
	github.com/containers/image/v5 => github.com/containers/image/v5 v5.10.5
	github.com/docker/docker => github.com/openshift/moby-moby v1.4.2-0.20190308215630-da810a85109d
	github.com/docker/libnetwork => github.com/docker/libnetwork v0.8.0-dev.2.0.20171107005402-dcf79f8c7fcb
	github.com/godbus/dbus => github.com/godbus/dbus v0.0.0-20181101234600-2ff6f7ffd60f
	// these dependencies are needed for runtime-tools, where "mod tidy" disrupts them
	github.com/opencontainers/runc => github.com/opencontainers/runc v1.0.0-rc91
	github.com/opencontainers/runtime-spec => github.com/opencontainers/runtime-spec v1.0.1
	github.com/opencontainers/runtime-tools => github.com/opencontainers/runtime-tools v0.8.0
	// Needed to resolve broken transitive dependencies in buildkit and s2i
	golang.org/x/crypto => golang.org/x/crypto v0.0.0-20200323165209-0ec3e9974c59
	// these are needed since k8s.io/kubernetes cites v0.0.0 for these in its go.mod
	k8s.io/api => k8s.io/api v0.20.0
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.20.0
	k8s.io/apimachinery => k8s.io/apimachinery v0.20.0
	k8s.io/apiserver => k8s.io/apiserver v0.20.0
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.20.0
	k8s.io/client-go => k8s.io/client-go v0.20.0
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.20.0
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.20.0
	k8s.io/code-generator => k8s.io/code-generator v0.20.0
	k8s.io/component-base => k8s.io/component-base v0.20.0
	k8s.io/cri-api => k8s.io/cri-api v0.20.0
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.20.0
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.20.0
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.20.0
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.20.0
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.20.0
	k8s.io/kubectl => k8s.io/kubectl v0.20.0
	k8s.io/kubelet => k8s.io/kubelet v0.20.0
	k8s.io/kubernetes => k8s.io/kubernetes v1.19.3
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.20.0
	k8s.io/metrics => k8s.io/metrics v0.20.0
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.20.0
)
