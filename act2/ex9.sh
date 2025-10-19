#!/bin/bash

CRACK="oriolorioloriololoriolorioriololoriol"

echo "The result of ##*ori is" ${CRACK##*ori}
echo "The result of #*ori is" ${CRACK#*ori}
echo "The result of %%ol* is" ${CRACK%%ol*}
echo "The result of %ori* is" ${CRACK%ori*}
