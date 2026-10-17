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

package admin.tags.AbTagData_Package is


   type AbTagData is tagged;
   type AbTagData_Access is access all AbTagData'Class;
   type AbTagData_Access_Array is array (Natural range <>) of AbTagData_Access;
   type AbTagData_Access_Array_Access is access all AbTagData_Access_Array;

   type AbTagData is new Java_Object with null record;
   PARENT : Unbounded_String;

   procedure Initialize (This : in out AbTagData'Class);
   function Create return AbTagData_Access;

end admin.tags.AbTagData_Package;


