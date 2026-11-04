--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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

limited with org.allbinary.game.midlet.DemoGameMidletEvent_Package;
package org.allbinary.game.midlet.DemoGameMidletEvent_Package_References is
   type DemoGameMidletEvent_Access is access all org.allbinary.game.midlet.DemoGameMidletEvent_Package.DemoGameMidletEvent'Class;
   type DemoGameMidletEvent_Access_Array is array (Natural range <>) of DemoGameMidletEvent_Access;
   type DemoGameMidletEvent_Access_Array_Access is access all DemoGameMidletEvent_Access_Array;
   type DemoGameMidletEvent_Access_Array_Access_Array is array (Natural range <>) of DemoGameMidletEvent_Access_Array_Access;
   type DemoGameMidletEvent_Access_Array_Access_Array_Access is access all DemoGameMidletEvent_Access_Array_Access_Array;
end org.allbinary.game.midlet.DemoGameMidletEvent_Package_References;

with org.allbinary.game.midlet.DemoGameMidletEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.game.midlet.DemoGameMidletState_Package;
with org.allbinary.game.midlet.DemoGameMidletState_Package_References;

package org.allbinary.game.midlet.DemoGameMidletEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype DemoGameMidletState_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access;
   use type DemoGameMidletState_Access;
   subtype DemoGameMidletState_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array;
   use type DemoGameMidletState_Access_Array;
   subtype DemoGameMidletState_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access;
   use type DemoGameMidletState_Access_Array_Access;
   subtype DemoGameMidletState_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array;
   use type DemoGameMidletState_Access_Array_Access_Array;
   subtype DemoGameMidletState_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletState_Package_References.DemoGameMidletState_Access_Array_Access_Array_Access;
   use type DemoGameMidletState_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype DemoGameMidletEvent_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access;
   function "=" (Left, Right : DemoGameMidletEvent_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array_Access_Array is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";
   subtype DemoGameMidletEvent_Access_Array_Access_Array_Access is org.allbinary.game.midlet.DemoGameMidletEvent_Package_References.DemoGameMidletEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoGameMidletEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.DemoGameMidletEvent_Package_References."=";

   type DemoGameMidletEvent is new AllBinaryEventObject with record
      demoGameMidletState : DemoGameMidletState_Access;
   end record;

   procedure Initialize (This : in out DemoGameMidletEvent'Class; anyType_Param : access Java_Object'Class; demoGameMidletState_Param : access DemoGameMidletState_Package.DemoGameMidletState'Class);
   function Create (anyType_Param : access Java_Object'Class; demoGameMidletState_Param : access DemoGameMidletState_Package.DemoGameMidletState'Class) return DemoGameMidletEvent_Access;
   procedure init (This : in out DemoGameMidletEvent; anyType_Param : access Java_Object'Class);
   procedure setDemoGameMidletState (This : in out DemoGameMidletEvent; demoGameMidletState_Param : access DemoGameMidletState_Package.DemoGameMidletState'Class);
   function getDemoGameMidletState (This : in out DemoGameMidletEvent) return DemoGameMidletState_Access;
   procedure init (This : in out DemoGameMidletEvent; Value : Unbounded_String);

end org.allbinary.game.midlet.DemoGameMidletEvent_Package;


