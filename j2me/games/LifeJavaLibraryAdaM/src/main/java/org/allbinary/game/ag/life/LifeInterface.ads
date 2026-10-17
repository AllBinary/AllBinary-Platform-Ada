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

package org.allbinary.game.ag.life.LifeInterface_Package is


   type LifeInterface is interface;
   type LifeInterface_Access is access all LifeInterface'Class;
   type LifeInterface_Access_Array is array (Natural range <>) of LifeInterface_Access;
   type LifeInterface_Access_Array_Access is access all LifeInterface_Access_Array;
   function get (This : in out LifeInterface) return Short_Integer is abstract;
   procedure set (This : in out LifeInterface; lives : Short_Integer) is abstract;
   procedure reset (This : in out LifeInterface) is abstract;
   procedure add (This : in out LifeInterface; lives : Short_Integer) is abstract;
   procedure deaths (This : in out LifeInterface; lives : Short_Integer) is abstract;
   function getMaxlives (This : in out LifeInterface) return Short_Integer is abstract;
   function isAlive (This : in out LifeInterface) return Boolean is abstract;

end org.allbinary.game.ag.life.LifeInterface_Package;


