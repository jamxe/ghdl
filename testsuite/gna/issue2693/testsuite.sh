#! /bin/sh

. ../../testenv.sh

if ghdl_is_preelaboration; then
  export GHDL_STD_FLAGS=--std=08
  analyze testbench.vhdl
  elab_simulate testbench

  clean
fi

echo "Test successful"
