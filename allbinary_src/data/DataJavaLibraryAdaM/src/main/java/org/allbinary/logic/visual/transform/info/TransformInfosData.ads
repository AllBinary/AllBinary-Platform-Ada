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

package org.allbinary.logic.visual.transform.info.TransformInfosData_Package is


   type TransformInfosData is tagged;
   type TransformInfosData_Access is access all TransformInfosData'Class;
   type TransformInfosData_Access_Array is array (Natural range <>) of TransformInfosData_Access;
   type TransformInfosData_Access_Array_Access is access all TransformInfosData_Access_Array;
   type TransformInfosData_Access_Array_Access_Array is array (Natural range <>) of TransformInfosData_Access_Array_Access;
   type TransformInfosData_Access_Array_Access_Array_Access is access all TransformInfosData_Access_Array_Access_Array;

   type TransformInfosData is new Java_Object with record
      NAME : Unbounded_String;
      GROUP : Unbounded_String;
      ALL_Id : Unbounded_String;
      PREVIEW : Unbounded_String;
      SMALL_PREVIEW : Unbounded_String;
   end record;
   instance : TransformInfosData_Access;

   procedure Initialize (This : in out TransformInfosData'Class);
   function Create return TransformInfosData_Access;
   function getInstance return TransformInfosData_Access;

end org.allbinary.logic.visual.transform.info.TransformInfosData_Package;


