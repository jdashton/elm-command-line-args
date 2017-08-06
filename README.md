# Command-line Elm Example

This is a brief example of how to pass command-line arguments to a "headless" Elm program running under Node.js.

After cloning this repo, you'll need to install the Elm `core` package in this directory:
```
elm package install
```
Then compile `Main.elm` to produce `main.js`:
```
elm make --output main.js Main.elm
```
Finally run the example with some example arguments:
```
node js.js param1 param2 arg3
```
There's also an HTML file to play with, to get a sense of the more conventional use of ports. You can interact with this example directly from the Javascript console in your browser. Try commands like this:
```
worker.ports.stdin.send(["var1", "var2"])
```
Let me know what's good or bad about this example. I'm also interested in paring out any parts that aren't necessary to this demonstration.
