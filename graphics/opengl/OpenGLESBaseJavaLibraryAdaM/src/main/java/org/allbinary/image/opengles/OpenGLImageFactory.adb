--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package; use org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package; use org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;

package body org.allbinary.image.opengles.OpenGLImageFactory_Package is

   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   procedure Initialize_Fields (This : in out OpenGLImageFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out OpenGLImageFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return OpenGLImageFactory_Access is
      This : constant OpenGLImageFactory_Access := new OpenGLImageFactory;
   begin
      OpenGLImageFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out OpenGLImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) return Image_Access is
      image : constant Image_Access := Image_Access (image_Param);
      bitmapFactory : constant PlatformBitmapBaseFactory_Access := PlatformBitmapBaseFactory_Access (bitmapFactory_Param);
      textureFactory : constant PlatformTextureBaseFactory_Access := PlatformTextureBaseFactory_Access (textureFactory_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end getInstance;

   procedure getInstance (This : in out OpenGLImageFactory; image_Param : access Image_Package.Image'Class; bitmapFactory_Param : access PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class; textureFactory_Param : access PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class) is
      Java_Result : constant Image_Access := OpenGLImageFactory'Class (This).getInstance (image_Param => image_Param, bitmapFactory_Param => bitmapFactory_Param, textureFactory_Param => textureFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_OPENGL_IMAGE_FACTORY := OpenGLImageFactory_Package.Create;

end org.allbinary.image.opengles.OpenGLImageFactory_Package;


