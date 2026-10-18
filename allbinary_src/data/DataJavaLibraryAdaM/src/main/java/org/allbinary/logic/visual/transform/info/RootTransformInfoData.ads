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

package org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package is


   type RootTransformInfoData is tagged;
   type RootTransformInfoData_Access is access all RootTransformInfoData'Class;
   type RootTransformInfoData_Access_Array is array (Natural range <>) of RootTransformInfoData_Access;
   type RootTransformInfoData_Access_Array_Access is access all RootTransformInfoData_Access_Array;
   type RootTransformInfoData_Access_Array_Access_Array is array (Natural range <>) of RootTransformInfoData_Access_Array_Access;
   type RootTransformInfoData_Access_Array_Access_Array_Access is access all RootTransformInfoData_Access_Array_Access_Array;

   type RootTransformInfoData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out RootTransformInfoData'Class);
   function Create return RootTransformInfoData_Access;

end org.allbinary.logic.visual.transform.info.RootTransformInfoData_Package;


