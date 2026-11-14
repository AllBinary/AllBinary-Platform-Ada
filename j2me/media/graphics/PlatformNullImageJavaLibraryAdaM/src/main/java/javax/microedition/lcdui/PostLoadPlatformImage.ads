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
limited with javax.microedition.lcdui.PostLoadPlatformImage_Package;
package javax.microedition.lcdui.PostLoadPlatformImage_Package_References is
   type PostLoadPlatformImage_Access is access all javax.microedition.lcdui.PostLoadPlatformImage_Package.PostLoadPlatformImage'Class;
   type PostLoadPlatformImage_Access_Array is array (Natural range <>) of PostLoadPlatformImage_Access;
   type PostLoadPlatformImage_Access_Array_Access is access all PostLoadPlatformImage_Access_Array;
   type PostLoadPlatformImage_Access_Array_Access_Array is array (Natural range <>) of PostLoadPlatformImage_Access_Array_Access;
   type PostLoadPlatformImage_Access_Array_Access_Array_Access is access all PostLoadPlatformImage_Access_Array_Access_Array;
   type PostLoadPlatformImage_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PostLoadPlatformImage_Access_Array_Access;
   end record;
   function Java_Box (Value : PostLoadPlatformImage_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PostLoadPlatformImage_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PostLoadPlatformImage_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PostLoadPlatformImage_Access_Array_Access is (if Value /= null and then Value.all in PostLoadPlatformImage_Access_Array_Object'Class then PostLoadPlatformImage_Access_Array_Object'Class (Value.all).Value else null);
   type PostLoadPlatformImage_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PostLoadPlatformImage_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PostLoadPlatformImage_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PostLoadPlatformImage_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PostLoadPlatformImage_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PostLoadPlatformImage_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PostLoadPlatformImage_Access_Array_Access_Array_Object'Class then PostLoadPlatformImage_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end javax.microedition.lcdui.PostLoadPlatformImage_Package_References;

with javax.microedition.lcdui.PostLoadPlatformImage_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.PlatformImage_Package; use javax.microedition.lcdui.PlatformImage_Package;

package javax.microedition.lcdui.PostLoadPlatformImage_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PostLoadPlatformImage_Access is javax.microedition.lcdui.PostLoadPlatformImage_Package_References.PostLoadPlatformImage_Access;
   function "=" (Left, Right : PostLoadPlatformImage_Access) return Boolean renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References."=";
   subtype PostLoadPlatformImage_Access_Array is javax.microedition.lcdui.PostLoadPlatformImage_Package_References.PostLoadPlatformImage_Access_Array;
   function "=" (Left, Right : PostLoadPlatformImage_Access_Array) return Boolean renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References."=";
   subtype PostLoadPlatformImage_Access_Array_Access is javax.microedition.lcdui.PostLoadPlatformImage_Package_References.PostLoadPlatformImage_Access_Array_Access;
   function "=" (Left, Right : PostLoadPlatformImage_Access_Array_Access) return Boolean renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References."=";
   function Java_Box (Value : PostLoadPlatformImage_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References.Java_Box;
   function Java_Unbox_PostLoadPlatformImage_Access_Array (Value : access Java_Object'Class) return PostLoadPlatformImage_Access_Array_Access renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References.Java_Unbox_PostLoadPlatformImage_Access_Array;
   subtype PostLoadPlatformImage_Access_Array_Access_Array is javax.microedition.lcdui.PostLoadPlatformImage_Package_References.PostLoadPlatformImage_Access_Array_Access_Array;
   function "=" (Left, Right : PostLoadPlatformImage_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References."=";
   subtype PostLoadPlatformImage_Access_Array_Access_Array_Access is javax.microedition.lcdui.PostLoadPlatformImage_Package_References.PostLoadPlatformImage_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PostLoadPlatformImage_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References."=";
   function Java_Box (Value : PostLoadPlatformImage_Access_Array_Access_Array_Access) return Java_Object_Access renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References.Java_Box;
   function Java_Unbox_PostLoadPlatformImage_Access_Array_Access_Array (Value : access Java_Object'Class) return PostLoadPlatformImage_Access_Array_Access_Array_Access renames javax.microedition.lcdui.PostLoadPlatformImage_Package_References.Java_Unbox_PostLoadPlatformImage_Access_Array_Access_Array;

   type PostLoadPlatformImage is new PlatformImage with null record;
   instance : PostLoadPlatformImage_Access;

   procedure Initialize (This : in out PostLoadPlatformImage'Class);
   function Create return PostLoadPlatformImage_Access;
   function getInstance return PostLoadPlatformImage_Access;

end javax.microedition.lcdui.PostLoadPlatformImage_Package;


