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
with org.allbinary.emulator.swt.SWTProcessor_Package; use org.allbinary.emulator.swt.SWTProcessor_Package;

package org.allbinary.emulator.swt.SWTProcessorUtil_Package is


   type SWTProcessorUtil is tagged;
   type SWTProcessorUtil_Access is access all SWTProcessorUtil'Class;
   type SWTProcessorUtil_Access_Array is array (Natural range <>) of SWTProcessorUtil_Access;
   type SWTProcessorUtil_Access_Array_Access is access all SWTProcessorUtil_Access_Array;

   type SWTProcessorUtil is new Java_Object with record
      swtProcessor : SWTProcessor_Access;
   end record;
   instance : SWTProcessorUtil_Access;

   procedure Initialize (This : in out SWTProcessorUtil'Class);
   function Create return SWTProcessorUtil_Access;
   function getInstance return SWTProcessorUtil_Access;

end org.allbinary.emulator.swt.SWTProcessorUtil_Package;


