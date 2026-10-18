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
with org.allbinary.game.ag.life.LifeInterface_Package; use org.allbinary.game.ag.life.LifeInterface_Package;

package org.allbinary.game.ag.life.Life_Package is


   type Life is tagged;
   type Life_Access is access all Life'Class;
   type Life_Access_Array is array (Natural range <>) of Life_Access;
   type Life_Access_Array_Access is access all Life_Access_Array;
   type Life_Access_Array_Access_Array is array (Natural range <>) of Life_Access_Array_Access;
   type Life_Access_Array_Access_Array_Access is access all Life_Access_Array_Access_Array;

   type Life is new Java_Object and LifeInterface with record
      lives : Short_Integer;
      startLives : Short_Integer;
      maxlives : Short_Integer;
   end record;
   NO_LIFE : Life_Access;

   procedure Initialize (This : in out Life'Class; lives : Short_Integer; maxlives : Short_Integer);
   function Create (lives : Short_Integer; maxlives : Short_Integer) return Life_Access;
   function createLife return Life_Access;
   function get (This : in out Life) return Short_Integer;
   procedure set (This : in out Life; lives : Short_Integer);
   procedure reset (This : in out Life);
   procedure add (This : in out Life; lives : Short_Integer);
   function isAlive (This : in out Life) return Boolean;
   function getMaxlives (This : in out Life) return Short_Integer;
   function reachedLimit (This : in out Life) return Boolean;
   procedure deaths (This : in out Life; lives : Short_Integer);
   function getStartLives (This : in out Life) return Short_Integer;
   procedure setStartLives (This : in out Life; startLives : Short_Integer);

end org.allbinary.game.ag.life.Life_Package;


