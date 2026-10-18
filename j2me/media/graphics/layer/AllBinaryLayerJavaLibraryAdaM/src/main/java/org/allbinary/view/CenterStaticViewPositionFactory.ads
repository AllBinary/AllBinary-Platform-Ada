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
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package org.allbinary.view.CenterStaticViewPositionFactory_Package is


   type CenterStaticViewPositionFactory is tagged;
   type CenterStaticViewPositionFactory_Access is access all CenterStaticViewPositionFactory'Class;
   type CenterStaticViewPositionFactory_Access_Array is array (Natural range <>) of CenterStaticViewPositionFactory_Access;
   type CenterStaticViewPositionFactory_Access_Array_Access is access all CenterStaticViewPositionFactory_Access_Array;
   type CenterStaticViewPositionFactory_Access_Array_Access_Array is array (Natural range <>) of CenterStaticViewPositionFactory_Access_Array_Access;
   type CenterStaticViewPositionFactory_Access_Array_Access_Array_Access is access all CenterStaticViewPositionFactory_Access_Array_Access_Array;

   type CenterStaticViewPositionFactory is new Java_Object with null record;

   procedure Initialize (This : in out CenterStaticViewPositionFactory'Class);
   function Create return CenterStaticViewPositionFactory_Access;
   function getInstance (This : in out CenterStaticViewPositionFactory; z : Integer) return ViewPositionBase_Access;
   procedure getInstance (This : in out CenterStaticViewPositionFactory; z : Integer);

end org.allbinary.view.CenterStaticViewPositionFactory_Package;


