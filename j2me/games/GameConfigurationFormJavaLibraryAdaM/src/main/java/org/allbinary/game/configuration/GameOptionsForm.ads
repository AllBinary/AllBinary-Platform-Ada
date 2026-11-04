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

limited with org.allbinary.game.configuration.GameOptionsForm_Package;
package org.allbinary.game.configuration.GameOptionsForm_Package_References is
   type GameOptionsForm_Access is access all org.allbinary.game.configuration.GameOptionsForm_Package.GameOptionsForm'Class;
   type GameOptionsForm_Access_Array is array (Natural range <>) of GameOptionsForm_Access;
   type GameOptionsForm_Access_Array_Access is access all GameOptionsForm_Access_Array;
   type GameOptionsForm_Access_Array_Access_Array is array (Natural range <>) of GameOptionsForm_Access_Array_Access;
   type GameOptionsForm_Access_Array_Access_Array_Access is access all GameOptionsForm_Access_Array_Access_Array;
end org.allbinary.game.configuration.GameOptionsForm_Package_References;

with org.allbinary.game.configuration.GameOptionsForm_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;

package org.allbinary.game.configuration.GameOptionsForm_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameOptionsForm_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access;
   function "=" (Left, Right : GameOptionsForm_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array;
   function "=" (Left, Right : GameOptionsForm_Access_Array) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access;
   function "=" (Left, Right : GameOptionsForm_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array_Access_Array is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array;
   function "=" (Left, Right : GameOptionsForm_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";
   subtype GameOptionsForm_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameOptionsForm_Package_References.GameOptionsForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameOptionsForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsForm_Package_References."=";

   type GameOptionsForm is new CommandForm with record
      meUtil : MEUtil_Access;
   end record;

   procedure Initialize (This : in out GameOptionsForm'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return GameOptionsForm_Access;
   procedure closeClientInformation (This : in out GameOptionsForm; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);
   procedure addTextFieldsIfSimulated (This : in out GameOptionsForm);
   procedure addTextFields (This : in out GameOptionsForm);
   procedure addConfiguration (This : in out GameOptionsForm);
   procedure initCommands (This : in out GameOptionsForm; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure save (This : in out GameOptionsForm; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class);

end org.allbinary.game.configuration.GameOptionsForm_Package;


