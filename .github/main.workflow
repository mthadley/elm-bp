workflow "CI" {
  on = "push"
  resolves = ["Build and Test"]
}

action "Build and Test" {
  uses = "docker://node:10"
  runs = "make all test"
}
