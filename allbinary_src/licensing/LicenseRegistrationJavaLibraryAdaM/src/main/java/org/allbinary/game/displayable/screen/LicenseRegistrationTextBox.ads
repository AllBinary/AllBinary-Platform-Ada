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

limited with org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package;
package org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References is
   type LicenseRegistrationTextBox_Access is access all org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package.LicenseRegistrationTextBox'Class;
   type LicenseRegistrationTextBox_Access_Array is array (Natural range <>) of LicenseRegistrationTextBox_Access;
   type LicenseRegistrationTextBox_Access_Array_Access is access all LicenseRegistrationTextBox_Access_Array;
   type LicenseRegistrationTextBox_Access_Array_Access_Array is array (Natural range <>) of LicenseRegistrationTextBox_Access_Array_Access;
   type LicenseRegistrationTextBox_Access_Array_Access_Array_Access is access all LicenseRegistrationTextBox_Access_Array_Access_Array;
end org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References;

with org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References;
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
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.form.item.CustomTextBox_Package; use org.allbinary.graphics.form.item.CustomTextBox_Package;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;

package org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CustomTextBox_Package renames Standard.org.allbinary.graphics.form.item.CustomTextBox_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
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
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LicenseRegistrationTextBox_Access is org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References.LicenseRegistrationTextBox_Access;
   function "=" (Left, Right : LicenseRegistrationTextBox_Access) return Boolean renames org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References."=";
   subtype LicenseRegistrationTextBox_Access_Array is org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References.LicenseRegistrationTextBox_Access_Array;
   function "=" (Left, Right : LicenseRegistrationTextBox_Access_Array) return Boolean renames org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References."=";
   subtype LicenseRegistrationTextBox_Access_Array_Access is org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References.LicenseRegistrationTextBox_Access_Array_Access;
   function "=" (Left, Right : LicenseRegistrationTextBox_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References."=";
   subtype LicenseRegistrationTextBox_Access_Array_Access_Array is org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References.LicenseRegistrationTextBox_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseRegistrationTextBox_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References."=";
   subtype LicenseRegistrationTextBox_Access_Array_Access_Array_Access is org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References.LicenseRegistrationTextBox_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseRegistrationTextBox_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.screen.LicenseRegistrationTextBox_Package_References."=";

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


