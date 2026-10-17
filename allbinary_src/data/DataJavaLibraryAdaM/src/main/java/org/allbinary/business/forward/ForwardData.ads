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

package org.allbinary.business.forward.ForwardData_Package is


   type ForwardData is tagged;
   type ForwardData_Access is access all ForwardData'Class;
   type ForwardData_Access_Array is array (Natural range <>) of ForwardData_Access;
   type ForwardData_Access_Array_Access is access all ForwardData_Access_Array;

   type ForwardData is new Java_Object with record
      PAGE : Unbounded_String;
      NAME : Unbounded_String;
      VALUE : Unbounded_String;
   end record;
   instance : ForwardData_Access;

   procedure Initialize (This : in out ForwardData'Class);
   function Create return ForwardData_Access;
   function getInstance return ForwardData_Access;

end org.allbinary.business.forward.ForwardData_Package;


