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
limited with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;
package org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References is
   type PlatformTextureBaseFactory_Access is access all org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package.PlatformTextureBaseFactory'Class;
   type PlatformTextureBaseFactory_Access_Array is array (Natural range <>) of PlatformTextureBaseFactory_Access;
   type PlatformTextureBaseFactory_Access_Array_Access is access all PlatformTextureBaseFactory_Access_Array;
   type PlatformTextureBaseFactory_Access_Array_Access_Array is array (Natural range <>) of PlatformTextureBaseFactory_Access_Array_Access;
   type PlatformTextureBaseFactory_Access_Array_Access_Array_Access is access all PlatformTextureBaseFactory_Access_Array_Access_Array;
   type PlatformTextureBaseFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformTextureBaseFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformTextureBaseFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformTextureBaseFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformTextureBaseFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformTextureBaseFactory_Access_Array_Access is (if Value /= null and then Value.all in PlatformTextureBaseFactory_Access_Array_Object'Class then PlatformTextureBaseFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PlatformTextureBaseFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlatformTextureBaseFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlatformTextureBaseFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlatformTextureBaseFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlatformTextureBaseFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlatformTextureBaseFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlatformTextureBaseFactory_Access_Array_Access_Array_Object'Class then PlatformTextureBaseFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References;

with org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PlatformTextureBaseFactory_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   function Java_Box (Value : PlatformTextureBaseFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformTextureBaseFactory_Access_Array (Value : access Java_Object'Class) return PlatformTextureBaseFactory_Access_Array_Access renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.Java_Unbox_PlatformTextureBaseFactory_Access_Array;
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   subtype PlatformTextureBaseFactory_Access_Array_Access_Array_Access is org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.PlatformTextureBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformTextureBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References."=";
   function Java_Box (Value : PlatformTextureBaseFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.Java_Box;
   function Java_Unbox_PlatformTextureBaseFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PlatformTextureBaseFactory_Access_Array_Access_Array_Access renames org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package_References.Java_Unbox_PlatformTextureBaseFactory_Access_Array_Access_Array;

   type PlatformTextureBaseFactory is new Java_Object with record
      commonStrings : CommonStrings_Access;
   end record;
   NULL_PLATFORM_TEXTURE_BASE_FACTORY : PlatformTextureBaseFactory_Access;

   procedure Initialize (This : in out PlatformTextureBaseFactory'Class);
   function Create return PlatformTextureBaseFactory_Access;
   procedure load (This : in out PlatformTextureBaseFactory; gl_Param : access GL10_Package.GL10'Class; target : Integer; level : Integer; image_Param : access Image_Package.Image'Class; border : Integer; flip : Boolean);

end org.allbinary.platform.opengles.PlatformTextureBaseFactory_Package;


