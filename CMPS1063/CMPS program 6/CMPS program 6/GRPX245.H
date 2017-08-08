#include "CImg.h"
#include <iostream>
using namespace cimg_library;

#include <math.h>
#include <iostream>
using namespace std;

//constants for the graphics
const int  MAXX = 1000;								//width of image
const int  MAXY = 800;								//height of image
const unsigned char white[] = { 255, 255, 255 };	//pen color
const unsigned char black[] = { 0, 0, 0 };

void InvertRect(int x, int y, int w, int h, CImg<unsigned char> & theImage)
//requires:     all values initialized
//ensures:  a rectangle is drawn with upperleft corner at (x, y) of
//          width w and height h
{
   unsigned char color;

   //traverse x axis
   for (int i = x; i <= x+ w; i++)
      //traverse y axis
      for (int j= y; j <= y+h; j++ )
      {   
		  //invert pixel color within figure
          color = theImage._atXY (i, j);
		  if (color == 0)
			  theImage.draw_circle(i, j, 0, white);
          else
			  theImage.draw_circle(i, j, 0, black);
      }
}

void InvertOval(int x, int y, int w, int h, CImg<unsigned char> & theImage)
//requires:     all values initialized
//ensures:  a rectangle is drawn with upperleft corner at (x, y) of
//          width w and height h
{
	unsigned  color;

   //compute center of ellipse
   int centerx = x+w/2;
   int centery = y+h/2;

   //traverse x axis
   for (int i = x; i <= x+ w; i++)
      //traverse y axis
      for (int j= y; j <= y+h; j++ )
      {
          //invert pixel color within figure (test if pixel is inside ellipse)
          if (pow(i-centerx,2)/pow(w/2, 2) + pow(j-centery, 2)/pow(h/2,2) <= 1)
          {
			  //invert pixel color within figure
			  color = theImage._atXY(i, j);
			  if (color == 0)
				  theImage.draw_circle(i, j, 0, white);
			  else
				  theImage.draw_circle(i, j, 0, black);
          }
      }
}

