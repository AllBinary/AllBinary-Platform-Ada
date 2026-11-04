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

limited with org.allbinary.graphics.form.item.CommandTextItem_Package;
package org.allbinary.graphics.form.item.CommandTextItem_Package_References is
   type CommandTextItem_Access is access all org.allbinary.graphics.form.item.CommandTextItem_Package.CommandTextItem'Class;
   type CommandTextItem_Access_Array is array (Natural range <>) of CommandTextItem_Access;
   type CommandTextItem_Access_Array_Access is access all CommandTextItem_Access_Array;
   type CommandTextItem_Access_Array_Access_Array is array (Natural range <>) of CommandTextItem_Access_Array_Access;
   type CommandTextItem_Access_Array_Access_Array_Access is access all CommandTextItem_Access_Array_Access_Array;
end org.allbinary.graphics.form.item.CommandTextItem_Package_References;

with org.allbinary.graphics.form.item.CommandTextItem_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.ABTextItem_Package; use org.allbinary.graphics.form.item.ABTextItem_Package;

package org.allbinary.graphics.form.item.CommandTextItem_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype Command_Access is javax.microedition.lcdui.Command_Package_References.Command_Access;
   use type Command_Access;
   subtype Command_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array;
   use type Command_Access_Array;
   subtype Command_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access;
   use type Command_Access_Array_Access;
   subtype Command_Access_Array_Access_Array is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array;
   use type Command_Access_Array_Access_Array;
   subtype Command_Access_Array_Access_Array_Access is javax.microedition.lcdui.Command_Package_References.Command_Access_Array_Access_Array_Access;
   use type Command_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CommandTextItem_Access is org.allbinary.graphics.form.item.CommandTextItem_Package_References.CommandTextItem_Access;
   function "=" (Left, Right : CommandTextItem_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItem_Package_References."=";
   subtype CommandTextItem_Access_Array is org.allbinary.graphics.form.item.CommandTextItem_Package_References.CommandTextItem_Access_Array;
   function "=" (Left, Right : CommandTextItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CommandTextItem_Package_References."=";
   subtype CommandTextItem_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItem_Package_References.CommandTextItem_Access_Array_Access;
   function "=" (Left, Right : CommandTextItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItem_Package_References."=";
   subtype CommandTextItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.CommandTextItem_Package_References.CommandTextItem_Access_Array_Access_Array;
   function "=" (Left, Right : CommandTextItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CommandTextItem_Package_References."=";
   subtype CommandTextItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItem_Package_References.CommandTextItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandTextItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItem_Package_References."=";

   type CommandTextItem is new ABTextItem with record
      command : Command_Access;
   end record;

   procedure Initialize (This : in out CommandTextItem'Class; command_Param : access Command_Package.Command'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (command_Param : access Command_Package.Command'Class; layout : Integer; altText : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandTextItem_Access;
   function isFocusable (This : in out CommandTextItem) return Boolean;
   function getCommand (This : in out CommandTextItem) return Command_Access;

end org.allbinary.graphics.form.item.CommandTextItem_Package;


