#! /bin/sh

. ../../testenv.sh

TESTS="
inout_write
inout_read
inout_def0
inout_def1
inout_none
inout_sub1
inout_sub2
"
for t in $TESTS; do
    synth_tb $t
done

for t in $TESTS; do
  synth --keep-hierarchy=no $t.vhdl -e $t > syn_$t.vhdl
  analyze $* syn_$t.vhdl tb_$t.vhdl
  elab_simulate tb_$t --ieee-asserts=disable-at-0 --assert-level=error
  clean
done

echo "Test successful"
