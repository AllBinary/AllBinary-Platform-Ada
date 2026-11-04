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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package; use org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package;

package body org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package is

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
   subtype PlatformBitmapBase_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   subtype PlatformBitmapBase_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBase_Package_References."=";
   procedure Initialize_Fields (This : in out PlatformBitmapBaseFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PlatformBitmapBaseFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PlatformBitmapBaseFactory_Access is
      This : constant PlatformBitmapBaseFactory_Access := new PlatformBitmapBaseFactory;
   begin
      PlatformBitmapBaseFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function createBitmap (This : in out PlatformBitmapBaseFactory; image_Param : access Image_Package.Image'Class) return PlatformBitmapBase_Access is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end createBitmap;

   procedure createBitmap (This : in out PlatformBitmapBaseFactory; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant PlatformBitmapBase_Access := PlatformBitmapBaseFactory'Class (This).createBitmap (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBitmap;

begin
   null;
   NULL_PLATFORM_BITMAP_BASE_FACTORY := PlatformBitmapBaseFactory_Package.Create;

end org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;


