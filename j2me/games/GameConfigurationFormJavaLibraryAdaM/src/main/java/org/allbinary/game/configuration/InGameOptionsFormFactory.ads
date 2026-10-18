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
with org.allbinary.init.Init_Package; use org.allbinary.init.Init_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.configuration.InGameOptionsForm_Package; use org.allbinary.game.configuration.InGameOptionsForm_Package;

package org.allbinary.game.configuration.InGameOptionsFormFactory_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InGameOptionsFormFactory is tagged;
   type InGameOptionsFormFactory_Access is access all InGameOptionsFormFactory'Class;
   type InGameOptionsFormFactory_Access_Array is array (Natural range <>) of InGameOptionsFormFactory_Access;
   type InGameOptionsFormFactory_Access_Array_Access is access all InGameOptionsFormFactory_Access_Array;

   type InGameOptionsFormFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      SINGLETON : CommandForm_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out InGameOptionsFormFactory'Class);
   function Create return InGameOptionsFormFactory_Access;
   function getInstance return InGameOptionsFormFactory_Access;
   procedure init (This : in out InGameOptionsFormFactory; commandListener_Param : access CommandListener_Package.CommandListener'Class; initInterface_Param : access Init_Package.Init'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function get (This : in out InGameOptionsFormFactory) return CommandForm_Access;

end org.allbinary.game.configuration.InGameOptionsFormFactory_Package;


