#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

FECALD=${FECALD:-$SRCDIR/fecald}
FECALCLI=${FECALCLI:-$SRCDIR/fecal-cli}
FECALTX=${FECALTX:-$SRCDIR/fecal-tx}
FECALQT=${FECALQT:-$SRCDIR/qt/fecal-qt}

[ ! -x $FECALD ] && echo "$FECALD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
SHITVER=($($FECALCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for fecald if --version-string is not set,
# but has different outcomes for fecal-qt and fecal-cli.
echo "[COPYRIGHT]" > footer.h2m
$FECALD --version | sed -n '1!p' >> footer.h2m

for cmd in $FECALD $FECALCLI $FECALTX $FECALQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${SHITVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${SHITVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
