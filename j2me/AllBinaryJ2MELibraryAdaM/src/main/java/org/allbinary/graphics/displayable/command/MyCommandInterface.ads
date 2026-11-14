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
limited with org.allbinary.graphics.displayable.command.MyCommandInterface_Package;
package org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References is
   type MyCommandInterface_Access is access all org.allbinary.graphics.displayable.command.MyCommandInterface_Package.MyCommandInterface'Class;
   type MyCommandInterface_Access_Array is array (Natural range <>) of MyCommandInterface_Access;
   type MyCommandInterface_Access_Array_Access is access all MyCommandInterface_Access_Array;
   type MyCommandInterface_Access_Array_Access_Array is array (Natural range <>) of MyCommandInterface_Access_Array_Access;
   type MyCommandInterface_Access_Array_Access_Array_Access is access all MyCommandInterface_Access_Array_Access_Array;
   type MyCommandInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCommandInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCommandInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCommandInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCommandInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCommandInterface_Access_Array_Access is (if Value /= null and then Value.all in MyCommandInterface_Access_Array_Object'Class then MyCommandInterface_Access_Array_Object'Class (Value.all).Value else null);
   type MyCommandInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MyCommandInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MyCommandInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MyCommandInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MyCommandInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MyCommandInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MyCommandInterface_Access_Array_Access_Array_Object'Class then MyCommandInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References;

with org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References;
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

package org.allbinary.graphics.displayable.command.MyCommandInterface_Package is

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


   type MyCommandInterface is interface;
   subtype MyCommandInterface_Access is org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.MyCommandInterface_Access;
   function "=" (Left, Right : MyCommandInterface_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References."=";
   subtype MyCommandInterface_Access_Array is org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.MyCommandInterface_Access_Array;
   function "=" (Left, Right : MyCommandInterface_Access_Array) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References."=";
   subtype MyCommandInterface_Access_Array_Access is org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.MyCommandInterface_Access_Array_Access;
   function "=" (Left, Right : MyCommandInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References."=";
   function Java_Box (Value : MyCommandInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.Java_Box;
   function Java_Unbox_MyCommandInterface_Access_Array (Value : access Java_Object'Class) return MyCommandInterface_Access_Array_Access renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.Java_Unbox_MyCommandInterface_Access_Array;
   subtype MyCommandInterface_Access_Array_Access_Array is org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.MyCommandInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MyCommandInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References."=";
   subtype MyCommandInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.MyCommandInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCommandInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References."=";
   function Java_Box (Value : MyCommandInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.Java_Box;
   function Java_Unbox_MyCommandInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return MyCommandInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.command.MyCommandInterface_Package_References.Java_Unbox_MyCommandInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_MyCommandInterface (Value : MyCommandInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure addCommand (This : in out MyCommandInterface; command_Param : access Command_Package.Command'Class) is abstract;
   procedure removeAllCommands (This : in out MyCommandInterface) is abstract;

end org.allbinary.graphics.displayable.command.MyCommandInterface_Package;


