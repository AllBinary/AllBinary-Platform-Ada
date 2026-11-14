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

with AllBinary_Java;
limited with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;
package org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References is
   type PlatformBitmapBaseFactory_Access is access all org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package.PlatformBitmapBaseFactory'Class;
   type PlatformBitmapBaseFactory_Access_Array is array (Natural range <>) of PlatformBitmapBaseFactory_Access;
   type PlatformBitmapBaseFactory_Access_Array_Access is access all PlatformBitmapBaseFactory_Access_Array;
   type PlatformBitmapBaseFactory_Access_Array_Access_Array is array (Natural range <>) of PlatformBitmapBaseFactory_Access_Array_Access;
   type PlatformBitmapBaseFactory_Access_Array_Access_Array_Access is access all PlatformBitmapBaseFactory_Access_Array_Access_Array;
   type PlatformBitmapBaseFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformBitmapBaseFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformBitmapBaseFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformBitmapBaseFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformBitmapBaseFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformBitmapBaseFactory_Access_Array_Access is (if Value /= null and then Value.all in PlatformBitmapBaseFactory_Access_Array_Object'Class then PlatformBitmapBaseFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformBitmapBaseFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformBitmapBaseFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformBitmapBaseFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformBitmapBaseFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformBitmapBaseFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformBitmapBaseFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformBitmapBaseFactory_Access_Array_Access_Array_Object'Class then PlatformBitmapBaseFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References;

with org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.platform.graphics.PlatformBitmapBase_Package;
with org.allbinary.platform.graphics.PlatformBitmapBase_Package_References;

package org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Reference_Types is
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype PlatformBitmapBase_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access;
   use type PlatformBitmapBase_Access;
   subtype PlatformBitmapBase_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array;
   use type PlatformBitmapBase_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access;
   subtype PlatformBitmapBase_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array;
   use type PlatformBitmapBase_Access_Array_Access_Array;
   subtype PlatformBitmapBase_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBase_Package_References.PlatformBitmapBase_Access_Array_Access_Array_Access;
   use type PlatformBitmapBase_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlatformBitmapBaseFactory_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   function Java_Box (Value : PlatformBitmapBaseFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformBitmapBaseFactory_Access_Array (Value : access Java_Object'Class) return PlatformBitmapBaseFactory_Access_Array_Access renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.Java_Unbox_PlatformBitmapBaseFactory_Access_Array;
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   subtype PlatformBitmapBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.PlatformBitmapBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformBitmapBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References."=";
   function Java_Box (Value : PlatformBitmapBaseFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformBitmapBaseFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformBitmapBaseFactory_Access_Array_Access_Array_Access renames org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package_References.Java_Unbox_PlatformBitmapBaseFactory_Access_Array_Access_Array;

   type PlatformBitmapBaseFactory is new Java_Object with null record;
   NULL_PLATFORM_BITMAP_BASE_FACTORY : PlatformBitmapBaseFactory_Access;

   procedure Initialize (This : in out PlatformBitmapBaseFactory'Class);
   function Create return PlatformBitmapBaseFactory_Access;
   function createBitmap (This : in out PlatformBitmapBaseFactory; image_Param : access Image_Package.Image'Class) return PlatformBitmapBase_Access;
   procedure createBitmap (This : in out PlatformBitmapBaseFactory; image_Param : access Image_Package.Image'Class);

end org.allbinary.platform.graphics.PlatformBitmapBaseFactory_Package;


