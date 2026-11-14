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
limited with org.allbinary.graphics.displayable.DisplayableInterface_Package;
package org.allbinary.graphics.displayable.DisplayableInterface_Package_References is
   type DisplayableInterface_Access is access all org.allbinary.graphics.displayable.DisplayableInterface_Package.DisplayableInterface'Class;
   type DisplayableInterface_Access_Array is array (Natural range <>) of DisplayableInterface_Access;
   type DisplayableInterface_Access_Array_Access is access all DisplayableInterface_Access_Array;
   type DisplayableInterface_Access_Array_Access_Array is array (Natural range <>) of DisplayableInterface_Access_Array_Access;
   type DisplayableInterface_Access_Array_Access_Array_Access is access all DisplayableInterface_Access_Array_Access_Array;
   type DisplayableInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayableInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayableInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayableInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayableInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayableInterface_Access_Array_Access is (if Value /= null and then Value.all in DisplayableInterface_Access_Array_Object'Class then DisplayableInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DisplayableInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DisplayableInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DisplayableInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DisplayableInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DisplayableInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DisplayableInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DisplayableInterface_Access_Array_Access_Array_Object'Class then DisplayableInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.DisplayableInterface_Package_References;

with org.allbinary.graphics.displayable.DisplayableInterface_Package_References;
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

package org.allbinary.graphics.displayable.DisplayableInterface_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
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
   end Reference_Types;
   use Reference_Types;


   type DisplayableInterface is interface;
   subtype DisplayableInterface_Access is org.allbinary.graphics.displayable.DisplayableInterface_Package_References.DisplayableInterface_Access;
   function "=" (Left, Right : DisplayableInterface_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References."=";
   subtype DisplayableInterface_Access_Array is org.allbinary.graphics.displayable.DisplayableInterface_Package_References.DisplayableInterface_Access_Array;
   function "=" (Left, Right : DisplayableInterface_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References."=";
   subtype DisplayableInterface_Access_Array_Access is org.allbinary.graphics.displayable.DisplayableInterface_Package_References.DisplayableInterface_Access_Array_Access;
   function "=" (Left, Right : DisplayableInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References."=";
   function Java_Box (Value : DisplayableInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References.Java_Box;
   function Java_Unbox_DisplayableInterface_Access_Array (Value : access Java_Object'Class) return DisplayableInterface_Access_Array_Access renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References.Java_Unbox_DisplayableInterface_Access_Array;
   subtype DisplayableInterface_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayableInterface_Package_References.DisplayableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References."=";
   subtype DisplayableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayableInterface_Package_References.DisplayableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References."=";
   function Java_Box (Value : DisplayableInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References.Java_Box;
   function Java_Unbox_DisplayableInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DisplayableInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.DisplayableInterface_Package_References.Java_Unbox_DisplayableInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DisplayableInterface (Value : DisplayableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure addCommand (This : in out DisplayableInterface; cmd_Param : access Command_Package.Command'Class) is abstract;
   function getHeight (This : in out DisplayableInterface) return Integer is abstract;
   function getWidth (This : in out DisplayableInterface) return Integer is abstract;
   procedure removeCommand (This : in out DisplayableInterface; cmd_Param : access Command_Package.Command'Class) is abstract;
   procedure setCommandListener (This : in out DisplayableInterface; l_Param : access CommandListener_Package.CommandListener'Class) is abstract;

end org.allbinary.graphics.displayable.DisplayableInterface_Package;


