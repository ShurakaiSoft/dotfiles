# dotfiles
**WARNING** This is still very much a *"work in progress"*...

Here are some dotfiles, settings and configuration scripts I use to bootstrap a new development machine. I currently use a MacBook Pro for development so the focus here is towards MacOS. However I'm also partial to linux systems and this information could be useful on those platforms too.


## Installation
**WARNING**: If you want to try out my dotfiles, you should consider forking this repository, review the code and remove the things you don't want or need. Don't blindly use my settings, unless you're aware of the consequences. Use at your own risk!

### Using Git
Clone the repository wherever you like. I like to keep it in `~/projects/dotfiles`.

    git clone https://github.com/shurakaisoft/dotfiles.github

### Personalised Environment

I use `environment variables` to store a few personalised settings for things like git. It looks something like this

    # Git credentials
    # Not in repo, so people don't accidentally commit code under my name.
    GIT_AUTHOR_NAME="Stephen Parker"
    GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
    get config --global user.name "$GIT_AUTHOR_NAME"
    GIT_AUTHOR_EMAIL="shurakaisoft@gmail.com"
    GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
    git config --global user.email "$GIT_AUTHOR_EMAIL"


These are usually stored in `~/.extras` and don't get committed to the repository.


## Some MacOS defaults

Some sensible MacOS defaults can be found in:

    ./.macos


## Homebrew formulae

When setting up a new development environment, there are some common `Homebrew` formulae that are handy to have. Naturally install `Homebrew` first.

    ./brew.sh

Some dotfile functionality depend on `Homebrew` formulae. For example Git/Bash completion.


## Troubleshooting

### bash_completion and sed

With the standard version of `sed` that ships with MacOS, it throws an error when using `bash_completion`. The solution is to install the `GNU` version of `sed`. This is automatically done in the `brew.sh` script. If you didn't install that script, you will still need to get `GNU` `sed` or `bash_completion` will not work.

### Bad configuration option: usekeychain

The `brew.sh` script replaces the version of `ssh` that ships with MacOS with `OpenSSH`, which doesn't recognise the option `UseKeychain yes` in `~/.ssh/config`. This can easily be fixed by adding `IgnoreUnknown UseKeychain` to the config file, above the offending line.

    Host *
      IgnoreUnknown UseKeychain
      UseKeychain yes
      ...


## Feedback

Suggestions/improvements [welcome](https://github.com/ShurakaiSoft/dotfiles/issues)   
