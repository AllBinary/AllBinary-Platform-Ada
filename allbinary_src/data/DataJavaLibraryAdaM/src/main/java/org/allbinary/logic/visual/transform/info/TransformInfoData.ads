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

package org.allbinary.logic.visual.transform.info.TransformInfoData_Package is


   type TransformInfoData is tagged;
   type TransformInfoData_Access is access all TransformInfoData'Class;
   type TransformInfoData_Access_Array is array (Natural range <>) of TransformInfoData_Access;
   type TransformInfoData_Access_Array_Access is access all TransformInfoData_Access_Array;

   type TransformInfoData is new Java_Object with record
      PARENT : Unbounded_String;
      MAPPED : Unbounded_String;
      NAME : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      CATEGORY : Unbounded_String;
      OBJECTFILENAME : Unbounded_String;
      OBJECT : Unbounded_String;
      OBJECTCONFIGFILENAME : Unbounded_String;
      OBJECTCONFIG : Unbounded_String;
      TEMPLATEFILENAME : Unbounded_String;
      TEMPLATE : Unbounded_String;
      DATAFILENAME : Unbounded_String;
      DATA : Unbounded_String;
      LABEL : Unbounded_String;
      OWNER : Unbounded_String;
      PARTIAL : Unbounded_String;
   end record;
   instance : TransformInfoData_Access;

   procedure Initialize (This : in out TransformInfoData'Class);
   function Create return TransformInfoData_Access;
   function getInstance return TransformInfoData_Access;

end org.allbinary.logic.visual.transform.info.TransformInfoData_Package;


