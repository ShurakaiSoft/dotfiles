# dotfiles
.files and settings I use to configure my development machine. The focus here is towards Mac. But some aspects will be useful with linux based systems too.

## Installation
**Warning**: If you want to try out my dotfiles, you should consider forking this repository, review the code and remove the things you don't want or need. Don't blindly use my settings, unless you're aware of the consequences. Use at your own risk!

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

When setting up a new Mac, there are some common Homebrew formulae that are handy to have. Naturally install Homebrew first.


    ./brew.sh

Some dotfile functionality depend on on Homebrew formulae. For example Git/Bash completion.

## Feedback

Suggestions/improvements [welcome](https://github.com/ShurakaiSoft/dotfiles/issues)   
