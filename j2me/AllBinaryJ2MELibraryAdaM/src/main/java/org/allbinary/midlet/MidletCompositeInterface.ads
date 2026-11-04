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

limited with org.allbinary.midlet.MidletCompositeInterface_Package;
package org.allbinary.midlet.MidletCompositeInterface_Package_References is
   type MidletCompositeInterface_Access is access all org.allbinary.midlet.MidletCompositeInterface_Package.MidletCompositeInterface'Class;
   type MidletCompositeInterface_Access_Array is array (Natural range <>) of MidletCompositeInterface_Access;
   type MidletCompositeInterface_Access_Array_Access is access all MidletCompositeInterface_Access_Array;
   type MidletCompositeInterface_Access_Array_Access_Array is array (Natural range <>) of MidletCompositeInterface_Access_Array_Access;
   type MidletCompositeInterface_Access_Array_Access_Array_Access is access all MidletCompositeInterface_Access_Array_Access_Array;
end org.allbinary.midlet.MidletCompositeInterface_Package_References;

with org.allbinary.midlet.MidletCompositeInterface_Package_References;
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
limited with javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;
limited with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package_References;

package org.allbinary.midlet.MidletCompositeInterface_Package is

   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
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
   subtype MIDlet_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access;
   use type MIDlet_Access;
   subtype MIDlet_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array;
   use type MIDlet_Access_Array;
   subtype MIDlet_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access;
   use type MIDlet_Access_Array_Access;
   subtype MIDlet_Access_Array_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array;
   use type MIDlet_Access_Array_Access_Array;
   subtype MIDlet_Access_Array_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array_Access;
   use type MIDlet_Access_Array_Access_Array_Access;
   subtype AllBinaryMidlet_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access;
   use type AllBinaryMidlet_Access;
   subtype AllBinaryMidlet_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array;
   use type AllBinaryMidlet_Access_Array;
   subtype AllBinaryMidlet_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access;
   use type AllBinaryMidlet_Access_Array_Access;
   subtype AllBinaryMidlet_Access_Array_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array;
   use type AllBinaryMidlet_Access_Array_Access_Array;
   subtype AllBinaryMidlet_Access_Array_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array_Access;
   use type AllBinaryMidlet_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MidletCompositeInterface is interface;
   subtype MidletCompositeInterface_Access is org.allbinary.midlet.MidletCompositeInterface_Package_References.MidletCompositeInterface_Access;
   function "=" (Left, Right : MidletCompositeInterface_Access) return Boolean renames org.allbinary.midlet.MidletCompositeInterface_Package_References."=";
   subtype MidletCompositeInterface_Access_Array is org.allbinary.midlet.MidletCompositeInterface_Package_References.MidletCompositeInterface_Access_Array;
   function "=" (Left, Right : MidletCompositeInterface_Access_Array) return Boolean renames org.allbinary.midlet.MidletCompositeInterface_Package_References."=";
   subtype MidletCompositeInterface_Access_Array_Access is org.allbinary.midlet.MidletCompositeInterface_Package_References.MidletCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : MidletCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletCompositeInterface_Package_References."=";
   subtype MidletCompositeInterface_Access_Array_Access_Array is org.allbinary.midlet.MidletCompositeInterface_Package_References.MidletCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MidletCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.MidletCompositeInterface_Package_References."=";
   subtype MidletCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.midlet.MidletCompositeInterface_Package_References.MidletCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MidletCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletCompositeInterface_Package_References."=";
   function Java_Object_Access_From_MidletCompositeInterface (Value : MidletCompositeInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setMidlet (This : in out MidletCompositeInterface; midlet_Param : access MIDlet_Package.MIDlet'Class) is abstract;
   function getMidlet (This : in out MidletCompositeInterface) return AllBinaryMidlet_Access is abstract;
   function getDisplayable (This : in out MidletCompositeInterface) return Displayable_Access is abstract;

end org.allbinary.midlet.MidletCompositeInterface_Package;


