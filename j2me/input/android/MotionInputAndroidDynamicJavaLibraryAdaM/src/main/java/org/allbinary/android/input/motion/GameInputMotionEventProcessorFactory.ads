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

limited with org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package;
package org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References is
   type GameInputMotionEventProcessorFactory_Access is access all org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package.GameInputMotionEventProcessorFactory'Class;
   type GameInputMotionEventProcessorFactory_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorFactory_Access;
   type GameInputMotionEventProcessorFactory_Access_Array_Access is access all GameInputMotionEventProcessorFactory_Access_Array;
   type GameInputMotionEventProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of GameInputMotionEventProcessorFactory_Access_Array_Access;
   type GameInputMotionEventProcessorFactory_Access_Array_Access_Array_Access is access all GameInputMotionEventProcessorFactory_Access_Array_Access_Array;
end org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References;

with org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References;

package org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package is

   package Reference_Types is
   subtype BaseGameInputMotionEventProcessor_Access is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access;
   use type BaseGameInputMotionEventProcessor_Access;
   subtype BaseGameInputMotionEventProcessor_Access_Array is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array;
   use type BaseGameInputMotionEventProcessor_Access_Array;
   subtype BaseGameInputMotionEventProcessor_Access_Array_Access is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array_Access;
   use type BaseGameInputMotionEventProcessor_Access_Array_Access;
   subtype BaseGameInputMotionEventProcessor_Access_Array_Access_Array is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array_Access_Array;
   use type BaseGameInputMotionEventProcessor_Access_Array_Access_Array;
   subtype BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package_References.BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access;
   use type BaseGameInputMotionEventProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameInputMotionEventProcessorFactory_Access is org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References.GameInputMotionEventProcessorFactory_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorFactory_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References."=";
   subtype GameInputMotionEventProcessorFactory_Access_Array is org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References.GameInputMotionEventProcessorFactory_Access_Array;
   function "=" (Left, Right : GameInputMotionEventProcessorFactory_Access_Array) return Boolean renames org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References."=";
   subtype GameInputMotionEventProcessorFactory_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References.GameInputMotionEventProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References."=";
   subtype GameInputMotionEventProcessorFactory_Access_Array_Access_Array is org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References.GameInputMotionEventProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputMotionEventProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References."=";
   subtype GameInputMotionEventProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References.GameInputMotionEventProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputMotionEventProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package_References."=";

   type GameInputMotionEventProcessorFactory is new Java_Object with null record;

   procedure Initialize (This : in out GameInputMotionEventProcessorFactory'Class);
   function Create return GameInputMotionEventProcessorFactory_Access;
   function getInstance return BaseGameInputMotionEventProcessor_Access;

end org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package;


