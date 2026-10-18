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

package org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package is


   type TransformInfoObjectConfigData is tagged;
   type TransformInfoObjectConfigData_Access is access all TransformInfoObjectConfigData'Class;
   type TransformInfoObjectConfigData_Access_Array is array (Natural range <>) of TransformInfoObjectConfigData_Access;
   type TransformInfoObjectConfigData_Access_Array_Access is access all TransformInfoObjectConfigData_Access_Array;
   type TransformInfoObjectConfigData_Access_Array_Access_Array is array (Natural range <>) of TransformInfoObjectConfigData_Access_Array_Access;
   type TransformInfoObjectConfigData_Access_Array_Access_Array_Access is access all TransformInfoObjectConfigData_Access_Array_Access_Array;

   type TransformInfoObjectConfigData is new Java_Object with record
      NAME : Unbounded_String;
      VARKEY : Unbounded_String;
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : TransformInfoObjectConfigData_Access;

   procedure Initialize (This : in out TransformInfoObjectConfigData'Class);
   function Create return TransformInfoObjectConfigData_Access;
   function getInstance return TransformInfoObjectConfigData_Access;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigData_Package;


