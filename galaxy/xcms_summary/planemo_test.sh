# Example of planemo command to launch test



# -- Use of installed package environments
# after having installing package on a local galaxy instance
source /w/galaxy/dev/shed_tools_tool_dependency_dir/R/3.1.2/iuc/package_r_3_1_2/1ca39eb16186/env.sh
source /w/galaxy/dev/shed_tools_tool_dependency_dir/bioconductor-camera/1.22.0/lecorguille/package_bioconductor_camera_1_22_0/22cec61d66c2/env.sh
planemo test --install_galaxy

#All 1 test(s) executed passed.
#abims_xcms_summary[0]: passed


# -- Use of conda dependencies
planemo conda_init --conda_prefix /tmp/mc
planemo conda_install --conda_prefix /tmp/mc . 
planemo test --install_galaxy --conda_prefix /tmp/mc --conda_dependency_resolution

#All 1 test(s) executed passed.
#abims_xcms_summary[0]: passed


# -- Use of shed_test
planemo shed_test --install_galaxy

#All 1 test(s) executed passed.
#toolshed.g2.bx.psu.edu/repos/lecorguille/xcms_summary/abims_xcms_summary/1.0.0[0]: passed

