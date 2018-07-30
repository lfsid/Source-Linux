################################################################
#
################################################################


sed -i 's/#include_next <stdlib.h>/#include <stdlib.h>/' /usr/include/c++/7.3.0/cstdlib

sed -i 's/#include_next <stdlib.h>/#include <stdlib.h>/' /usr/include/c++/7.3.0/bits/std_abs.h

sed -i 's/#include_next <math.h>/#include <math.h>/' /usr/include/c++/7.3.0/cmath

