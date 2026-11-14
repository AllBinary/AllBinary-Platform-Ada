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
limited with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
package org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References is
   type MyCommandsFactory_Access is access all org.allbinary.graphics.displayable.command.MyCommandsFactory_Package.MyCommandsFactory'Class;
   type MyCommandsFactory_Access_Array is array (Natural range <>) of MyCommandsFactory_Access;
   type MyCommandsFactory_Access_Array_Access is access all MyCommandsFactory_Access_Array;
   type MyCommandsFactory_Access_Array_Access_Array is array (Natural range <>) of MyCommandsFactory_Access_Array_Access;
   type MyCommandsFactory_Access_Array_Access_Array_Access is access all MyCommandsFactory_Access_Array_Access_Array;
   type MyCommandsFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCommandsFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCommandsFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCommandsFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCommandsFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCommandsFactory_Access_Array_Access is (if Value /= null and then Value.all in MyCommandsFactory_Access_Array_Object'Class then MyCommandsFactory_Access_Array_Object'Class (Value.all).Value else null);
   type MyCommandsFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCommandsFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCommandsFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCommandsFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCommandsFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCommandsFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyCommandsFactory_Access_Array_Access_Array_Object'Class then MyCommandsFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References;

with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References;
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

package org.allbinary.graphics.displayable.command.MyCommandsFactory_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype MyCommandsFactory_Access is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access;
   function "=" (Left, Right : MyCommandsFactory_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype MyCommandsFactory_Access_Array is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array;
   function "=" (Left, Right : MyCommandsFactory_Access_Array) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype MyCommandsFactory_Access_Array_Access is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array_Access;
   function "=" (Left, Right : MyCommandsFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   function Java_Box (Value : MyCommandsFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.Java_Box;
   function Java_Unbox_MyCommandsFactory_Access_Array (Value : access Java_Object'Class) return MyCommandsFactory_Access_Array_Access renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.Java_Unbox_MyCommandsFactory_Access_Array;
   subtype MyCommandsFactory_Access_Array_Access_Array is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MyCommandsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   subtype MyCommandsFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.MyCommandsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCommandsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References."=";
   function Java_Box (Value : MyCommandsFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.Java_Box;
   function Java_Unbox_MyCommandsFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return MyCommandsFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.command.MyCommandsFactory_Package_References.Java_Unbox_MyCommandsFactory_Access_Array_Access_Array;

   type MyCommandsFactory is new Java_Object with record
      NO_COMMAND : Command_Access;
      GAUGE_CHANGE : Command_Access;
      SET_DISPLAYABLE : Command_Access;
      PAUSE_COMMAND : Command_Access;
      RESUME_COMMAND : Command_Access;
   end record;
   instance : MyCommandsFactory_Access;

   procedure Initialize (This : in out MyCommandsFactory'Class);
   function Create return MyCommandsFactory_Access;
   function getInstance return MyCommandsFactory_Access;

end org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;


