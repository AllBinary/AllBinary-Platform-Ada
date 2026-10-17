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

package org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package is


   type TransformInfoTemplateData is tagged;
   type TransformInfoTemplateData_Access is access all TransformInfoTemplateData'Class;
   type TransformInfoTemplateData_Access_Array is array (Natural range <>) of TransformInfoTemplateData_Access;
   type TransformInfoTemplateData_Access_Array_Access is access all TransformInfoTemplateData_Access_Array;

   type TransformInfoTemplateData is new Java_Object with record
      UNCRYPTED_EXTENSION : Unbounded_String;
      ENCRYPTED_EXTENSION : Unbounded_String;
   end record;
   instance : TransformInfoTemplateData_Access;

   procedure Initialize (This : in out TransformInfoTemplateData'Class);
   function Create return TransformInfoTemplateData_Access;
   function getInstance return TransformInfoTemplateData_Access;
   procedure getInstance;

end org.allbinary.logic.visual.transform.info.template.TransformInfoTemplateData_Package;


