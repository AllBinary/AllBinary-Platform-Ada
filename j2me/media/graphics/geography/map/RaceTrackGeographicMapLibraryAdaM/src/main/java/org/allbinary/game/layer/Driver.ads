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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.game.layer.Aggression_Package; use org.allbinary.game.layer.Aggression_Package;

package org.allbinary.game.layer.Driver_Package is

   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

   type Driver is tagged;
   type Driver_Access is access all Driver'Class;
   type Driver_Access_Array is array (Natural range <>) of Driver_Access;
   type Driver_Access_Array_Access is access all Driver_Access_Array;

   type Driver is new Java_Object with record
      turnSpeed : Integer;
      trackPathSelectionSkill : Integer;
      aggression : Aggression_Access;
   end record;
   NULL_DRIVER : Driver_Access;

   procedure Initialize (This : in out Driver'Class; turnSpeed : Integer; trackPathSelectionSkill : Integer; aggression_Param : access Aggression'Class);
   function Create (turnSpeed : Integer; trackPathSelectionSkill : Integer; aggression_Param : access Aggression'Class) return Driver_Access;
   function getTurnSpeed (This : in out Driver) return Integer;
   procedure setTurnSpeed (This : in out Driver; turnSpeed : Integer);
   function getTrackPathSelectionSkill (This : in out Driver) return Integer;
   procedure setTrackPathSelectionSkill (This : in out Driver; trackPathSelectionSkill : Integer);
   function getAggression (This : in out Driver) return Aggression_Access;
   procedure setAggression (This : in out Driver; aggression_Param : access Aggression'Class);

end org.allbinary.game.layer.Driver_Package;


