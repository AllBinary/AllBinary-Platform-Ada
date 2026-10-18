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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;

   type LicenseRegistrationTextBox is tagged;
   type LicenseRegistrationTextBox_Access is access all LicenseRegistrationTextBox'Class;
   type LicenseRegistrationTextBox_Access_Array is array (Natural range <>) of LicenseRegistrationTextBox_Access;
   type LicenseRegistrationTextBox_Access_Array_Access is access all LicenseRegistrationTextBox_Access_Array;
   type LicenseRegistrationTextBox_Access_Array_Access_Array is array (Natural range <>) of LicenseRegistrationTextBox_Access_Array_Access;
   type LicenseRegistrationTextBox_Access_Array_Access_Array_Access is access all LicenseRegistrationTextBox_Access_Array_Access_Array;

   type LicenseRegistrationTextBox is new CustomTextBox with record
      logUtil : LogUtil_Access;
      pleaseWaitPaintable : Paintable_Access;
      paintable : Paintable_Access;
   end record;
   DISPLAY_COMMAND : Command_Access;
   SUBMIT_COMMAND : Command_Access;

   procedure Initialize (This : in out LicenseRegistrationTextBox'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return LicenseRegistrationTextBox_Access;
   procedure initCommands (This : in out LicenseRegistrationTextBox; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure open (This : in out LicenseRegistrationTextBox);
   procedure close (This : in out LicenseRegistrationTextBox);
   procedure paint (This : in out LicenseRegistrationTextBox; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure submit (This : in out LicenseRegistrationTextBox);

end org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package;


