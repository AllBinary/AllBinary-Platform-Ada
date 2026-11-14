--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
limited with org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package;
package org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References is
   type WebCommandProcessor_Access is access all org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package.WebCommandProcessor'Class;
   type WebCommandProcessor_Access_Array is array (Natural range <>) of WebCommandProcessor_Access;
   type WebCommandProcessor_Access_Array_Access is access all WebCommandProcessor_Access_Array;
   type WebCommandProcessor_Access_Array_Access_Array is array (Natural range <>) of WebCommandProcessor_Access_Array_Access;
   type WebCommandProcessor_Access_Array_Access_Array_Access is access all WebCommandProcessor_Access_Array_Access_Array;
   type WebCommandProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WebCommandProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : WebCommandProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WebCommandProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WebCommandProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WebCommandProcessor_Access_Array_Access is (if Value /= null and then Value.all in WebCommandProcessor_Access_Array_Object'Class then WebCommandProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type WebCommandProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WebCommandProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WebCommandProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WebCommandProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WebCommandProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WebCommandProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WebCommandProcessor_Access_Array_Access_Array_Object'Class then WebCommandProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References;

with org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
limited with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.Command_Package_References;
limited with javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;
with org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References;

package org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype AboutCommandProcessor_Access is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access;
   use type AboutCommandProcessor_Access;
   subtype AboutCommandProcessor_Access_Array is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array;
   use type AboutCommandProcessor_Access_Array;
   subtype AboutCommandProcessor_Access_Array_Access is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array_Access;
   use type AboutCommandProcessor_Access_Array_Access;
   subtype AboutCommandProcessor_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array_Access_Array;
   use type AboutCommandProcessor_Access_Array_Access_Array;
   subtype AboutCommandProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array_Access_Array_Access;
   use type AboutCommandProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WebCommandProcessor_Access is org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.WebCommandProcessor_Access;
   function "=" (Left, Right : WebCommandProcessor_Access) return Boolean renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References."=";
   subtype WebCommandProcessor_Access_Array is org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.WebCommandProcessor_Access_Array;
   function "=" (Left, Right : WebCommandProcessor_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References."=";
   subtype WebCommandProcessor_Access_Array_Access is org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.WebCommandProcessor_Access_Array_Access;
   function "=" (Left, Right : WebCommandProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References."=";
   function Java_Box (Value : WebCommandProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.Java_Box;
   function Java_Unbox_WebCommandProcessor_Access_Array (Value : access Java_Object'Class) return WebCommandProcessor_Access_Array_Access renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.Java_Unbox_WebCommandProcessor_Access_Array;
   subtype WebCommandProcessor_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.WebCommandProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : WebCommandProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References."=";
   subtype WebCommandProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.WebCommandProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WebCommandProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References."=";
   function Java_Box (Value : WebCommandProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.Java_Box;
   function Java_Unbox_WebCommandProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return WebCommandProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package_References.Java_Unbox_WebCommandProcessor_Access_Array_Access_Array;

   type WebCommandProcessor is new Java_Object with record
      logUtil : LogUtil_Access;
      aboutCommandProcessor : AboutCommandProcessor_Access;
      list : BasicArrayList_Access;
   end record;
   instance : WebCommandProcessor_Access;

   procedure Initialize (This : in out WebCommandProcessor'Class);
   function Create return WebCommandProcessor_Access;
   function getInstance return WebCommandProcessor_Access;
   procedure process (This : in out WebCommandProcessor; midletCommandListener_Param : access CommandListener_Package.CommandListener'Class; command_Param : access Command_Package.Command'Class; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package;


