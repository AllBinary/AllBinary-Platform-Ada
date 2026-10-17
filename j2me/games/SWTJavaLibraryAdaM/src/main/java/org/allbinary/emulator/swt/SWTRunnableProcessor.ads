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
with org.allbinary.emulator.swt.SWTProcessor_Package; use org.allbinary.emulator.swt.SWTProcessor_Package;

package org.allbinary.emulator.swt.SWTRunnableProcessor_Package is

   package Display_Package renames Standard.org.eclipse.swt.widgets.Display_Package;

   type SWTRunnableProcessor is tagged;
   type SWTRunnableProcessor_Access is access all SWTRunnableProcessor'Class;
   type SWTRunnableProcessor_Access_Array is array (Natural range <>) of SWTRunnableProcessor_Access;
   type SWTRunnableProcessor_Access_Array_Access is access all SWTRunnableProcessor_Access_Array;

   type SWTRunnableProcessor is new SWTProcessor with null record;
   instanceR : SWTRunnableProcessor_Access;

   procedure Initialize (This : in out SWTRunnableProcessor'Class);
   function Create return SWTRunnableProcessor_Access;
   function getInstance return SWTRunnableProcessor_Access;
   procedure process (This : in out SWTRunnableProcessor; display_Param : access Display_Package.Display'Class);

end org.allbinary.emulator.swt.SWTRunnableProcessor_Package;


