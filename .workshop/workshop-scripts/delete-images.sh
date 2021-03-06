#!/bin/bash

SCRIPTS_DIR=`dirname $0`

. $SCRIPTS_DIR/parse-arguments.sh

. $SCRIPTS_DIR/setup-environment.sh

echo "### Delete daemon set for pre-pulling images."

oc delete daemonset/$NAME_PREFIX$WORKSHOP_NAME-prepull -n "$NAMESPACE"
