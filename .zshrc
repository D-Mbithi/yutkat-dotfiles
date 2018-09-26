#==============================================================#
#               .zshrc                                         #
#==============================================================#

# profile
if [ "$ZSHRC_PROFILE" != "" ]; then
  zmodload zsh/zprof && zprof > /dev/null
fi

#--------------------------------------------------------------#
##          Base Configuration                                ##
#--------------------------------------------------------------#

source-safe() { if [ -f "$1" ]; then source "$1"; fi }

source-safe "$ZRCDIR/base.zsh"


#--------------------------------------------------------------#
##          Completion                                        ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/completion.zsh"


#--------------------------------------------------------------#
##          Options                                           ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/option.zsh"


#--------------------------------------------------------------#
##          Key Bindings                                      ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/bindkey.zsh"

source-safe "$ZHOMEDIR/zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}"
source-safe "$ZHOMEDIR/zkbd/bindkey.zsh"


#--------------------------------------------------------------#
##          Prompt Configuration                              ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/prompt.zsh"


#--------------------------------------------------------------#
##          Command                                           ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/commandconfig.zsh"


#--------------------------------------------------------------#
##          Plugin                                            ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/pluginlist.zsh"
source-safe "$ZRCDIR/pluginconfig.zsh"


#--------------------------------------------------------------#
##          Aliases                                           ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/alias.zsh"


#--------------------------------------------------------------#
##          Function                                          ##
#--------------------------------------------------------------#

source-safe "$ZRCDIR/function.zsh"


#--------------------------------------------------------------#
##          Execute Script                                    ##
#--------------------------------------------------------------#

source-safe "$ZDOTDIR/.zshrc.local"
source-safe "$ZHOMEDIR/.zshrc.local"


