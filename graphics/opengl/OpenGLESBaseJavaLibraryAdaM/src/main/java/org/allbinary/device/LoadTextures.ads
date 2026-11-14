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
limited with org.allbinary.device.LoadTextures_Package;
package org.allbinary.device.LoadTextures_Package_References is
   type LoadTextures_Access is access all org.allbinary.device.LoadTextures_Package.LoadTextures'Class;
   type LoadTextures_Access_Array is array (Natural range <>) of LoadTextures_Access;
   type LoadTextures_Access_Array_Access is access all LoadTextures_Access_Array;
   type LoadTextures_Access_Array_Access_Array is array (Natural range <>) of LoadTextures_Access_Array_Access;
   type LoadTextures_Access_Array_Access_Array_Access is access all LoadTextures_Access_Array_Access_Array;
   type LoadTextures_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LoadTextures_Access_Array_Access;
   end record;
   function Java_Box (Value : LoadTextures_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LoadTextures_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LoadTextures_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LoadTextures_Access_Array_Access is (if Value /= null and then Value.all in LoadTextures_Access_Array_Object'Class then LoadTextures_Access_Array_Object'Class (Value.all).Value else null);
   type LoadTextures_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LoadTextures_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LoadTextures_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LoadTextures_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LoadTextures_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LoadTextures_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LoadTextures_Access_Array_Access_Array_Object'Class then LoadTextures_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.device.LoadTextures_Package_References;

with org.allbinary.device.LoadTextures_Package_References;
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

package org.allbinary.device.LoadTextures_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype LoadTextures_Access is org.allbinary.device.LoadTextures_Package_References.LoadTextures_Access;
   function "=" (Left, Right : LoadTextures_Access) return Boolean renames org.allbinary.device.LoadTextures_Package_References."=";
   subtype LoadTextures_Access_Array is org.allbinary.device.LoadTextures_Package_References.LoadTextures_Access_Array;
   function "=" (Left, Right : LoadTextures_Access_Array) return Boolean renames org.allbinary.device.LoadTextures_Package_References."=";
   subtype LoadTextures_Access_Array_Access is org.allbinary.device.LoadTextures_Package_References.LoadTextures_Access_Array_Access;
   function "=" (Left, Right : LoadTextures_Access_Array_Access) return Boolean renames org.allbinary.device.LoadTextures_Package_References."=";
   function Java_Box (Value : LoadTextures_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.LoadTextures_Package_References.Java_Box;
   function Java_Unbox_LoadTextures_Access_Array (Value : access Java_Object'Class) return LoadTextures_Access_Array_Access renames org.allbinary.device.LoadTextures_Package_References.Java_Unbox_LoadTextures_Access_Array;
   subtype LoadTextures_Access_Array_Access_Array is org.allbinary.device.LoadTextures_Package_References.LoadTextures_Access_Array_Access_Array;
   function "=" (Left, Right : LoadTextures_Access_Array_Access_Array) return Boolean renames org.allbinary.device.LoadTextures_Package_References."=";
   subtype LoadTextures_Access_Array_Access_Array_Access is org.allbinary.device.LoadTextures_Package_References.LoadTextures_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LoadTextures_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.device.LoadTextures_Package_References."=";
   function Java_Box (Value : LoadTextures_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.device.LoadTextures_Package_References.Java_Box;
   function Java_Unbox_LoadTextures_Access_Array_Access_Array (Value : access Java_Object'Class) return LoadTextures_Access_Array_Access_Array_Access renames org.allbinary.device.LoadTextures_Package_References.Java_Unbox_LoadTextures_Access_Array_Access_Array;

   type LoadTextures is new Java_Object with null record;

   procedure Initialize (This : in out LoadTextures'Class);
   function Create return LoadTextures_Access;
   procedure load (This : in out LoadTextures; gl_Param : access GL10_Package.GL10'Class);

end org.allbinary.device.LoadTextures_Package;


