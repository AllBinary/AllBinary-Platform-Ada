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
with org.allbinary.logic.system.security.licensing.AbeClientInformation_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformation_Package;

package org.allbinary.logic.system.security.licensing.TestClientInformation_Package is


   type TestClientInformation is tagged;
   type TestClientInformation_Access is access all TestClientInformation'Class;
   type TestClientInformation_Access_Array is array (Natural range <>) of TestClientInformation_Access;
   type TestClientInformation_Access_Array_Access is access all TestClientInformation_Access_Array;

   type TestClientInformation is new AbeClientInformation with null record;

   procedure Initialize (This : in out TestClientInformation'Class);
   function Create return TestClientInformation_Access;

end org.allbinary.logic.system.security.licensing.TestClientInformation_Package;


