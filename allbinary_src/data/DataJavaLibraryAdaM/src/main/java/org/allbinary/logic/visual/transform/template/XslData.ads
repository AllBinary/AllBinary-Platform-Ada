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

package org.allbinary.logic.visual.transform.template.XslData_Package is


   type XslData is tagged;
   type XslData_Access is access all XslData'Class;
   type XslData_Access_Array is array (Natural range <>) of XslData_Access;
   type XslData_Access_Array_Access is access all XslData_Access_Array;
   type XslData_Access_Array_Access_Array is array (Natural range <>) of XslData_Access_Array_Access;
   type XslData_Access_Array_Access_Array_Access is access all XslData_Access_Array_Access_Array;

   type XslData is new Java_Object with record
      NAME : Unbounded_String;
      ROOT_IMPORT_URI : Unbounded_String;
   end record;
   instance : XslData_Access;

   procedure Initialize (This : in out XslData'Class);
   function Create return XslData_Access;
   function getInstance return XslData_Access;

end org.allbinary.logic.visual.transform.template.XslData_Package;


