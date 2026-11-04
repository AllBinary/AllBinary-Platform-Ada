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

limited with org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package;
package org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References is
   type GameInputMotionInfoFactory_Access is access all org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package.GameInputMotionInfoFactory'Class;
   type GameInputMotionInfoFactory_Access_Array is array (Natural range <>) of GameInputMotionInfoFactory_Access;
   type GameInputMotionInfoFactory_Access_Array_Access is access all GameInputMotionInfoFactory_Access_Array;
   type GameInputMotionInfoFactory_Access_Array_Access_Array is array (Natural range <>) of GameInputMotionInfoFactory_Access_Array_Access;
   type GameInputMotionInfoFactory_Access_Array_Access_Array_Access is access all GameInputMotionInfoFactory_Access_Array_Access_Array;
end org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References;

with org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.android.input.motion.GameInputMotionInfo_Package;
with org.allbinary.android.input.motion.GameInputMotionInfo_Package_References;

package org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package is

   package Reference_Types is
   subtype GameInputMotionInfo_Access is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access;
   use type GameInputMotionInfo_Access;
   subtype GameInputMotionInfo_Access_Array is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array;
   use type GameInputMotionInfo_Access_Array;
   subtype GameInputMotionInfo_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array_Access;
   use type GameInputMotionInfo_Access_Array_Access;
   subtype GameInputMotionInfo_Access_Array_Access_Array is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array_Access_Array;
   use type GameInputMotionInfo_Access_Array_Access_Array;
   subtype GameInputMotionInfo_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionInfo_Package_References.GameInputMotionInfo_Access_Array_Access_Array_Access;
   use type GameInputMotionInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMotionInfoFactory_Access is org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References.GameInputMotionInfoFactory_Access;
   function "=" (Left, Right : GameInputMotionInfoFactory_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References."=";
   subtype GameInputMotionInfoFactory_Access_Array is org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References.GameInputMotionInfoFactory_Access_Array;
   function "=" (Left, Right : GameInputMotionInfoFactory_Access_Array) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References."=";
   subtype GameInputMotionInfoFactory_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References.GameInputMotionInfoFactory_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References."=";
   subtype GameInputMotionInfoFactory_Access_Array_Access_Array is org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References.GameInputMotionInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMotionInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References."=";
   subtype GameInputMotionInfoFactory_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References.GameInputMotionInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package_References."=";

   type GameInputMotionInfoFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameInputMotionInfoFactory'Class);
   function Create return GameInputMotionInfoFactory_Access;
   function getInstance return GameInputMotionInfo_Access;

end org.allbinary.android.input.motion.GameInputMotionInfoFactory_Package;


