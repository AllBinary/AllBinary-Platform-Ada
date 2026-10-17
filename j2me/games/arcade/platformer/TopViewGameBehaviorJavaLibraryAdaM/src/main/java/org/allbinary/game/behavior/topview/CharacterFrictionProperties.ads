-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.game.physics.FrictionProperties_Package; use org.allbinary.game.physics.FrictionProperties_Package;
with org.allbinary.game.physics.friction.FrictionData_Package; use org.allbinary.game.physics.friction.FrictionData_Package;

package org.allbinary.game.behavior.topview.CharacterFrictionProperties_Package is

   package FrictionProperties_Package renames org.allbinary.game.physics.FrictionProperties_Package;
   package FrictionData_Package renames org.allbinary.game.physics.friction.FrictionData_Package;

   type CharacterFrictionProperties is tagged;
   type CharacterFrictionProperties_Access is access all CharacterFrictionProperties'Class;
   type CharacterFrictionProperties_Access_Array is array (Natural range <>) of CharacterFrictionProperties_Access;
   type CharacterFrictionProperties_Access_Array_Access is access all CharacterFrictionProperties_Access_Array;

   type CharacterFrictionProperties is new FrictionProperties with record
      WATER_FRICTION_NOMINATOR : Integer;
      AIR_FRICTION_NOMINATOR : Integer;
      COLLISION_FRICTION_NOMINATOR : Integer;
   end record;

   procedure Initialize (This : in out CharacterFrictionProperties'Class; airFriction : Integer; waterFriction : Integer; collisionFriction : Integer);
   function Create (airFriction : Integer; waterFriction : Integer; collisionFriction : Integer) return CharacterFrictionProperties_Access;
   function getWATER_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties) return Integer;
   procedure getWATER_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties);
   function getAIR_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties) return Integer;
   procedure getAIR_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties);
   function getCOLLISION_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties) return Integer;
   procedure getCOLLISION_FRICTION_NOMINATOR (This : in out CharacterFrictionProperties);

end org.allbinary.game.behavior.topview.CharacterFrictionProperties_Package;


