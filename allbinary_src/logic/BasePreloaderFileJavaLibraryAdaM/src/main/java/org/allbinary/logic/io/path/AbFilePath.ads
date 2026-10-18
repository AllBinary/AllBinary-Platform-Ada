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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.logic.io.path.AbFilePath_Package is


   type AbFilePath is tagged;
   type AbFilePath_Access is access all AbFilePath'Class;
   type AbFilePath_Access_Array is array (Natural range <>) of AbFilePath_Access;
   type AbFilePath_Access_Array_Access is access all AbFilePath_Access_Array;
   type AbFilePath_Access_Array_Access_Array is array (Natural range <>) of AbFilePath_Access_Array_Access;
   type AbFilePath_Access_Array_Access_Array_Access is access all AbFilePath_Access_Array_Access_Array;

   type AbFilePath is new AbPath with null record;

   procedure Initialize (This : in out AbFilePath'Class; aPath : Unbounded_String);
   function Create (aPath : Unbounded_String) return AbFilePath_Access;

end org.allbinary.logic.io.path.AbFilePath_Package;


