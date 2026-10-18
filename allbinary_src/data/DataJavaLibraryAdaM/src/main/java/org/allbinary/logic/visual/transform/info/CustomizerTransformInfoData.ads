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

package org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package is


   type CustomizerTransformInfoData is tagged;
   type CustomizerTransformInfoData_Access is access all CustomizerTransformInfoData'Class;
   type CustomizerTransformInfoData_Access_Array is array (Natural range <>) of CustomizerTransformInfoData_Access;
   type CustomizerTransformInfoData_Access_Array_Access is access all CustomizerTransformInfoData_Access_Array;
   type CustomizerTransformInfoData_Access_Array_Access_Array is array (Natural range <>) of CustomizerTransformInfoData_Access_Array_Access;
   type CustomizerTransformInfoData_Access_Array_Access_Array_Access is access all CustomizerTransformInfoData_Access_Array_Access_Array;

   type CustomizerTransformInfoData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out CustomizerTransformInfoData'Class);
   function Create return CustomizerTransformInfoData_Access;

end org.allbinary.logic.visual.transform.info.CustomizerTransformInfoData_Package;


