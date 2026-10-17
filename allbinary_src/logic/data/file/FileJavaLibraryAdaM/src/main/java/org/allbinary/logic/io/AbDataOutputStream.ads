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
--  with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
--  with java.io.OutputStream_Package; use java.io.OutputStream_Package;

package org.allbinary.logic.io.AbDataOutputStream_Package is


   type AbDataOutputStream is tagged;
   type AbDataOutputStream_Access is access all AbDataOutputStream'Class;
   type AbDataOutputStream_Access_Array is array (Natural range <>) of AbDataOutputStream_Access;
   type AbDataOutputStream_Access_Array_Access is access all AbDataOutputStream_Access_Array;

   type AbDataOutputStream is new DataOutputStream with null record;

   procedure Initialize (This : in out AbDataOutputStream'Class; out_Id_Param : access OutputStream_Package.OutputStream'Class);
   function Create (out_Id_Param : access OutputStream_Package.OutputStream'Class) return AbDataOutputStream_Access;

end org.allbinary.logic.io.AbDataOutputStream_Package;


