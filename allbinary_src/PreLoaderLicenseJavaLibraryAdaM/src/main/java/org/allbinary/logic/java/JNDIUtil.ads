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

package org.allbinary.logic.java.JNDIUtil_Package is


   type JNDIUtil is tagged;
   type JNDIUtil_Access is access all JNDIUtil'Class;
   type JNDIUtil_Access_Array is array (Natural range <>) of JNDIUtil_Access;
   type JNDIUtil_Access_Array_Access is access all JNDIUtil_Access_Array;
   type JNDIUtil_Access_Array_Access_Array is array (Natural range <>) of JNDIUtil_Access_Array_Access;
   type JNDIUtil_Access_Array_Access_Array_Access is access all JNDIUtil_Access_Array_Access_Array;

   type JNDIUtil is new Java_Object with null record;

   procedure Initialize (This : in out JNDIUtil'Class);
   function Create return JNDIUtil_Access;

end org.allbinary.logic.java.JNDIUtil_Package;


