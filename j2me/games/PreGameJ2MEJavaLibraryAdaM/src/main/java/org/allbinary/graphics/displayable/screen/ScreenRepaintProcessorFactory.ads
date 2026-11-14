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
limited with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;
package org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References is
   type ScreenRepaintProcessorFactory_Access is access all org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package.ScreenRepaintProcessorFactory'Class;
   type ScreenRepaintProcessorFactory_Access_Array is array (Natural range <>) of ScreenRepaintProcessorFactory_Access;
   type ScreenRepaintProcessorFactory_Access_Array_Access is access all ScreenRepaintProcessorFactory_Access_Array;
   type ScreenRepaintProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of ScreenRepaintProcessorFactory_Access_Array_Access;
   type ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access is access all ScreenRepaintProcessorFactory_Access_Array_Access_Array;
   type ScreenRepaintProcessorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenRepaintProcessorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenRepaintProcessorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenRepaintProcessorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenRepaintProcessorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenRepaintProcessorFactory_Access_Array_Access is (if Value /= null and then Value.all in ScreenRepaintProcessorFactory_Access_Array_Object'Class then ScreenRepaintProcessorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ScreenRepaintProcessorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ScreenRepaintProcessorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ScreenRepaintProcessorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ScreenRepaintProcessorFactory_Access_Array_Access_Array_Object'Class then ScreenRepaintProcessorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References;

with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References;
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
limited with org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;

package org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package is

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
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   use type Processor_Access;
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   use type Processor_Access_Array;
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   use type Processor_Access_Array_Access;
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   use type Processor_Access_Array_Access_Array;
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   use type Processor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ScreenRepaintProcessorFactory_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.ScreenRepaintProcessorFactory_Access;
   function "=" (Left, Right : ScreenRepaintProcessorFactory_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References."=";
   subtype ScreenRepaintProcessorFactory_Access_Array is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.ScreenRepaintProcessorFactory_Access_Array;
   function "=" (Left, Right : ScreenRepaintProcessorFactory_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References."=";
   subtype ScreenRepaintProcessorFactory_Access_Array_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.ScreenRepaintProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : ScreenRepaintProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References."=";
   function Java_Box (Value : ScreenRepaintProcessorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_ScreenRepaintProcessorFactory_Access_Array (Value : access Java_Object'Class) return ScreenRepaintProcessorFactory_Access_Array_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.Java_Unbox_ScreenRepaintProcessorFactory_Access_Array;
   subtype ScreenRepaintProcessorFactory_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.ScreenRepaintProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ScreenRepaintProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References."=";
   subtype ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References."=";
   function Java_Box (Value : ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_ScreenRepaintProcessorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ScreenRepaintProcessorFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package_References.Java_Unbox_ScreenRepaintProcessorFactory_Access_Array_Access_Array;

   type ScreenRepaintProcessorFactory is new Java_Object with null record;
   instance : ScreenRepaintProcessorFactory_Access;

   procedure Initialize (This : in out ScreenRepaintProcessorFactory'Class);
   function Create return ScreenRepaintProcessorFactory_Access;
   function getInstance return ScreenRepaintProcessorFactory_Access;
   function create (This : in out ScreenRepaintProcessorFactory; displayable_Param : access Displayable_Package.Displayable'Class) return Processor_Access;
   procedure create (This : in out ScreenRepaintProcessorFactory; displayable_Param : access Displayable_Package.Displayable'Class);

end org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;


