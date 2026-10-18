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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.logic.MEUtil_Package; use org.allbinary.logic.MEUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

package org.allbinary.game.configuration.GameOptionsForm_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package MEUtil_Package renames Standard.org.allbinary.logic.MEUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;

   type GameOptionsForm is tagged;
   type GameOptionsForm_Access is access all GameOptionsForm'Class;
   type GameOptionsForm_Access_Array is array (Natural range <>) of GameOptionsForm_Access;
   type GameOptionsForm_Access_Array_Access is access all GameOptionsForm_Access_Array;
   type GameOptionsForm_Access_Array_Access_Array is array (Natural range <>) of GameOptionsForm_Access_Array_Access;
   type GameOptionsForm_Access_Array_Access_Array_Access is access all GameOptionsForm_Access_Array_Access_Array;

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


