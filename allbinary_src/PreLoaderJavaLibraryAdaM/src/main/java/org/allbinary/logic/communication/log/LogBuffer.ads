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
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.Log_Package; use org.allbinary.logic.communication.log.Log_Package;

package org.allbinary.logic.communication.log.LogBuffer_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type LogBuffer is tagged;
   type LogBuffer_Access is access all LogBuffer'Class;
   type LogBuffer_Access_Array is array (Natural range <>) of LogBuffer_Access;
   type LogBuffer_Access_Array_Access is access all LogBuffer_Access_Array;

   type LogBuffer is new Java_Object with record
      logUtil : LogUtil_Access;
      logEntryVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out LogBuffer'Class);
   function Create return LogBuffer_Access;
   procedure add (This : in out LogBuffer; log_Param : access Log_Package.Log'Class);
   procedure logAll (This : in out LogBuffer);

end org.allbinary.logic.communication.log.LogBuffer_Package;


