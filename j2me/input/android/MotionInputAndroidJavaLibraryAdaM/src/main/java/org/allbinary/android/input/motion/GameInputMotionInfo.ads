--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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
limited with org.allbinary.android.input.motion.GameInputMotionInfo_Package;
package org.allbinary.android.input.motion.GameInputMotionInfo_Package_References is
   type GameInputMotionInfo_Access is access all org.allbinary.android.input.motion.GameInputMotionInfo_Package.GameInputMotionInfo'Class;
   type GameInputMotionInfo_Access_Array is array (Natural range <>) of GameInputMotionInfo_Access;
   type GameInputMotionInfo_Access_Array_Access is access all GameInputMotionInfo_Access_Array;
   type GameInputMotionInfo_Access_Array_Access_Array is array (Natural range <>) of GameInputMotionInfo_Access_Array_Access;
   type GameInputMotionInfo_Access_Array_Access_Array_Access is access all GameInputMotionInfo_Access_Array_Access_Array;
   type GameInputMotionInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMotionInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMotionInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMotionInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMotionInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMotionInfo_Access_Array_Access is (if Value /= null and then Value.all in GameInputMotionInfo_Access_Array_Object'Class then GameInputMotionInfo_Access_Array_Object'Class (Value.all).Value else null);
   type GameInputMotionInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMotionInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMotionInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMotionInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMotionInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMotionInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInputMotionInfo_Access_Array_Access_Array_Object'Class then GameInputMotionInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.GameInputMotionInfo_Package_References;

with org.allbinary.android.input.motion.GameInputMotionInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.android.input.motion.GameInputMotionInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMotionInfo_Access is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access;
   function "=" (Left, Right : GameInputMotionInfo_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References."=";
   subtype GameInputMotionInfo_Access_Array is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array;
   function "=" (Left, Right : GameInputMotionInfo_Access_Array) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References."=";
   subtype GameInputMotionInfo_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionInfo_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References."=";
   function Java_Box (Value : GameInputMotionInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.Java_Box;
   function Java_Unbox_GameInputMotionInfo_Access_Array (Value : access Java_Object'Class) return GameInputMotionInfo_Access_Array_Access renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.Java_Unbox_GameInputMotionInfo_Access_Array;
   subtype GameInputMotionInfo_Access_Array_Access_Array is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMotionInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References."=";
   subtype GameInputMotionInfo_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References."=";
   function Java_Box (Value : GameInputMotionInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.Java_Box;
   function Java_Unbox_GameInputMotionInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInputMotionInfo_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.Java_Unbox_GameInputMotionInfo_Access_Array_Access_Array;

   type GameInputMotionInfo is new Java_Object with record
      MAX_API : Integer;
      MAX_POINTERS : Integer;
   end record;

   procedure Initialize (This : in out GameInputMotionInfo'Class; maxApi : Integer; maxPointers : Integer);
   function Create (maxApi : Integer; maxPointers : Integer) return GameInputMotionInfo_Access;

end org.allbinary.android.input.motion.GameInputMotionInfo_Package;


