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

package org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package is

   package CommandTextItemArrayFactory_Package renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
   package LimitCommandsVisitor_Package renames org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;

   type DemoLimitedCommandTextItemArrayFactory is tagged;
   type DemoLimitedCommandTextItemArrayFactory_Access is access all DemoLimitedCommandTextItemArrayFactory'Class;
   type DemoLimitedCommandTextItemArrayFactory_Access_Array is array (Natural range <>) of DemoLimitedCommandTextItemArrayFactory_Access;
   type DemoLimitedCommandTextItemArrayFactory_Access_Array_Access is access all DemoLimitedCommandTextItemArrayFactory_Access_Array;

   type DemoLimitedCommandTextItemArrayFactory is new Java_Object with record
      commandTextItemArrayFactory : CommandTextItemArrayFactory_Access;
   end record;
   instance : DemoLimitedCommandTextItemArrayFactory_Access;

   procedure Initialize (This : in out DemoLimitedCommandTextItemArrayFactory'Class);
   function Create return DemoLimitedCommandTextItemArrayFactory_Access;
   function getInstance return DemoLimitedCommandTextItemArrayFactory_Access;
   procedure getInstance;
   function getCommandTextItemArrayFactory (This : in out DemoLimitedCommandTextItemArrayFactory) return CommandTextItemArrayFactory_Access;
   procedure getCommandTextItemArrayFactory (This : in out DemoLimitedCommandTextItemArrayFactory);

end org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package;


