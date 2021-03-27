function get_rdf() {
    echo -e "a OW\nq" | gmx make_ndx -f nvt-equ.gro
    gmx rdf -f $1 -n index.ndx -ref $2 -sel OW -selrpos atom -seltype atom -o $3 -b 0 -e 5000 -rmax 1
    rm -rf \#*
}

ions=("CS" "LI" "NA" "K")
n_ions=${#ions[@]}
