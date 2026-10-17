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
with org.allbinary.business.init.Exception_Package; use org.allbinary.business.init.Exception_Package;

package org.allbinary.business.init.InitException_Package is


   type InitException is tagged;
   type InitException_Access is access all InitException'Class;
   type InitException_Access_Array is array (Natural range <>) of InitException_Access;
   type InitException_Access_Array_Access is access all InitException_Access_Array;

   type InitException is new Exception with null record;

   procedure Initialize (This : in out InitException'Class);
   function Create return InitException_Access;
   procedure Initialize (This : in out InitException'Class; msg : Unbounded_String);
   function Create (msg : Unbounded_String) return InitException_Access;

end org.allbinary.business.init.InitException_Package;


