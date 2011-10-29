
fs = require('fs')
path = require('path')
args = process.argv.slice(2)
npm = "#{__dirname}/../package.json"
help = "#{__dirname}/../src/help.txt"
briefs = true


notify = (message) ->
  console.log message

abort = (message) ->
  console.error message
  process.exit(1)

static = ->
  abort "Need to set up the statics generator. Use the guide? #{briefs}"

rails = ->
  abort "Need to set up the rails generator. Use the guide? #{briefs}"

sinatra = ->
  abort "Need to set up the sinatra generator. Use the guide? #{briefs}"


# Parse the arguments and do some fancy stuff on the machines
while args.length
  arg = args.shift()
  switch arg
    when "-h", "--help", "help" then abort(fs.readFileSync(help, 'utf8'))
    when "-v", "--version", "version" then abort("abort(JSON.parse(fs.readFileSync(npm, 'utf8')).version)")
    when "-n", "--no-guide", "no-guide" then briefs = false
    when "static" then static()
    when "rails" then rails()
    when "sinatra" then sinatra()
    else
      notify "\nNot sure what to do here dude. So I'm just going to show you the help?"
      abort(fs.readFileSync(help, 'utf8'))

