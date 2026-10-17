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

package org.allbinary.game.layer.Aggression_Package is

   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;

   type Aggression is tagged;
   type Aggression_Access is access all Aggression'Class;
   type Aggression_Access_Array is array (Natural range <>) of Aggression_Access;
   type Aggression_Access_Array_Access is access all Aggression_Access_Array;

   type Aggression is new Java_Object with record
      ram : Integer;
      projectile : Integer;
      drops : Integer;
   end record;

   procedure Initialize (This : in out Aggression'Class; ram : Integer; projectile : Integer; drops : Integer);
   function Create (ram : Integer; projectile : Integer; drops : Integer) return Aggression_Access;
   function getRam (This : in out Aggression) return Integer;
   procedure setRam (This : in out Aggression; ram : Integer);
   function getProjectile (This : in out Aggression) return Integer;
   procedure setProjectile (This : in out Aggression; projectile : Integer);
   function getDrops (This : in out Aggression) return Integer;
   procedure setDrops (This : in out Aggression; drops : Integer);

end org.allbinary.game.layer.Aggression_Package;


