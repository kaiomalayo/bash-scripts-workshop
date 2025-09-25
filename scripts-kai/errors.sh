#!/bin/bash
ls /noexisteix > errors.log 2>&1
echo "Alguna cosa ha fallat! Revisa errors.log"
