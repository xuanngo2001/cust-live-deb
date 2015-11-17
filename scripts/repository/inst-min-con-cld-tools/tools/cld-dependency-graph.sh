PACKAGE=$1
DEPTH=$2

debtree --no-recommends --no-conflicts ${PACKAGE} > ${PACKAGE}.dot
dot -Tpng -o ${PACKAGE}.png ${PACKAGE}.dot
echo "${PACKAGE}.dot and ${PACKAGE}.png created."