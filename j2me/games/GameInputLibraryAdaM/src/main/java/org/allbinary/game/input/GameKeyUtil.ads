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
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;

package org.allbinary.game.input.GameKeyUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;

   type GameKeyUtil is tagged;
   type GameKeyUtil_Access is access all GameKeyUtil'Class;
   type GameKeyUtil_Access_Array is array (Natural range <>) of GameKeyUtil_Access;
   type GameKeyUtil_Access_Array_Access is access all GameKeyUtil_Access_Array;

   type GameKeyUtil is new Java_Object with null record;
   instance : GameKeyUtil_Access;

   procedure Initialize (This : in out GameKeyUtil'Class);
   function Create return GameKeyUtil_Access;
   function isDirectionKey (This : in out GameKeyUtil; key : Integer) return Boolean;
   procedure isDirectionKey (This : in out GameKeyUtil; key : Integer);
   function getInstance return GameKeyUtil_Access;

end org.allbinary.game.input.GameKeyUtil_Package;


