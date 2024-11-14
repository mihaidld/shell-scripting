#!/bin/sh
cp ${1} ${2} || mv ${2} new.txt && echo Success || echo Failed
