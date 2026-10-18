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

package org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package is


   type UnitTechnologySingletonFactory is tagged;
   type UnitTechnologySingletonFactory_Access is access all UnitTechnologySingletonFactory'Class;
   type UnitTechnologySingletonFactory_Access_Array is array (Natural range <>) of UnitTechnologySingletonFactory_Access;
   type UnitTechnologySingletonFactory_Access_Array_Access is access all UnitTechnologySingletonFactory_Access_Array;
   type UnitTechnologySingletonFactory_Access_Array_Access_Array is array (Natural range <>) of UnitTechnologySingletonFactory_Access_Array_Access;
   type UnitTechnologySingletonFactory_Access_Array_Access_Array_Access is access all UnitTechnologySingletonFactory_Access_Array_Access_Array;

   type UnitTechnologySingletonFactory is new Java_Object with record
      damage : Integer;
      health : Integer;
      reload : Integer;
      repair : Integer;
      speed : Integer;
   end record;
   instance : UnitTechnologySingletonFactory_Access;

   procedure Initialize (This : in out UnitTechnologySingletonFactory'Class);
   function Create return UnitTechnologySingletonFactory_Access;
   function getInstance return UnitTechnologySingletonFactory_Access;
   procedure init (This : in out UnitTechnologySingletonFactory);
   function getDamage (This : in out UnitTechnologySingletonFactory) return Integer;
   procedure setDamage (This : in out UnitTechnologySingletonFactory; damage : Integer);
   function getHealth (This : in out UnitTechnologySingletonFactory) return Integer;
   procedure setHealth (This : in out UnitTechnologySingletonFactory; health : Integer);
   function getReload (This : in out UnitTechnologySingletonFactory) return Integer;
   procedure setReload (This : in out UnitTechnologySingletonFactory; reload : Integer);
   function getRepair (This : in out UnitTechnologySingletonFactory) return Integer;
   procedure setRepair (This : in out UnitTechnologySingletonFactory; repair : Integer);
   function getSpeed (This : in out UnitTechnologySingletonFactory) return Integer;
   procedure setSpeed (This : in out UnitTechnologySingletonFactory; speed : Integer);

end org.allbinary.game.rts.technology.UnitTechnologySingletonFactory_Package;


