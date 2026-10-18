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

package org.allbinary.logic.system.security.licensing.AbeClientInformationData_Package is


   type AbeClientInformationData is tagged;
   type AbeClientInformationData_Access is access all AbeClientInformationData'Class;
   type AbeClientInformationData_Access_Array is array (Natural range <>) of AbeClientInformationData_Access;
   type AbeClientInformationData_Access_Array_Access is access all AbeClientInformationData_Access_Array;
   type AbeClientInformationData_Access_Array_Access_Array is array (Natural range <>) of AbeClientInformationData_Access_Array_Access;
   type AbeClientInformationData_Access_Array_Access_Array_Access is access all AbeClientInformationData_Access_Array_Access_Array;

   type AbeClientInformationData is new Java_Object with record
      KEY : Unbounded_String;
      NAME : Unbounded_String;
      VERSION : Unbounded_String;
      SPECIALNAME : Unbounded_String;
      LICENSEID : Unbounded_String;
      LICENSE_TYPE : Unbounded_String;
      PREVIOUSLICENSEID : Unbounded_String;
      OSNAME : Unbounded_String;
      OSARCH : Unbounded_String;
      OSVERSION : Unbounded_String;
      OS : Unbounded_String;
      HARDWARE : Unbounded_String;
      LICENSESERVERS : Unbounded_String;
      NEWLICENSE : Unbounded_String;
      ISNEW : Unbounded_String;
      SPECIAL : Unbounded_String;
   end record;
   instance : AbeClientInformationData_Access;

   procedure Initialize (This : in out AbeClientInformationData'Class);
   function Create return AbeClientInformationData_Access;
   function getInstance return AbeClientInformationData_Access;

end org.allbinary.logic.system.security.licensing.AbeClientInformationData_Package;


