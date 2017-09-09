// Chapter 6 of C++ How to Program
// cats.h
#ifndef CATS_H
#define CATS_H

class Cat {
public:
   Cat();
   const char *getFurColor();
   const char *getHairLength();
   const char *getEyeColor();
private:
   void setFurColor();
   void setHairLength();
   void setEyeColor();
   char *furColor;
   char *hairLength;
   char *eyeColor;
};

#endif
