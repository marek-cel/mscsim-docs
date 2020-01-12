#!/bin/bash

################################################################################

# 123 dpi

################################################################################
# data
################################################################################

gnuplot \
  vspaero_p51_cm.gnuplot \
  vspaero_p51_cx.gnuplot \
  vspaero_p51_cz.gnuplot

gnuplot \
  openfoam_f16_cx.gnuplot \
  openfoam_f16_cz.gnuplot

gnuplot \
  xfoil_naca0012_cm.gnuplot \
  xfoil_naca0012_cx.gnuplot \
  xfoil_naca0012_cz.gnuplot

################################################################################
