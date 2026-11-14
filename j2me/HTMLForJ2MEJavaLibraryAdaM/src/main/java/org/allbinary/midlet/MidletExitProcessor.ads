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
limited with org.allbinary.midlet.MidletExitProcessor_Package;
package org.allbinary.midlet.MidletExitProcessor_Package_References is
   type MidletExitProcessor_Access is access all org.allbinary.midlet.MidletExitProcessor_Package.MidletExitProcessor'Class;
   type MidletExitProcessor_Access_Array is array (Natural range <>) of MidletExitProcessor_Access;
   type MidletExitProcessor_Access_Array_Access is access all MidletExitProcessor_Access_Array;
   type MidletExitProcessor_Access_Array_Access_Array is array (Natural range <>) of MidletExitProcessor_Access_Array_Access;
   type MidletExitProcessor_Access_Array_Access_Array_Access is access all MidletExitProcessor_Access_Array_Access_Array;
   type MidletExitProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletExitProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletExitProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletExitProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletExitProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletExitProcessor_Access_Array_Access is (if Value /= null and then Value.all in MidletExitProcessor_Access_Array_Object'Class then MidletExitProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type MidletExitProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MidletExitProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MidletExitProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MidletExitProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MidletExitProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MidletExitProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MidletExitProcessor_Access_Array_Access_Array_Object'Class then MidletExitProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.midlet.MidletExitProcessor_Package_References;

with org.allbinary.midlet.MidletExitProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;

package org.allbinary.midlet.MidletExitProcessor_Package is

   package MIDlet_Package renames Standard.javax.microedition.midlet.MIDlet_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype MidletExitProcessor_Access is org.allbinary.midlet.MidletExitProcessor_Package_References.MidletExitProcessor_Access;
   function "=" (Left, Right : MidletExitProcessor_Access) return Boolean renames org.allbinary.midlet.MidletExitProcessor_Package_References."=";
   subtype MidletExitProcessor_Access_Array is org.allbinary.midlet.MidletExitProcessor_Package_References.MidletExitProcessor_Access_Array;
   function "=" (Left, Right : MidletExitProcessor_Access_Array) return Boolean renames org.allbinary.midlet.MidletExitProcessor_Package_References."=";
   subtype MidletExitProcessor_Access_Array_Access is org.allbinary.midlet.MidletExitProcessor_Package_References.MidletExitProcessor_Access_Array_Access;
   function "=" (Left, Right : MidletExitProcessor_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletExitProcessor_Package_References."=";
   function Java_Box (Value : MidletExitProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.MidletExitProcessor_Package_References.Java_Box;
   function Java_Unbox_MidletExitProcessor_Access_Array (Value : access Java_Object'Class) return MidletExitProcessor_Access_Array_Access renames org.allbinary.midlet.MidletExitProcessor_Package_References.Java_Unbox_MidletExitProcessor_Access_Array;
   subtype MidletExitProcessor_Access_Array_Access_Array is org.allbinary.midlet.MidletExitProcessor_Package_References.MidletExitProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MidletExitProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.MidletExitProcessor_Package_References."=";
   subtype MidletExitProcessor_Access_Array_Access_Array_Access is org.allbinary.midlet.MidletExitProcessor_Package_References.MidletExitProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MidletExitProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletExitProcessor_Package_References."=";
   function Java_Box (Value : MidletExitProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.midlet.MidletExitProcessor_Package_References.Java_Box;
   function Java_Unbox_MidletExitProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return MidletExitProcessor_Access_Array_Access_Array_Access renames org.allbinary.midlet.MidletExitProcessor_Package_References.Java_Unbox_MidletExitProcessor_Access_Array_Access_Array;

   type MidletExitProcessor is new Processor with record
      midlet : MIDlet_Access;
   end record;

   procedure Initialize (This : in out MidletExitProcessor'Class; midlet_Param : access MIDlet_Package.MIDlet'Class);
   function Create (midlet_Param : access MIDlet_Package.MIDlet'Class) return MidletExitProcessor_Access;
   procedure process (This : in out MidletExitProcessor);

end org.allbinary.midlet.MidletExitProcessor_Package;


