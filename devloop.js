const process = require('process')

const compile = run({
  name: 'Compile',
  sh: "stack build",
  watch: "src/**",
})

const server = runServer({
  name: 'Server',
  httpPort,
  env: { PORT: httpPort, ...process.env },
  sh: `stack exec wolfbot-exe`,
}).dependsOn(compile)

proxy(server, 8080).dependsOn(compile)
