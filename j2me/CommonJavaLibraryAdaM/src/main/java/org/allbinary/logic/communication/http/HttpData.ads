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
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.logic.communication.http.HttpData_Package is

   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type HttpData is tagged;
   type HttpData_Access is access all HttpData'Class;
   type HttpData_Access_Array is array (Natural range <>) of HttpData_Access;
   type HttpData_Access_Array_Access is access all HttpData_Access_Array;

   type HttpData is new Java_Object with record
      EQUALS : Unbounded_String;
      PARAM_SEP : Unbounded_String;
      URL_PARAM_SEP : Unbounded_String;
      URL_LABEL : Unbounded_String;
   end record;
   instance : HttpData_Access;

   procedure Initialize (This : in out HttpData'Class);
   function Create return HttpData_Access;
   function getInstance return HttpData_Access;
   procedure getInstance;

end org.allbinary.logic.communication.http.HttpData_Package;


