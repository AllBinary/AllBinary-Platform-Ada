-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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

package org.allbinary.TsUtil_Package is


   type TsUtil is tagged;
   type TsUtil_Access is access all TsUtil'Class;
   type TsUtil_Access_Array is array (Natural range <>) of TsUtil_Access;
   type TsUtil_Access_Array_Access is access all TsUtil_Access_Array;

   type TsUtil is new Java_Object with null record;
   instance : TsUtil_Access;

   procedure Initialize (This : in out TsUtil'Class);
   function Create return TsUtil_Access;
   function getInstance return TsUtil_Access;
   function hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class) return Integer;
   procedure hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class);
   procedure waitFor (This : in out TsUtil; any_Param : access Java_Object'Class; timeoutMillis : Long_Long_Integer);

end org.allbinary.TsUtil_Package;


