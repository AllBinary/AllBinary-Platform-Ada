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
limited with org.allbinary.media.audio.Controllable2_Package;
package org.allbinary.media.audio.Controllable2_Package_References is
   type Controllable2_Access is access all org.allbinary.media.audio.Controllable2_Package.Controllable2'Class;
   type Controllable2_Access_Array is array (Natural range <>) of Controllable2_Access;
   type Controllable2_Access_Array_Access is access all Controllable2_Access_Array;
   type Controllable2_Access_Array_Access_Array is array (Natural range <>) of Controllable2_Access_Array_Access;
   type Controllable2_Access_Array_Access_Array_Access is access all Controllable2_Access_Array_Access_Array;
   type Controllable2_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Controllable2_Access_Array_Access;
   end record;
   function Java_Box (Value : Controllable2_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Controllable2_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Controllable2_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Controllable2_Access_Array_Access is (if Value /= null and then Value.all in Controllable2_Access_Array_Object'Class then Controllable2_Access_Array_Object'Class (Value.all).Value else null);
   type Controllable2_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : Controllable2_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : Controllable2_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new Controllable2_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_Controllable2_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return Controllable2_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in Controllable2_Access_Array_Access_Array_Object'Class then Controllable2_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.audio.Controllable2_Package_References;

with org.allbinary.media.audio.Controllable2_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.audio.Controllable2_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type Controllable2 is interface;
   subtype Controllable2_Access is org.allbinary.media.audio.Controllable2_Package_References.Controllable2_Access;
   function "=" (Left, Right : Controllable2_Access) return Boolean renames org.allbinary.media.audio.Controllable2_Package_References."=";
   subtype Controllable2_Access_Array is org.allbinary.media.audio.Controllable2_Package_References.Controllable2_Access_Array;
   function "=" (Left, Right : Controllable2_Access_Array) return Boolean renames org.allbinary.media.audio.Controllable2_Package_References."=";
   subtype Controllable2_Access_Array_Access is org.allbinary.media.audio.Controllable2_Package_References.Controllable2_Access_Array_Access;
   function "=" (Left, Right : Controllable2_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Controllable2_Package_References."=";
   function Java_Box (Value : Controllable2_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.Controllable2_Package_References.Java_Box;
   function Java_Unbox_Controllable2_Access_Array (Value : access Java_Object'Class) return Controllable2_Access_Array_Access renames org.allbinary.media.audio.Controllable2_Package_References.Java_Unbox_Controllable2_Access_Array;
   subtype Controllable2_Access_Array_Access_Array is org.allbinary.media.audio.Controllable2_Package_References.Controllable2_Access_Array_Access_Array;
   function "=" (Left, Right : Controllable2_Access_Array_Access_Array) return Boolean renames org.allbinary.media.audio.Controllable2_Package_References."=";
   subtype Controllable2_Access_Array_Access_Array_Access is org.allbinary.media.audio.Controllable2_Package_References.Controllable2_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Controllable2_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.audio.Controllable2_Package_References."=";
   function Java_Box (Value : Controllable2_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.audio.Controllable2_Package_References.Java_Box;
   function Java_Unbox_Controllable2_Access_Array_Access_Array (Value : access Java_Object'Class) return Controllable2_Access_Array_Access_Array_Access renames org.allbinary.media.audio.Controllable2_Package_References.Java_Unbox_Controllable2_Access_Array_Access_Array;
   function Java_Object_Access_From_Controllable2 (Value : Controllable2_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setVolume (This : in out Controllable2; leftVolume : Integer; rightVolume : Integer) is abstract;

end org.allbinary.media.audio.Controllable2_Package;


