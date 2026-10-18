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

package admin.taghelpers.ModifyTableInterface_Package is


   type ModifyTableInterface is interface;
   type ModifyTableInterface_Access is access all ModifyTableInterface'Class;
   type ModifyTableInterface_Access_Array is array (Natural range <>) of ModifyTableInterface_Access;
   type ModifyTableInterface_Access_Array_Access is access all ModifyTableInterface_Access_Array;
   type ModifyTableInterface_Access_Array_Access_Array is array (Natural range <>) of ModifyTableInterface_Access_Array_Access;
   type ModifyTableInterface_Access_Array_Access_Array_Access is access all ModifyTableInterface_Access_Array_Access_Array;
   function insert (This : in out ModifyTableInterface) return Unbounded_String is abstract;
   function delete (This : in out ModifyTableInterface) return Unbounded_String is abstract;
   function update (This : in out ModifyTableInterface) return Unbounded_String is abstract;

end admin.taghelpers.ModifyTableInterface_Package;


