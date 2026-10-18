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
with org.allbinary.game.health.HealthListenerInterface_Package; use org.allbinary.game.health.HealthListenerInterface_Package;

package org.allbinary.game.health.HealthInterface_Package is


   type HealthInterface is interface;
   type HealthInterface_Access is access all HealthInterface'Class;
   type HealthInterface_Access_Array is array (Natural range <>) of HealthInterface_Access;
   type HealthInterface_Access_Array_Access is access all HealthInterface_Access_Array;
   type HealthInterface_Access_Array_Access_Array is array (Natural range <>) of HealthInterface_Access_Array_Access;
   type HealthInterface_Access_Array_Access_Array_Access is access all HealthInterface_Access_Array_Access_Array;
   function isAlive (This : in out HealthInterface) return Boolean is abstract;
   procedure damage (This : in out HealthInterface; ahealth : Integer) is abstract;
   procedure heal (This : in out HealthInterface; ahealth : Integer) is abstract;
   procedure healMax (This : in out HealthInterface) is abstract;
   function getMaxHealth (This : in out HealthInterface) return Integer is abstract;
   procedure setMaxHealth (This : in out HealthInterface; maxHealth : Integer) is abstract;
   function getHealth (This : in out HealthInterface) return Integer is abstract;
   procedure addListener (This : in out HealthInterface; healthListenerInterface_Param : access HealthListenerInterface_Package.HealthListenerInterface'Class) is abstract;

end org.allbinary.game.health.HealthInterface_Package;


