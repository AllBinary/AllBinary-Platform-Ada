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
limited with org.allbinary.content.NotificationUtil_Package;
package org.allbinary.content.NotificationUtil_Package_References is
   type NotificationUtil_Access is access all org.allbinary.content.NotificationUtil_Package.NotificationUtil'Class;
   type NotificationUtil_Access_Array is array (Natural range <>) of NotificationUtil_Access;
   type NotificationUtil_Access_Array_Access is access all NotificationUtil_Access_Array;
   type NotificationUtil_Access_Array_Access_Array is array (Natural range <>) of NotificationUtil_Access_Array_Access;
   type NotificationUtil_Access_Array_Access_Array_Access is access all NotificationUtil_Access_Array_Access_Array;
   type NotificationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NotificationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : NotificationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NotificationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NotificationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NotificationUtil_Access_Array_Access is (if Value /= null and then Value.all in NotificationUtil_Access_Array_Object'Class then NotificationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type NotificationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NotificationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NotificationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NotificationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NotificationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NotificationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NotificationUtil_Access_Array_Access_Array_Object'Class then NotificationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.content.NotificationUtil_Package_References;

with org.allbinary.content.NotificationUtil_Package_References;
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

package org.allbinary.content.NotificationUtil_Package is

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


   subtype NotificationUtil_Access is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access;
   function "=" (Left, Right : NotificationUtil_Access) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   subtype NotificationUtil_Access_Array is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array;
   function "=" (Left, Right : NotificationUtil_Access_Array) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   subtype NotificationUtil_Access_Array_Access is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array_Access;
   function "=" (Left, Right : NotificationUtil_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   function Java_Box (Value : NotificationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.content.NotificationUtil_Package_References.Java_Box;
   function Java_Unbox_NotificationUtil_Access_Array (Value : access Java_Object'Class) return NotificationUtil_Access_Array_Access renames org.allbinary.content.NotificationUtil_Package_References.Java_Unbox_NotificationUtil_Access_Array;
   subtype NotificationUtil_Access_Array_Access_Array is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : NotificationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   subtype NotificationUtil_Access_Array_Access_Array_Access is org.allbinary.content.NotificationUtil_Package_References.NotificationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NotificationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.content.NotificationUtil_Package_References."=";
   function Java_Box (Value : NotificationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.content.NotificationUtil_Package_References.Java_Box;
   function Java_Unbox_NotificationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return NotificationUtil_Access_Array_Access_Array_Access renames org.allbinary.content.NotificationUtil_Package_References.Java_Unbox_NotificationUtil_Access_Array_Access_Array;

   type NotificationUtil is new Java_Object with null record;
   SINGLETON : NotificationUtil_Access;

   procedure Initialize (This : in out NotificationUtil'Class);
   function Create return NotificationUtil_Access;
   function getInstance return NotificationUtil_Access;
   procedure notify (This : in out NotificationUtil; command_Param : access Command_Package.Command'Class; resource : Unbounded_String; message : Unbounded_String);

end org.allbinary.content.NotificationUtil_Package;


