# Wolfbot

Control your Spotify account directly from Slack.

The controller runs on a server continuously and get Slack messages from the
registered channel. You need to register a Spotify account as well as your Slack.

# Installation

The project is built using Haskell. To use it, simply download Stack. Stack is
cool and will setup everything for you.  
Because the toolchain in Haskell is cool, but miss some features, the project
also depends on devloop, a program written by Criteo to simplify workflows.
You need to download the two to get started. Otherwise, prepare your text editor
and jump in.

Install devloop. Of course, you should be using Yarn if you're using Stack.

```
yarn global add devloop
```

Use loop to get started. It will launch and run the server directly.

```
loop
```

The loop server is now running on port 5000. Wolfbot is running on port 3000.

# License

All source code is publicly published as MIT license. As you may know, assets
are not. All illustrations are property of Wolfox and can’t be reused without
permissions. They come directly from the [wolfox.co](https://wolfox.co) website.
Refer to the `COPYING` file for more informations.
