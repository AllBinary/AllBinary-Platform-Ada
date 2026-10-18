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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.eclipse.swt.widgets.Display_Package; use org.eclipse.swt.widgets.Display_Package;
with java.lang.Runnable_Package; use java.lang.Runnable_Package;

package org.allbinary.emulator.swt.SWTProcessor_Package is

   package Display_Package renames Standard.org.eclipse.swt.widgets.Display_Package;

   type SWTProcessor is tagged;
   type SWTProcessor_Access is access all SWTProcessor'Class;
   type SWTProcessor_Access_Array is array (Natural range <>) of SWTProcessor_Access;
   type SWTProcessor_Access_Array_Access is access all SWTProcessor_Access_Array;
   type SWTProcessor_Access_Array_Access_Array is array (Natural range <>) of SWTProcessor_Access_Array_Access;
   type SWTProcessor_Access_Array_Access_Array_Access is access all SWTProcessor_Access_Array_Access_Array;

   type SWTProcessor is new Java_Object with record
      runnable : Runnable_Access;
   end record;
   instance : SWTProcessor_Access;

   procedure Initialize (This : in out SWTProcessor'Class);
   function Create return SWTProcessor_Access;
   function getInstance return SWTProcessor_Access;
   procedure process (This : in out SWTProcessor; display_Param : access Display_Package.Display'Class);

end org.allbinary.emulator.swt.SWTProcessor_Package;


