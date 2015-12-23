package go_service_template_test

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"

	"testing"
)

func TestGoServiceTemplate(t *testing.T) {
	RegisterFailHandler(Fail)
	RunSpecs(t, "GoServiceTemplate Suite")
}
