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
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.NullHealthListener_Package; use org.allbinary.game.health.NullHealthListener_Package;
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;

package org.allbinary.game.health.Health_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type Health is tagged;
   type Health_Access is access all Health'Class;
   type Health_Access_Array is array (Natural range <>) of Health_Access;
   type Health_Access_Array_Access is access all Health_Access_Array;

   type Health is new HealthInterface with record
      health : Integer;
      maxHealth : Integer;
      healthListenerInterface : HealthListenerInterface_Access;
   end record;
   NULL_HEALTH : Health_Access;
   NAME : Unbounded_String;
   HEALTH_LABEL : Unbounded_String;
   MAX_HEALTH_LABEL : Unbounded_String;

   procedure Initialize (This : in out Health'Class; maxHealth : Integer);
   function Create (maxHealth : Integer) return Health_Access;
   procedure heal (This : in out Health; ahealth : Integer);
   procedure healMax (This : in out Health);
   function isDamaged (This : in out Health) return Boolean;
   procedure damage (This : in out Health; ahealth : Integer);
   function isAlive (This : in out Health) return Boolean;
   function getMaxHealth (This : in out Health) return Integer;
   procedure setMaxHealth (This : in out Health; maxHealth : Integer);
   procedure setHealth (This : in out Health; health : Integer);
   function getHealth (This : in out Health) return Integer;
   procedure addListener (This : in out Health; healthGraphic_Param : access HealthListenerInterface'Class);
   function toString (This : in out Health) return Unbounded_String;

end org.allbinary.game.health.Health_Package;


