package go_service_template_test

import (
	. "github.com/mysza/go-service-template/Godeps/_workspace/src/github.com/onsi/ginkgo"
	. "github.com/mysza/go-service-template/Godeps/_workspace/src/github.com/onsi/gomega"

	"testing"
)

func TestGoServiceTemplate(t *testing.T) {
	RegisterFailHandler(Fail)
	RunSpecs(t, "GoServiceTemplate Suite")
}
