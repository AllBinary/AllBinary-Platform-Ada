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
limited with org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;
package org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References is
   type AboutCommandProcessor_Access is access all org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package.AboutCommandProcessor'Class;
   type AboutCommandProcessor_Access_Array is array (Natural range <>) of AboutCommandProcessor_Access;
   type AboutCommandProcessor_Access_Array_Access is access all AboutCommandProcessor_Access_Array;
   type AboutCommandProcessor_Access_Array_Access_Array is array (Natural range <>) of AboutCommandProcessor_Access_Array_Access;
   type AboutCommandProcessor_Access_Array_Access_Array_Access is access all AboutCommandProcessor_Access_Array_Access_Array;
   type AboutCommandProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AboutCommandProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : AboutCommandProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AboutCommandProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AboutCommandProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AboutCommandProcessor_Access_Array_Access is (if Value /= null and then Value.all in AboutCommandProcessor_Access_Array_Object'Class then AboutCommandProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type AboutCommandProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AboutCommandProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AboutCommandProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AboutCommandProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AboutCommandProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AboutCommandProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AboutCommandProcessor_Access_Array_Access_Array_Object'Class then AboutCommandProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References;

with org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References;
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

package org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AboutCommandProcessor_Access is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access;
   function "=" (Left, Right : AboutCommandProcessor_Access) return Boolean renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References."=";
   subtype AboutCommandProcessor_Access_Array is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array;
   function "=" (Left, Right : AboutCommandProcessor_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References."=";
   subtype AboutCommandProcessor_Access_Array_Access is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array_Access;
   function "=" (Left, Right : AboutCommandProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References."=";
   function Java_Box (Value : AboutCommandProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.Java_Box;
   function Java_Unbox_AboutCommandProcessor_Access_Array (Value : access Java_Object'Class) return AboutCommandProcessor_Access_Array_Access renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.Java_Unbox_AboutCommandProcessor_Access_Array;
   subtype AboutCommandProcessor_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : AboutCommandProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References."=";
   subtype AboutCommandProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.AboutCommandProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AboutCommandProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References."=";
   function Java_Box (Value : AboutCommandProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.Java_Box;
   function Java_Unbox_AboutCommandProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return AboutCommandProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package_References.Java_Unbox_AboutCommandProcessor_Access_Array_Access_Array;

   type AboutCommandProcessor is new Java_Object with null record;
   instance : AboutCommandProcessor_Access;

   procedure Initialize (This : in out AboutCommandProcessor'Class);
   function Create return AboutCommandProcessor_Access;
   function getInstance return AboutCommandProcessor_Access;
   procedure process (This : in out AboutCommandProcessor; midletCommandListener_Param : access CommandListener_Package.CommandListener'Class; command_Param : access Command_Package.Command'Class; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;


