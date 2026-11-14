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
limited with org.allbinary.game.configuration.GameOptionsFormFactory_Package;
package org.allbinary.game.configuration.GameOptionsFormFactory_Package_References is
   type GameOptionsFormFactory_Access is access all org.allbinary.game.configuration.GameOptionsFormFactory_Package.GameOptionsFormFactory'Class;
   type GameOptionsFormFactory_Access_Array is array (Natural range <>) of GameOptionsFormFactory_Access;
   type GameOptionsFormFactory_Access_Array_Access is access all GameOptionsFormFactory_Access_Array;
   type GameOptionsFormFactory_Access_Array_Access_Array is array (Natural range <>) of GameOptionsFormFactory_Access_Array_Access;
   type GameOptionsFormFactory_Access_Array_Access_Array_Access is access all GameOptionsFormFactory_Access_Array_Access_Array;
   type GameOptionsFormFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameOptionsFormFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : GameOptionsFormFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameOptionsFormFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameOptionsFormFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameOptionsFormFactory_Access_Array_Access is (if Value /= null and then Value.all in GameOptionsFormFactory_Access_Array_Object'Class then GameOptionsFormFactory_Access_Array_Object'Class (Value.all).Value else null);
   type GameOptionsFormFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameOptionsFormFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameOptionsFormFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameOptionsFormFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameOptionsFormFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameOptionsFormFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameOptionsFormFactory_Access_Array_Access_Array_Object'Class then GameOptionsFormFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.configuration.GameOptionsFormFactory_Package_References;

with org.allbinary.game.configuration.GameOptionsFormFactory_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.game.configuration.GameOptionsFormFactory_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
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


   subtype GameOptionsFormFactory_Access is org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.GameOptionsFormFactory_Access;
   function "=" (Left, Right : GameOptionsFormFactory_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References."=";
   subtype GameOptionsFormFactory_Access_Array is org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.GameOptionsFormFactory_Access_Array;
   function "=" (Left, Right : GameOptionsFormFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References."=";
   subtype GameOptionsFormFactory_Access_Array_Access is org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.GameOptionsFormFactory_Access_Array_Access;
   function "=" (Left, Right : GameOptionsFormFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References."=";
   function Java_Box (Value : GameOptionsFormFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.Java_Box;
   function Java_Unbox_GameOptionsFormFactory_Access_Array (Value : access Java_Object'Class) return GameOptionsFormFactory_Access_Array_Access renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.Java_Unbox_GameOptionsFormFactory_Access_Array;
   subtype GameOptionsFormFactory_Access_Array_Access_Array is org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.GameOptionsFormFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameOptionsFormFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References."=";
   subtype GameOptionsFormFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.GameOptionsFormFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameOptionsFormFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References."=";
   function Java_Box (Value : GameOptionsFormFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.Java_Box;
   function Java_Unbox_GameOptionsFormFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return GameOptionsFormFactory_Access_Array_Access_Array_Access renames org.allbinary.game.configuration.GameOptionsFormFactory_Package_References.Java_Unbox_GameOptionsFormFactory_Access_Array_Access_Array;

   type GameOptionsFormFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : GameOptionsFormFactory_Access;

   procedure Initialize (This : in out GameOptionsFormFactory'Class);
   function Create return GameOptionsFormFactory_Access;
   function getInstance return GameOptionsFormFactory_Access;
   function init (This : in out GameOptionsFormFactory; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return CommandForm_Access;
   procedure init (This : in out GameOptionsFormFactory; commandListener_Param : access CommandListener_Package.CommandListener'Class; title : Unbounded_String; backgrounBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);

end org.allbinary.game.configuration.GameOptionsFormFactory_Package;


