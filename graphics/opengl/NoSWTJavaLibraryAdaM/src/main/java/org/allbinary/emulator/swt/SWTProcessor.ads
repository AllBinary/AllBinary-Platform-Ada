-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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

limited with org.allbinary.emulator.swt.SWTProcessor_Package;
package org.allbinary.emulator.swt.SWTProcessor_Package_References is
   type SWTProcessor_Access is access all org.allbinary.emulator.swt.SWTProcessor_Package.SWTProcessor'Class;
   type SWTProcessor_Access_Array is array (Natural range <>) of SWTProcessor_Access;
   type SWTProcessor_Access_Array_Access is access all SWTProcessor_Access_Array;
   type SWTProcessor_Access_Array_Access_Array is array (Natural range <>) of SWTProcessor_Access_Array_Access;
   type SWTProcessor_Access_Array_Access_Array_Access is access all SWTProcessor_Access_Array_Access_Array;
end org.allbinary.emulator.swt.SWTProcessor_Package_References;

with org.allbinary.emulator.swt.SWTProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.eclipse.swt.widgets.Display_Package;
with org.eclipse.swt.widgets.Display_Package_References;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.emulator.swt.SWTProcessor_Package is

   package Display_Package renames Standard.org.eclipse.swt.widgets.Display_Package;
   package Runnable_Package renames Standard.java.lang.Runnable_Package;
   package Reference_Types is
   subtype Display_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access;
   use type Display_Access;
   subtype Display_Access_Array is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array;
   use type Display_Access_Array;
   subtype Display_Access_Array_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access;
   use type Display_Access_Array_Access;
   subtype Display_Access_Array_Access_Array is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access_Array;
   use type Display_Access_Array_Access_Array;
   subtype Display_Access_Array_Access_Array_Access is org.eclipse.swt.widgets.Display_Package_References.Display_Access_Array_Access_Array_Access;
   use type Display_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SWTProcessor_Access is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access;
   function "=" (Left, Right : SWTProcessor_Access) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array;
   function "=" (Left, Right : SWTProcessor_Access_Array) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array_Access is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array_Access;
   function "=" (Left, Right : SWTProcessor_Access_Array_Access) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array_Access_Array is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : SWTProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";
   subtype SWTProcessor_Access_Array_Access_Array_Access is org.allbinary.emulator.swt.SWTProcessor_Package_References.SWTProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SWTProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.emulator.swt.SWTProcessor_Package_References."=";

   type SWTProcessor is new Java_Object with record
      runnable : Runnable_Access;
   end record;
   instance : SWTProcessor_Access;

   procedure Initialize (This : in out SWTProcessor'Class);
   function Create return SWTProcessor_Access;
   function getInstance return SWTProcessor_Access;
   procedure process (This : in out SWTProcessor; display_Param : access Display_Package.Display'Class);

end org.allbinary.emulator.swt.SWTProcessor_Package;


