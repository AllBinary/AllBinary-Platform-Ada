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

limited with org.allbinary.game.layer.Driver_Package;
package org.allbinary.game.layer.Driver_Package_References is
   type Driver_Access is access all org.allbinary.game.layer.Driver_Package.Driver'Class;
   type Driver_Access_Array is array (Natural range <>) of Driver_Access;
   type Driver_Access_Array_Access is access all Driver_Access_Array;
   type Driver_Access_Array_Access_Array is array (Natural range <>) of Driver_Access_Array_Access;
   type Driver_Access_Array_Access_Array_Access is access all Driver_Access_Array_Access_Array;
end org.allbinary.game.layer.Driver_Package_References;

with org.allbinary.game.layer.Driver_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.Aggression_Package;
with org.allbinary.game.layer.Aggression_Package_References;

package org.allbinary.game.layer.Driver_Package is

   package Reference_Types is
   subtype Aggression_Access is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access;
   use type Aggression_Access;
   subtype Aggression_Access_Array is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array;
   use type Aggression_Access_Array;
   subtype Aggression_Access_Array_Access is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array_Access;
   use type Aggression_Access_Array_Access;
   subtype Aggression_Access_Array_Access_Array is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array_Access_Array;
   use type Aggression_Access_Array_Access_Array;
   subtype Aggression_Access_Array_Access_Array_Access is org.allbinary.game.layer.Aggression_Package_References.Aggression_Access_Array_Access_Array_Access;
   use type Aggression_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Driver_Access is org.allbinary.game.layer.Driver_Package_References.Driver_Access;
   function "=" (Left, Right : Driver_Access) return Boolean renames org.allbinary.game.layer.Driver_Package_References."=";
   subtype Driver_Access_Array is org.allbinary.game.layer.Driver_Package_References.Driver_Access_Array;
   function "=" (Left, Right : Driver_Access_Array) return Boolean renames org.allbinary.game.layer.Driver_Package_References."=";
   subtype Driver_Access_Array_Access is org.allbinary.game.layer.Driver_Package_References.Driver_Access_Array_Access;
   function "=" (Left, Right : Driver_Access_Array_Access) return Boolean renames org.allbinary.game.layer.Driver_Package_References."=";
   subtype Driver_Access_Array_Access_Array is org.allbinary.game.layer.Driver_Package_References.Driver_Access_Array_Access_Array;
   function "=" (Left, Right : Driver_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.Driver_Package_References."=";
   subtype Driver_Access_Array_Access_Array_Access is org.allbinary.game.layer.Driver_Package_References.Driver_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Driver_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.Driver_Package_References."=";

   type Driver is new Java_Object with record
      turnSpeed : Integer;
      trackPathSelectionSkill : Integer;
      aggression : Aggression_Access;
   end record;
   NULL_DRIVER : Driver_Access;

   procedure Initialize (This : in out Driver'Class; turnSpeed : Integer; trackPathSelectionSkill : Integer; aggression_Param : access Aggression_Package.Aggression'Class);
   function Create (turnSpeed : Integer; trackPathSelectionSkill : Integer; aggression_Param : access Aggression_Package.Aggression'Class) return Driver_Access;
   function getTurnSpeed (This : in out Driver) return Integer;
   procedure setTurnSpeed (This : in out Driver; turnSpeed : Integer);
   function getTrackPathSelectionSkill (This : in out Driver) return Integer;
   procedure setTrackPathSelectionSkill (This : in out Driver; trackPathSelectionSkill : Integer);
   function getAggression (This : in out Driver) return Aggression_Access;
   procedure setAggression (This : in out Driver; aggression_Param : access Aggression_Package.Aggression'Class);

end org.allbinary.game.layer.Driver_Package;


