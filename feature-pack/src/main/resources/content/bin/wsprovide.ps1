##################################################################
#                                                               ##
#    wsprovide tool script for Windows                              ##
#                                                               ##
##################################################################
. ".\common.ps1"

$JAVA_OPTS = @()

# Sample JPDA settings for remote socket debugging
#$JAVA_OPTS+="-agentlib:jdwp=transport=dt_socket,address=8787,server=y,suspend=y"

$JAVA_OPTS+="-Dprogram.name=wsprovide.ps1"

$PROG_ARGS = Get-Java-Arguments -entryModule "org.jboss.ws.tools.wsprovide" -logFileProperties $null -serverOpts $ARGS
& $JAVA $PROG_ARGS

Env-Clean-Up