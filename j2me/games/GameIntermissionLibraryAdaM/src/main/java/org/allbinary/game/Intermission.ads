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

limited with org.allbinary.game.Intermission_Package;
package org.allbinary.game.Intermission_Package_References is
   type Intermission_Access is access all org.allbinary.game.Intermission_Package.Intermission'Class;
   type Intermission_Access_Array is array (Natural range <>) of Intermission_Access;
   type Intermission_Access_Array_Access is access all Intermission_Access_Array;
   type Intermission_Access_Array_Access_Array is array (Natural range <>) of Intermission_Access_Array_Access;
   type Intermission_Access_Array_Access_Array_Access is access all Intermission_Access_Array_Access_Array;
end org.allbinary.game.Intermission_Package_References;

with org.allbinary.game.Intermission_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.game.IntermissionInterface_Package; use org.allbinary.game.IntermissionInterface_Package;
limited with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package_References;

package org.allbinary.game.Intermission_Package is

   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package Reference_Types is
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype IntermissionEnableListenerInterface_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access;
   use type IntermissionEnableListenerInterface_Access;
   subtype IntermissionEnableListenerInterface_Access_Array is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array;
   use type IntermissionEnableListenerInterface_Access_Array;
   subtype IntermissionEnableListenerInterface_Access_Array_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access;
   use type IntermissionEnableListenerInterface_Access_Array_Access;
   subtype IntermissionEnableListenerInterface_Access_Array_Access_Array is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access_Array;
   use type IntermissionEnableListenerInterface_Access_Array_Access_Array;
   subtype IntermissionEnableListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access_Array_Access;
   use type IntermissionEnableListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Intermission_Access is org.allbinary.game.Intermission_Package_References.Intermission_Access;
   function "=" (Left, Right : Intermission_Access) return Boolean renames org.allbinary.game.Intermission_Package_References."=";
   subtype Intermission_Access_Array is org.allbinary.game.Intermission_Package_References.Intermission_Access_Array;
   function "=" (Left, Right : Intermission_Access_Array) return Boolean renames org.allbinary.game.Intermission_Package_References."=";
   subtype Intermission_Access_Array_Access is org.allbinary.game.Intermission_Package_References.Intermission_Access_Array_Access;
   function "=" (Left, Right : Intermission_Access_Array_Access) return Boolean renames org.allbinary.game.Intermission_Package_References."=";
   subtype Intermission_Access_Array_Access_Array is org.allbinary.game.Intermission_Package_References.Intermission_Access_Array_Access_Array;
   function "=" (Left, Right : Intermission_Access_Array_Access_Array) return Boolean renames org.allbinary.game.Intermission_Package_References."=";
   subtype Intermission_Access_Array_Access_Array_Access is org.allbinary.game.Intermission_Package_References.Intermission_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Intermission_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.Intermission_Package_References."=";

   type Intermission is new Java_Object and IntermissionInterface with record
      enabled : Boolean;
      timeElapsedHelper : TimeDelayHelper_Access;
      intermissionEnableListener : IntermissionEnableListenerInterface_Access;
   end record;

   procedure Initialize (This : in out Intermission'Class);
   function Create return Intermission_Access;
   procedure setListener (This : in out Intermission; enableListener_Param : access IntermissionEnableListenerInterface_Package.IntermissionEnableListenerInterface'Class);
   function getTimeDelayHelper (This : in out Intermission) return TimeDelayHelper_Access;
   procedure setEnabled (This : in out Intermission; enabled : Boolean);
   function isEnabled (This : in out Intermission) return Boolean;

end org.allbinary.game.Intermission_Package;


