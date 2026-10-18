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

package org.allbinary.game.ag.layer.pickup.life.LifeResources_Package is


   type LifeResources is tagged;
   type LifeResources_Access is access all LifeResources'Class;
   type LifeResources_Access_Array is array (Natural range <>) of LifeResources_Access;
   type LifeResources_Access_Array_Access is access all LifeResources_Access_Array;
   type LifeResources_Access_Array_Access_Array is array (Natural range <>) of LifeResources_Access_Array_Access;
   type LifeResources_Access_Array_Access_Array_Access is access all LifeResources_Access_Array_Access_Array;

   type LifeResources is new Java_Object with record
      RESOURCE : Unbounded_String;
   end record;
   SINGLETON : LifeResources_Access;

   procedure Initialize (This : in out LifeResources'Class);
   function Create return LifeResources_Access;
   function getInstance return LifeResources_Access;

end org.allbinary.game.ag.layer.pickup.life.LifeResources_Package;


