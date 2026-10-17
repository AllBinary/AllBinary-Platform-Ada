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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.ABTextItem_Package; use org.allbinary.graphics.form.item.ABTextItem_Package;

package org.allbinary.graphics.form.item.CommandTextItem_Package is

   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;

   type CommandTextItem is tagged;
   type CommandTextItem_Access is access all CommandTextItem'Class;
   type CommandTextItem_Access_Array is array (Natural range <>) of CommandTextItem_Access;
   type CommandTextItem_Access_Array_Access is access all CommandTextItem_Access_Array;

   type CommandTextItem is new ABTextItem with record
      command : Command_Access;
   end record;

   procedure Initialize (This : in out CommandTextItem'Class; command : Command_Access; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (command : Command_Access; layout : Integer; altText : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return CommandTextItem_Access;
   function isFocusable (This : in out CommandTextItem) return Boolean;
   procedure isFocusable (This : in out CommandTextItem);
   function getCommand (This : in out CommandTextItem) return Command_Access;
   procedure getCommand (This : in out CommandTextItem);

end org.allbinary.graphics.form.item.CommandTextItem_Package;


