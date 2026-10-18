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

package org.allbinary.logic.communication.log.TestRemoteLogUtil_Package is


   type TestRemoteLogUtil is tagged;
   type TestRemoteLogUtil_Access is access all TestRemoteLogUtil'Class;
   type TestRemoteLogUtil_Access_Array is array (Natural range <>) of TestRemoteLogUtil_Access;
   type TestRemoteLogUtil_Access_Array_Access is access all TestRemoteLogUtil_Access_Array;
   type TestRemoteLogUtil_Access_Array_Access_Array is array (Natural range <>) of TestRemoteLogUtil_Access_Array_Access;
   type TestRemoteLogUtil_Access_Array_Access_Array_Access is access all TestRemoteLogUtil_Access_Array_Access_Array;

   type TestRemoteLogUtil is new Java_Object with null record;
   PATH : Unbounded_String;

   procedure Initialize (This : in out TestRemoteLogUtil'Class);
   function Create return TestRemoteLogUtil_Access;
   procedure main (args : Unbounded_String_Array_Access);

end org.allbinary.logic.communication.log.TestRemoteLogUtil_Package;


