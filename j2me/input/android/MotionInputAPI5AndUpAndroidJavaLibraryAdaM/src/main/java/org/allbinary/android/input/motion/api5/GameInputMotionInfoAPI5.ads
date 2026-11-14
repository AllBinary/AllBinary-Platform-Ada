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
limited with org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;
package org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References is
   type GameInputMotionInfoAPI5_Access is access all org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package.GameInputMotionInfoAPI5'Class;
   type GameInputMotionInfoAPI5_Access_Array is array (Natural range <>) of GameInputMotionInfoAPI5_Access;
   type GameInputMotionInfoAPI5_Access_Array_Access is access all GameInputMotionInfoAPI5_Access_Array;
   type GameInputMotionInfoAPI5_Access_Array_Access_Array is array (Natural range <>) of GameInputMotionInfoAPI5_Access_Array_Access;
   type GameInputMotionInfoAPI5_Access_Array_Access_Array_Access is access all GameInputMotionInfoAPI5_Access_Array_Access_Array;
   type GameInputMotionInfoAPI5_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMotionInfoAPI5_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMotionInfoAPI5_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMotionInfoAPI5_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMotionInfoAPI5_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMotionInfoAPI5_Access_Array_Access is (if Value /= null and then Value.all in GameInputMotionInfoAPI5_Access_Array_Object'Class then GameInputMotionInfoAPI5_Access_Array_Object'Class (Value.all).Value else null);
   type GameInputMotionInfoAPI5_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameInputMotionInfoAPI5_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameInputMotionInfoAPI5_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameInputMotionInfoAPI5_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameInputMotionInfoAPI5_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameInputMotionInfoAPI5_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameInputMotionInfoAPI5_Access_Array_Access_Array_Object'Class then GameInputMotionInfoAPI5_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References;

with org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.android.input.motion.GameInputMotionInfo_Package; use org.allbinary.android.input.motion.GameInputMotionInfo_Package;

package org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package is

   package GameInputMotionInfo_Package renames Standard.org.allbinary.android.input.motion.GameInputMotionInfo_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMotionInfoAPI5_Access is org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.GameInputMotionInfoAPI5_Access;
   function "=" (Left, Right : GameInputMotionInfoAPI5_Access) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References."=";
   subtype GameInputMotionInfoAPI5_Access_Array is org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.GameInputMotionInfoAPI5_Access_Array;
   function "=" (Left, Right : GameInputMotionInfoAPI5_Access_Array) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References."=";
   subtype GameInputMotionInfoAPI5_Access_Array_Access is org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.GameInputMotionInfoAPI5_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionInfoAPI5_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References."=";
   function Java_Box (Value : GameInputMotionInfoAPI5_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.Java_Box;
   function Java_Unbox_GameInputMotionInfoAPI5_Access_Array (Value : access Java_Object'Class) return GameInputMotionInfoAPI5_Access_Array_Access renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.Java_Unbox_GameInputMotionInfoAPI5_Access_Array;
   subtype GameInputMotionInfoAPI5_Access_Array_Access_Array is org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.GameInputMotionInfoAPI5_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMotionInfoAPI5_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References."=";
   subtype GameInputMotionInfoAPI5_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.GameInputMotionInfoAPI5_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionInfoAPI5_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References."=";
   function Java_Box (Value : GameInputMotionInfoAPI5_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.Java_Box;
   function Java_Unbox_GameInputMotionInfoAPI5_Access_Array_Access_Array (Value : access Java_Object'Class) return GameInputMotionInfoAPI5_Access_Array_Access_Array_Access renames org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package_References.Java_Unbox_GameInputMotionInfoAPI5_Access_Array_Access_Array;

   type GameInputMotionInfoAPI5 is new GameInputMotionInfo with null record;
   instance : GameInputMotionInfoAPI5_Access;

   procedure Initialize (This : in out GameInputMotionInfoAPI5'Class);
   function Create return GameInputMotionInfoAPI5_Access;
   function getInstance return GameInputMotionInfoAPI5_Access;

end org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;


