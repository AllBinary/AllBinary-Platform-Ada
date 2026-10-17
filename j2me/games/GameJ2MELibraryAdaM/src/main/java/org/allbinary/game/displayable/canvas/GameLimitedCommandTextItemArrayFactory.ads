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
with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package; use org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
with org.allbinary.graphics.form.item.LimitCommandsVisitor_Package; use org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;

package org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package is

   package CommandTextItemArrayFactory_Package renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
   package LimitCommandsVisitor_Package renames org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;

   type GameLimitedCommandTextItemArrayFactory is tagged;
   type GameLimitedCommandTextItemArrayFactory_Access is access all GameLimitedCommandTextItemArrayFactory'Class;
   type GameLimitedCommandTextItemArrayFactory_Access_Array is array (Natural range <>) of GameLimitedCommandTextItemArrayFactory_Access;
   type GameLimitedCommandTextItemArrayFactory_Access_Array_Access is access all GameLimitedCommandTextItemArrayFactory_Access_Array;

   type GameLimitedCommandTextItemArrayFactory is new Java_Object with record
      commandTextItemArrayFactory : CommandTextItemArrayFactory_Access;
   end record;
   instance : GameLimitedCommandTextItemArrayFactory_Access;

   procedure Initialize (This : in out GameLimitedCommandTextItemArrayFactory'Class);
   function Create return GameLimitedCommandTextItemArrayFactory_Access;
   function getInstance return GameLimitedCommandTextItemArrayFactory_Access;
   procedure getInstance;
   function getCommandTextItemArrayFactory (This : in out GameLimitedCommandTextItemArrayFactory) return CommandTextItemArrayFactory_Access;
   procedure getCommandTextItemArrayFactory (This : in out GameLimitedCommandTextItemArrayFactory);

end org.allbinary.game.displayable.canvas.GameLimitedCommandTextItemArrayFactory_Package;


