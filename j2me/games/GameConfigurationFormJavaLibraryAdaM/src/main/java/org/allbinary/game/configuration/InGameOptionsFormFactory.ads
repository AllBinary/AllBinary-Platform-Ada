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

limited with org.allbinary.game.configuration.InGameOptionsFormFactory_Package;
package org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References is
   type InGameOptionsFormFactory_Access is access all org.allbinary.game.configuration.InGameOptionsFormFactory_Package.InGameOptionsFormFactory'Class;
   type InGameOptionsFormFactory_Access_Array is array (Natural range <>) of InGameOptionsFormFactory_Access;
   type InGameOptionsFormFactory_Access_Array_Access is access all InGameOptionsFormFactory_Access_Array;
   type InGameOptionsFormFactory_Access_Array_Access_Array is array (Natural range <>) of InGameOptionsFormFactory_Access_Array_Access;
   type InGameOptionsFormFactory_Access_Array_Access_Array_Access is access all InGameOptionsFormFactory_Access_Array_Access_Array;
end org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References;

with org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References;
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
limited with org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package_References;
limited with org.allbinary.init.Init_Package;
with org.allbinary.init.Init_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.configuration.InGameOptionsFormFactory_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package Init_Package renames Standard.org.allbinary.init.Init_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype CommandForm_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access;
   use type CommandForm_Access;
   subtype CommandForm_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array;
   use type CommandForm_Access_Array;
   subtype CommandForm_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access;
   use type CommandForm_Access_Array_Access;
   subtype CommandForm_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array;
   use type CommandForm_Access_Array_Access_Array;
   subtype CommandForm_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array_Access;
   use type CommandForm_Access_Array_Access_Array_Access;
   subtype Init_Access is org.allbinary.init.Init_Package_References.Init_Access;
   use type Init_Access;
   subtype Init_Access_Array is org.allbinary.init.Init_Package_References.Init_Access_Array;
   use type Init_Access_Array;
   subtype Init_Access_Array_Access is org.allbinary.init.Init_Package_References.Init_Access_Array_Access;
   use type Init_Access_Array_Access;
   subtype Init_Access_Array_Access_Array is org.allbinary.init.Init_Package_References.Init_Access_Array_Access_Array;
   use type Init_Access_Array_Access_Array;
   subtype Init_Access_Array_Access_Array_Access is org.allbinary.init.Init_Package_References.Init_Access_Array_Access_Array_Access;
   use type Init_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype InGameOptionsFormFactory_Access is org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References.InGameOptionsFormFactory_Access;
   function "=" (Left, Right : InGameOptionsFormFactory_Access) return Boolean renames org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References."=";
   subtype InGameOptionsFormFactory_Access_Array is org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References.InGameOptionsFormFactory_Access_Array;
   function "=" (Left, Right : InGameOptionsFormFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References."=";
   subtype InGameOptionsFormFactory_Access_Array_Access is org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References.InGameOptionsFormFactory_Access_Array_Access;
   function "=" (Left, Right : InGameOptionsFormFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References."=";
   subtype InGameOptionsFormFactory_Access_Array_Access_Array is org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References.InGameOptionsFormFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InGameOptionsFormFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References."=";
   subtype InGameOptionsFormFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References.InGameOptionsFormFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InGameOptionsFormFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.InGameOptionsFormFactory_Package_References."=";

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


