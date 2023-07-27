#!/usr/bin/env bats

@test "evaluate kiali pod status" {
  run bash -c "kubectl get pods -n istio-system -o wide | grep 'kiali'"
  [[ "${output}" =~ "Running" ]]
}
