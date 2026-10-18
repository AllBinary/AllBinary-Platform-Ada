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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;

package body javax.microedition.lcdui.PlatformImage_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
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
      PlatformImage_Package.Initialize (This.all);
      return This;
   end Create;


   function getImage (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class) return Java_Object_Access is
      graphicsSurface2 : constant Java_Object_Access := Java_Object_Access (graphicsSurface2_Param);
   begin
        return NullImage_Package.NULL_IMAGE;
   end getImage;

   function getSurfaceWidth (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; width : Integer) return Integer is
      graphicsSurface2 : constant Java_Object_Access := Java_Object_Access (graphicsSurface2_Param);
   begin
        return width;
   end getSurfaceWidth;

   function getSurfaceHeight (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; height : Integer) return Integer is
      graphicsSurface2 : constant Java_Object_Access := Java_Object_Access (graphicsSurface2_Param);
   begin
        return height;
   end getSurfaceHeight;

   function getWidth (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; width : Integer) return Integer is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return width;
   end getWidth;

   function getHeight (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; height : Integer) return Integer is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return height;
   end getHeight;

   function getGraphics (This : in out PlatformImage; graphicsSurface_Param : access Java_Object'Class; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class) return Graphics_Access is
      graphicsSurface : constant Java_Object_Access := Java_Object_Access (graphicsSurface_Param);
      image : constant Image_Access := Image_Access (image_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getGraphics;

   procedure drawImage (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; x : Integer; y : Integer; anchor : Integer; g2_Param : access Graphics_Package.Graphics'Class; g_Param : access Java_Object'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      g2 : constant Graphics_Access := Graphics_Access (g2_Param);
      g : constant Java_Object_Access := Java_Object_Access (g_Param);
   begin
        null;
   end drawImage;

   procedure drawRegion (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; x_src : Integer; y_src : Integer; width : Integer; height : Integer; transform : Integer; x_dst : Integer; y_dst : Integer; anchor : Integer; g_Param : access Graphics_Package.Graphics'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      g : constant Graphics_Access := Graphics_Access (g_Param);
   begin
        null;
   end drawRegion;

   procedure getRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end getRGB;

   procedure setRGB (This : in out PlatformImage; argb : Integer_Array_Access; offset : Integer; scanlength : Integer; x : Integer; y : Integer; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end setRGB;

   function getData (This : in out PlatformImage; image_Param : access Image_Package.Image'Class) return Integer_Array_Access is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return NullUtil_Package.getInstance.NULL_INT_ARRAY;
   end getData;

   procedure getImage (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := PlatformImage'Class (This).getImage (graphicsSurface2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

   procedure getSurfaceWidth (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; width : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getSurfaceWidth (graphicsSurface2_Param, width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSurfaceWidth;

   procedure getSurfaceHeight (This : in out PlatformImage; graphicsSurface2_Param : access Java_Object'Class; height : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getSurfaceHeight (graphicsSurface2_Param, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSurfaceHeight;

   procedure getWidth (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; width : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getWidth (image_Param, width);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWidth;

   procedure getHeight (This : in out PlatformImage; image_Param : access Image_Package.Image'Class; height : Integer) is
      Java_Result : constant Integer := PlatformImage'Class (This).getHeight (image_Param, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHeight;

   procedure getGraphics (This : in out PlatformImage; graphicsSurface_Param : access Java_Object'Class; width : Integer; height : Integer; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Graphics_Access := PlatformImage'Class (This).getGraphics (graphicsSurface_Param, width, height, image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGraphics;

   procedure getData (This : in out PlatformImage; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Integer_Array_Access := PlatformImage'Class (This).getData (image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getData;

   function getImage (This : in out PlatformImage; Value : Unbounded_String) return Java_Object_Access is
   begin
      return PlatformImage'Class (This).getImage (Java_Box (Value));
   end getImage;

   procedure getImage (This : in out PlatformImage; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := PlatformImage'Class (This).getImage (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

end javax.microedition.lcdui.PlatformImage_Package;


