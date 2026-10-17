-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


package body javax.microedition.lcdui.PlatformImage_Package is

   procedure Initialize_Fields (This : in out PlatformImage'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformImage'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformImage_Access is
      This : constant PlatformImage_Access := new PlatformImage;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getImage (This : in out PlatformImage; graphicsSurface2 : Java_Object_Access) return Java_Object_Access is
   begin
        return NullImage_Package.NULL_IMAGE;
   end getImage;

   function getSurfaceWidth (This : in out PlatformImage; graphicsSurface2 : Java_Object_Access; width : Integer) return Integer is
   begin
        return width;
   end getSurfaceWidth;

   function getSurfaceHeight (This : in out PlatformImage; graphicsSurface2 : Java_Object_Access; height : Integer) return Integer is
   begin
        return height;
   end getSurfaceHeight;

   function getWidth (This : in out PlatformImage; image : Image_Access; width : Integer) return Integer is
   begin
        return width;
   end getWidth;

   function getHeight (This : in out PlatformImage; image : Image_Access; height : Integer) return Integer is
   begin
        return height;
   end getHeight;

   function getGraphics (This : in out PlatformImage; graphicsSurface : Java_Object_Access; width : Integer; height : Integer; image : Image_Access) return Graphics_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getGraphics;

   procedure drawImage (This : in out PlatformImage; image : Image_Access; x : Integer; y : Integer; anchor : Integer; g2 : Graphics_Access; g : Java_Object_Access) is
   begin
        null;
   end drawImage;

   procedure drawRegion (This : in out PlatformImage; image : Image_Access; x_src : Integer; y_src : Integer; width : Integer; height : Integer; transform : Integer; x_dst : Integer; y_dst : Integer; anchor : Integer; g : Graphics_Access) is
   begin
        null;
   end drawRegion;

   procedure getRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image : Image_Access) is
   begin
        null;
   end getRGB;

   procedure setRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image : Image_Access) is
   begin
        null;
   end setRGB;

   function getData (This : in out PlatformImage; image : Image_Access) return Integer_Array_Access is
   begin
        return NullUtil_Package.getInstance.NULL_INT_ARRAY;
   end getData;

   procedure getImage (This : in out PlatformImage; graphicsSurface2 : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := PlatformImage'Class (This).getImage (graphicsSurface2);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

   procedure getSurfaceWidth (This : in out PlatformImage; graphicsSurface2 : Java_Object_Access; width : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getSurfaceWidth (graphicsSurface2, width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSurfaceWidth;

   procedure getSurfaceHeight (This : in out PlatformImage; graphicsSurface2 : Java_Object_Access; height : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getSurfaceHeight (graphicsSurface2, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSurfaceHeight;

   procedure getWidth (This : in out PlatformImage; image : Image_Access; width : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getWidth (image, width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out PlatformImage; image : Image_Access; height : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getHeight (image, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure getGraphics (This : in out PlatformImage; graphicsSurface : Java_Object_Access; width : Integer; height : Integer; image : Image_Access) is
      Java_Result : constant Graphics_Access := PlatformImage'Class (This).getGraphics (graphicsSurface, width, height, image);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGraphics;

   procedure getData (This : in out PlatformImage; image : Image_Access) is
      Java_Result : constant Integer_Array_Access := PlatformImage'Class (This).getData (image);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getData;

end javax.microedition.lcdui.PlatformImage_Package;


