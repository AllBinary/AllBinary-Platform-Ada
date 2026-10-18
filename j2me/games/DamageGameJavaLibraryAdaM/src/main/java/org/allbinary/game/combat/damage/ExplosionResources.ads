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

package org.allbinary.game.combat.damage.ExplosionResources_Package is


   type ExplosionResources is tagged;
   type ExplosionResources_Access is access all ExplosionResources'Class;
   type ExplosionResources_Access_Array is array (Natural range <>) of ExplosionResources_Access;
   type ExplosionResources_Access_Array_Access is access all ExplosionResources_Access_Array;
   type ExplosionResources_Access_Array_Access_Array is array (Natural range <>) of ExplosionResources_Access_Array_Access;
   type ExplosionResources_Access_Array_Access_Array_Access is access all ExplosionResources_Access_Array_Access_Array;

   type ExplosionResources is new Java_Object with record
      EXPLOSION_90_RESOURCE : Unbounded_String;
      EXPLOSION_60_RESOURCE : Unbounded_String;
      HALF_EXPLOSION_RESOURCE : Unbounded_String;
      THIRD_EXPLOSION_RESOURCE : Unbounded_String;
   end record;
   instance : ExplosionResources_Access;

   procedure Initialize (This : in out ExplosionResources'Class);
   function Create return ExplosionResources_Access;
   function getInstance return ExplosionResources_Access;

end org.allbinary.game.combat.damage.ExplosionResources_Package;


