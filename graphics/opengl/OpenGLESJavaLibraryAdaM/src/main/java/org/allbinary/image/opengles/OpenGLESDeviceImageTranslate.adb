-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with javax.microedition.khronos.opengles.GL10_Package; use javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImageProcessor_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

package body org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package is

   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   function "=" (Left, Right : GL10_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   function "=" (Left, Right : GL10_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   function "=" (Left, Right : GL10_Access_Array_Access_Array) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GL10_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.khronos.opengles.GL10_Package_References."=";
   subtype OpenGLESImage_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access;
   function "=" (Left, Right : OpenGLESImage_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   subtype OpenGLESImage_Access_Array_Access_Array_Access is org.allbinary.image.opengles.OpenGLESImage_Package_References.OpenGLESImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLESImage_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.opengles.OpenGLESImage_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLESDeviceImageTranslate'Class) is
   begin
      null;
      This.translateX := 0.0;
      This.translateY := 0.0;
      This.translateX2 := 0.0;
      This.translateY2 := 0.0;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLESDeviceImageTranslate'Class) is
   begin
      OpenGLESImageTranslate_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLESDeviceImageTranslate_Access is
      This : constant OpenGLESDeviceImageTranslate_Access := new OpenGLESDeviceImageTranslate;
   begin
      OpenGLESDeviceImageTranslate_Package.Initialize (This.all);
      return This;
   end Create;


   procedure translate (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10_Package.GL10'Class; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class; x : Float; y : Float) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      openGLESImage : constant OpenGLESImage_Access := OpenGLESImage_Access (openGLESImage_Param);
   begin
        openGLESImage.imageProcessor.translate (gl, (This.translateX) + (((openGLESImage.openGLESImageProperties.scaleX) * (x))), (This.translateY) + (((openGLESImage.openGLESImageProperties.scaleY) * (y))));
   end translate;

   procedure translate2 (This : in out OpenGLESDeviceImageTranslate; gl_Param : access GL10_Package.GL10'Class; openGLESImage_Param : access OpenGLESImage_Package.OpenGLESImage'Class) is
      gl : constant GL10_Access := GL10_Access (gl_Param);
      openGLESImage : constant OpenGLESImage_Access := OpenGLESImage_Access (openGLESImage_Param);
   begin
        openGLESImage.imageProcessor.translate (gl, This.translateX2, This.translateY2);
   end translate2;

end org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;


