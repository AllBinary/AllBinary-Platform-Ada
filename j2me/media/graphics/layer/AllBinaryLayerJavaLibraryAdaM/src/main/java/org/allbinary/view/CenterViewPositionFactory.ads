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
with org.allbinary.view.CenterStaticViewPositionFactory_Package; use org.allbinary.view.CenterStaticViewPositionFactory_Package;

package org.allbinary.view.CenterViewPositionFactory_Package is


   type CenterViewPositionFactory is tagged;
   type CenterViewPositionFactory_Access is access all CenterViewPositionFactory'Class;
   type CenterViewPositionFactory_Access_Array is array (Natural range <>) of CenterViewPositionFactory_Access;
   type CenterViewPositionFactory_Access_Array_Access is access all CenterViewPositionFactory_Access_Array;
   type CenterViewPositionFactory_Access_Array_Access_Array is array (Natural range <>) of CenterViewPositionFactory_Access_Array_Access;
   type CenterViewPositionFactory_Access_Array_Access_Array_Access is access all CenterViewPositionFactory_Access_Array_Access_Array;

   type CenterViewPositionFactory is new CenterStaticViewPositionFactory with null record;

   procedure Initialize (This : in out CenterViewPositionFactory'Class);
   function Create return CenterViewPositionFactory_Access;

end org.allbinary.view.CenterViewPositionFactory_Package;


