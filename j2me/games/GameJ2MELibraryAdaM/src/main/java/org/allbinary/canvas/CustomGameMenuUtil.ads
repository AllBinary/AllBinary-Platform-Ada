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
with org.allbinary.AppletUtil_Package; use org.allbinary.AppletUtil_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;

package org.allbinary.canvas.CustomGameMenuUtil_Package is

   package AppletUtil_Package renames Standard.org.allbinary.AppletUtil_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;

   type CustomGameMenuUtil is tagged;
   type CustomGameMenuUtil_Access is access all CustomGameMenuUtil'Class;
   type CustomGameMenuUtil_Access_Array is array (Natural range <>) of CustomGameMenuUtil_Access;
   type CustomGameMenuUtil_Access_Array_Access is access all CustomGameMenuUtil_Access_Array;

   type CustomGameMenuUtil is new Java_Object with null record;

   procedure Initialize (This : in out CustomGameMenuUtil'Class);
   function Create return CustomGameMenuUtil_Access;
   procedure add (canvas_Param : access MyCanvas_Package.MyCanvas'Class);

end org.allbinary.canvas.CustomGameMenuUtil_Package;


