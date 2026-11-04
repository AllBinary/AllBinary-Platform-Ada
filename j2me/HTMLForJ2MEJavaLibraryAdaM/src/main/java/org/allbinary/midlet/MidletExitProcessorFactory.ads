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

limited with org.allbinary.midlet.MidletExitProcessorFactory_Package;
package org.allbinary.midlet.MidletExitProcessorFactory_Package_References is
   type MidletExitProcessorFactory_Access is access all org.allbinary.midlet.MidletExitProcessorFactory_Package.MidletExitProcessorFactory'Class;
   type MidletExitProcessorFactory_Access_Array is array (Natural range <>) of MidletExitProcessorFactory_Access;
   type MidletExitProcessorFactory_Access_Array_Access is access all MidletExitProcessorFactory_Access_Array;
   type MidletExitProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of MidletExitProcessorFactory_Access_Array_Access;
   type MidletExitProcessorFactory_Access_Array_Access_Array_Access is access all MidletExitProcessorFactory_Access_Array_Access_Array;
end org.allbinary.midlet.MidletExitProcessorFactory_Package_References;

with org.allbinary.midlet.MidletExitProcessorFactory_Package_References;
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
limited with org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;

package org.allbinary.midlet.MidletExitProcessorFactory_Package is

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


   subtype MidletExitProcessorFactory_Access is org.allbinary.midlet.MidletExitProcessorFactory_Package_References.MidletExitProcessorFactory_Access;
   function "=" (Left, Right : MidletExitProcessorFactory_Access) return Boolean renames org.allbinary.midlet.MidletExitProcessorFactory_Package_References."=";
   subtype MidletExitProcessorFactory_Access_Array is org.allbinary.midlet.MidletExitProcessorFactory_Package_References.MidletExitProcessorFactory_Access_Array;
   function "=" (Left, Right : MidletExitProcessorFactory_Access_Array) return Boolean renames org.allbinary.midlet.MidletExitProcessorFactory_Package_References."=";
   subtype MidletExitProcessorFactory_Access_Array_Access is org.allbinary.midlet.MidletExitProcessorFactory_Package_References.MidletExitProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : MidletExitProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletExitProcessorFactory_Package_References."=";
   subtype MidletExitProcessorFactory_Access_Array_Access_Array is org.allbinary.midlet.MidletExitProcessorFactory_Package_References.MidletExitProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : MidletExitProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.MidletExitProcessorFactory_Package_References."=";
   subtype MidletExitProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.midlet.MidletExitProcessorFactory_Package_References.MidletExitProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MidletExitProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.MidletExitProcessorFactory_Package_References."=";

   type MidletExitProcessorFactory is new Java_Object with null record;
   instance : MidletExitProcessorFactory_Access;

   procedure Initialize (This : in out MidletExitProcessorFactory'Class);
   function Create return MidletExitProcessorFactory_Access;
   function getInstance return MidletExitProcessorFactory_Access;
   function getExitInstance (This : in out MidletExitProcessorFactory; midlet_Param : access MIDlet_Package.MIDlet'Class) return Processor_Access;
   procedure getExitInstance (This : in out MidletExitProcessorFactory; midlet_Param : access MIDlet_Package.MIDlet'Class);

end org.allbinary.midlet.MidletExitProcessorFactory_Package;


