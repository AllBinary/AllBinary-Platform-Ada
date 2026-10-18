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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.input.automation.module.generic_Id.CaptureWorkerUtil_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type CaptureWorkerUtil is tagged;
   type CaptureWorkerUtil_Access is access all CaptureWorkerUtil'Class;
   type CaptureWorkerUtil_Access_Array is array (Natural range <>) of CaptureWorkerUtil_Access;
   type CaptureWorkerUtil_Access_Array_Access is access all CaptureWorkerUtil_Access_Array;
   type CaptureWorkerUtil_Access_Array_Access_Array is array (Natural range <>) of CaptureWorkerUtil_Access_Array_Access;
   type CaptureWorkerUtil_Access_Array_Access_Array_Access is access all CaptureWorkerUtil_Access_Array_Access_Array;

   type CaptureWorkerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out CaptureWorkerUtil'Class);
   function Create return CaptureWorkerUtil_Access;
   procedure processProfileActionConditions (vector_Param : access BasicArrayList_Package.BasicArrayList'Class; frame : Long_Long_Integer);

end org.allbinary.input.automation.module.generic_Id.CaptureWorkerUtil_Package;


