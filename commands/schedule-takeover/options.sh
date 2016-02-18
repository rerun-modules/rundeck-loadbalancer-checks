# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Thu Feb 18 12:21:17 PST 2016
#
#/ usage: rundeck-system:schedule-takeover  --uuid <all> [ --project <>]  --url <${RUNDECK_URL:-}> [ --username <${RUNDECK_USER:-}>] [ --password <${RUNDECK_PASSWORD:-}>] [ --apikey <${RUNDECK_APIKEY:-}>] [ --timestamp-threshold <>] [ --timestamp <>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while (( "$#" > 0 ))
    do
        OPT="$1"
        case "$OPT" in
            --uuid) rerun_option_check $# $1; UUID=$2 ; shift ;;
            --project) rerun_option_check $# $1; PROJECT=$2 ; shift ;;
            --url) rerun_option_check $# $1; URL=$2 ; shift ;;
            --username) rerun_option_check $# $1; USERNAME=$2 ; shift ;;
            --password) rerun_option_check $# $1; PASSWORD=$2 ; shift ;;
            --apikey) rerun_option_check $# $1; APIKEY=$2 ; shift ;;
            --timestamp-threshold) rerun_option_check $# $1; TIMESTAMP_THRESHOLD=$2 ; shift ;;
            --timestamp) rerun_option_check $# $1; TIMESTAMP=$2 ; shift ;;
            # help option
            -|--*?) echo >&2 "unrecognized option: $OPT"
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [[ -z "$UUID" ]] && UUID="$(rerun_property_get $RERUN_MODULE_DIR/options/uuid DEFAULT)"
    # Check required options are set
    [[ -z "$UUID" ]] && { echo >&2 "missing required option: --uuid" ; return 2 ; }
    [[ -z "$URL" ]] && { echo >&2 "missing required option: --url" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export URL
    export USERNAME
    export PASSWORD
    export APIKEY
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${UUID:=}
: ${PROJECT:=}
: ${URL:=}
: ${USERNAME:=}
: ${PASSWORD:=}
: ${APIKEY:=}
: ${TIMESTAMP_THRESHOLD:=}
: ${TIMESTAMP:=}


