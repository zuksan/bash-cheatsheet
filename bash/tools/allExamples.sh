# append output to the end of file
cat >> ${SOURCES_PATH}sources.list <<EOF
all the contents
EOF

# while, this is to 
# cover output to the end of file
cat > ${SOURCES_PATH}sources.list <<EOF
all the contents
EOF

# method above won't work when substitute 'cat' with 'echo'
