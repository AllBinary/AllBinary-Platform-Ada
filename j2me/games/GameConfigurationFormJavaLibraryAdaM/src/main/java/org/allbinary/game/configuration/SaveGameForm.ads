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

with AllBinary_Java;
limited with org.allbinary.game.configuration.SaveGameForm_Package;
package org.allbinary.game.configuration.SaveGameForm_Package_References is
   type SaveGameForm_Access is access all org.allbinary.game.configuration.SaveGameForm_Package.SaveGameForm'Class;
   type SaveGameForm_Access_Array is array (Natural range <>) of SaveGameForm_Access;
   type SaveGameForm_Access_Array_Access is access all SaveGameForm_Access_Array;
   type SaveGameForm_Access_Array_Access_Array is array (Natural range <>) of SaveGameForm_Access_Array_Access;
   type SaveGameForm_Access_Array_Access_Array_Access is access all SaveGameForm_Access_Array_Access_Array;
   type SaveGameForm_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SaveGameForm_Access_Array_Access;
   end record;
   function Java_Box (Value : SaveGameForm_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SaveGameForm_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SaveGameForm_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SaveGameForm_Access_Array_Access is (if Value /= null and then Value.all in SaveGameForm_Access_Array_Object'Class then SaveGameForm_Access_Array_Object'Class (Value.all).Value else null);
   type SaveGameForm_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SaveGameForm_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SaveGameForm_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SaveGameForm_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SaveGameForm_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SaveGameForm_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SaveGameForm_Access_Array_Access_Array_Object'Class then SaveGameForm_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.SaveGameForm_Package_References;

with org.allbinary.game.configuration.SaveGameForm_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
limited with org.allbinary.logic.MEUtil_Package;
with org.allbinary.logic.MEUtil_Package_References;

package org.allbinary.game.configuration.SaveGameForm_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package Reference_Types is
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   use type CommandListener_Access;
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   use type CommandListener_Access_Array;
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   use type CommandListener_Access_Array_Access;
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   use type CommandListener_Access_Array_Access_Array;
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   use type CommandListener_Access_Array_Access_Array_Access;
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
   subtype MEUtil_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access;
   use type MEUtil_Access;
   subtype MEUtil_Access_Array is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array;
   use type MEUtil_Access_Array;
   subtype MEUtil_Access_Array_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access;
   use type MEUtil_Access_Array_Access;
   subtype MEUtil_Access_Array_Access_Array is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access_Array;
   use type MEUtil_Access_Array_Access_Array;
   subtype MEUtil_Access_Array_Access_Array_Access is org.allbinary.logic.MEUtil_Package_References.MEUtil_Access_Array_Access_Array_Access;
   use type MEUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SaveGameForm_Access is org.allbinary.game.configuration.SaveGameForm_Package_References.SaveGameForm_Access;
   function "=" (Left, Right : SaveGameForm_Access) return Boolean renames org.allbinary.game.configuration.SaveGameForm_Package_References."=";
   subtype SaveGameForm_Access_Array is org.allbinary.game.configuration.SaveGameForm_Package_References.SaveGameForm_Access_Array;
   function "=" (Left, Right : SaveGameForm_Access_Array) return Boolean renames org.allbinary.game.configuration.SaveGameForm_Package_References."=";
   subtype SaveGameForm_Access_Array_Access is org.allbinary.game.configuration.SaveGameForm_Package_References.SaveGameForm_Access_Array_Access;
   function "=" (Left, Right : SaveGameForm_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.SaveGameForm_Package_References."=";
   function Java_Box (Value : SaveGameForm_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.SaveGameForm_Package_References.Java_Box;
   function Java_Unbox_SaveGameForm_Access_Array (Value : access Java_Object'Class) return SaveGameForm_Access_Array_Access renames org.allbinary.game.configuration.SaveGameForm_Package_References.Java_Unbox_SaveGameForm_Access_Array;
   subtype SaveGameForm_Access_Array_Access_Array is org.allbinary.game.configuration.SaveGameForm_Package_References.SaveGameForm_Access_Array_Access_Array;
   function "=" (Left, Right : SaveGameForm_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.SaveGameForm_Package_References."=";
   subtype SaveGameForm_Access_Array_Access_Array_Access is org.allbinary.game.configuration.SaveGameForm_Package_References.SaveGameForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SaveGameForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.SaveGameForm_Package_References."=";
   function Java_Box (Value : SaveGameForm_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.SaveGameForm_Package_References.Java_Box;
   function Java_Unbox_SaveGameForm_Access_Array_Access_Array (Value : access Java_Object'Class) return SaveGameForm_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.SaveGameForm_Package_References.Java_Unbox_SaveGameForm_Access_Array_Access_Array;

   type SaveGameForm is new CommandForm with record
      meUtil : MEUtil_Access;
   end record;
   FORM : CommandForm_Access;

   procedure Initialize (This : in out SaveGameForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return SaveGameForm_Access;
   function createForm (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandForm_Access;
   procedure createForm (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getInstance return CommandForm_Access;
   procedure initCommands (This : in out SaveGameForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class);

end org.allbinary.game.configuration.SaveGameForm_Package;


