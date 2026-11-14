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
limited with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package;
package org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References is
   type ScreenRepaintProcessor_Access is access all org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package.ScreenRepaintProcessor'Class;
   type ScreenRepaintProcessor_Access_Array is array (Natural range <>) of ScreenRepaintProcessor_Access;
   type ScreenRepaintProcessor_Access_Array_Access is access all ScreenRepaintProcessor_Access_Array;
   type ScreenRepaintProcessor_Access_Array_Access_Array is array (Natural range <>) of ScreenRepaintProcessor_Access_Array_Access;
   type ScreenRepaintProcessor_Access_Array_Access_Array_Access is access all ScreenRepaintProcessor_Access_Array_Access_Array;
   type ScreenRepaintProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenRepaintProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenRepaintProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenRepaintProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenRepaintProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenRepaintProcessor_Access_Array_Access is (if Value /= null and then Value.all in ScreenRepaintProcessor_Access_Array_Object'Class then ScreenRepaintProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenRepaintProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenRepaintProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenRepaintProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenRepaintProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenRepaintProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenRepaintProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenRepaintProcessor_Access_Array_Access_Array_Object'Class then ScreenRepaintProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References;

with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Reference_Types is
   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   use type Displayable_Access;
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   use type Displayable_Access_Array;
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   use type Displayable_Access_Array_Access;
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   use type Displayable_Access_Array_Access_Array;
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   use type Displayable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScreenRepaintProcessor_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.ScreenRepaintProcessor_Access;
   function "=" (Left, Right : ScreenRepaintProcessor_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References."=";
   subtype ScreenRepaintProcessor_Access_Array is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.ScreenRepaintProcessor_Access_Array;
   function "=" (Left, Right : ScreenRepaintProcessor_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References."=";
   subtype ScreenRepaintProcessor_Access_Array_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.ScreenRepaintProcessor_Access_Array_Access;
   function "=" (Left, Right : ScreenRepaintProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References."=";
   function Java_Box (Value : ScreenRepaintProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.Java_Box;
   function Java_Unbox_ScreenRepaintProcessor_Access_Array (Value : access Java_Object'Class) return ScreenRepaintProcessor_Access_Array_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.Java_Unbox_ScreenRepaintProcessor_Access_Array;
   subtype ScreenRepaintProcessor_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.ScreenRepaintProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenRepaintProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References."=";
   subtype ScreenRepaintProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.ScreenRepaintProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenRepaintProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References."=";
   function Java_Box (Value : ScreenRepaintProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.Java_Box;
   function Java_Unbox_ScreenRepaintProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenRepaintProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package_References.Java_Unbox_ScreenRepaintProcessor_Access_Array_Access_Array;

   type ScreenRepaintProcessor is new Processor with record
      displayable : Displayable_Access;
   end record;

   procedure Initialize (This : in out ScreenRepaintProcessor'Class; displayable_Param : access Displayable_Package.Displayable'Class);
   function Create (displayable_Param : access Displayable_Package.Displayable'Class) return ScreenRepaintProcessor_Access;
   procedure process (This : in out ScreenRepaintProcessor);

end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessor_Package;


