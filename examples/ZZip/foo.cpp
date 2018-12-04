#include <iostream> // std::cout

#include <zzip/zzip.h>

int main(int argc, char ** argv) {
  ZZIP_DIR* zip = zzip_opendir_ext_io (argv[0], ZZIP_CASELESS|ZZIP_ONLYZIP, ext, 0);
  if (!zip) {
    std::cout << "Failed" << std::endl;
  } else {
    zzip_closedir (zip);
    std::cout << "Success" << std::endl;
  }
  return EXIT_SUCCESS;
}
