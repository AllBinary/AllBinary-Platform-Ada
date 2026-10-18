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

package org.allbinary.game.ag.layer.pickup.health.HealthResources_Package is


   type HealthResources is tagged;
   type HealthResources_Access is access all HealthResources'Class;
   type HealthResources_Access_Array is array (Natural range <>) of HealthResources_Access;
   type HealthResources_Access_Array_Access is access all HealthResources_Access_Array;
   type HealthResources_Access_Array_Access_Array is array (Natural range <>) of HealthResources_Access_Array_Access;
   type HealthResources_Access_Array_Access_Array_Access is access all HealthResources_Access_Array_Access_Array;

   type HealthResources is new Java_Object with record
      RESOURCE : Unbounded_String;
   end record;
   SINGLETON : HealthResources_Access;

   procedure Initialize (This : in out HealthResources'Class);
   function Create return HealthResources_Access;
   function getInstance return HealthResources_Access;

end org.allbinary.game.ag.layer.pickup.health.HealthResources_Package;


