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

limited with org.allbinary.midlet.ExitRunnable_Package;
package org.allbinary.midlet.ExitRunnable_Package_References is
   type ExitRunnable_Access is access all org.allbinary.midlet.ExitRunnable_Package.ExitRunnable'Class;
   type ExitRunnable_Access_Array is array (Natural range <>) of ExitRunnable_Access;
   type ExitRunnable_Access_Array_Access is access all ExitRunnable_Access_Array;
   type ExitRunnable_Access_Array_Access_Array is array (Natural range <>) of ExitRunnable_Access_Array_Access;
   type ExitRunnable_Access_Array_Access_Array_Access is access all ExitRunnable_Access_Array_Access_Array;
end org.allbinary.midlet.ExitRunnable_Package_References;

with org.allbinary.midlet.ExitRunnable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;
limited with org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package_References;

package org.allbinary.midlet.ExitRunnable_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype ExitRunnable_Access is org.allbinary.midlet.ExitRunnable_Package_References.ExitRunnable_Access;
   function "=" (Left, Right : ExitRunnable_Access) return Boolean renames org.allbinary.midlet.ExitRunnable_Package_References."=";
   subtype ExitRunnable_Access_Array is org.allbinary.midlet.ExitRunnable_Package_References.ExitRunnable_Access_Array;
   function "=" (Left, Right : ExitRunnable_Access_Array) return Boolean renames org.allbinary.midlet.ExitRunnable_Package_References."=";
   subtype ExitRunnable_Access_Array_Access is org.allbinary.midlet.ExitRunnable_Package_References.ExitRunnable_Access_Array_Access;
   function "=" (Left, Right : ExitRunnable_Access_Array_Access) return Boolean renames org.allbinary.midlet.ExitRunnable_Package_References."=";
   subtype ExitRunnable_Access_Array_Access_Array is org.allbinary.midlet.ExitRunnable_Package_References.ExitRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ExitRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.ExitRunnable_Package_References."=";
   subtype ExitRunnable_Access_Array_Access_Array_Access is org.allbinary.midlet.ExitRunnable_Package_References.ExitRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ExitRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.ExitRunnable_Package_References."=";

   type ExitRunnable is new Java_Object and Runnable with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      midlet : AllBinaryMidlet_Access;
      processor : Processor_Access;
      isProgress : Boolean;
   end record;

   procedure Initialize (This : in out ExitRunnable'Class; midlet_Param : access AllBinaryMidlet_Package.AllBinaryMidlet'Class; processor_Param : access Processor_Package.Processor'Class; isProgress : Boolean);
   function Create (midlet_Param : access AllBinaryMidlet_Package.AllBinaryMidlet'Class; processor_Param : access Processor_Package.Processor'Class; isProgress : Boolean) return ExitRunnable_Access;
   procedure run (This : in out ExitRunnable);

end org.allbinary.midlet.ExitRunnable_Package;


