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
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package org.allbinary.view.ViewPositionFactory_Package is


   type ViewPositionFactory is tagged;
   type ViewPositionFactory_Access is access all ViewPositionFactory'Class;
   type ViewPositionFactory_Access_Array is array (Natural range <>) of ViewPositionFactory_Access;
   type ViewPositionFactory_Access_Array_Access is access all ViewPositionFactory_Access_Array;
   type ViewPositionFactory_Access_Array_Access_Array is array (Natural range <>) of ViewPositionFactory_Access_Array_Access;
   type ViewPositionFactory_Access_Array_Access_Array_Access is access all ViewPositionFactory_Access_Array_Access_Array;

   type ViewPositionFactory is new Java_Object and ViewPositionFactoryInterface with null record;

   procedure Initialize (This : in out ViewPositionFactory'Class);
   function Create return ViewPositionFactory_Access;
   function getInstance (This : in out ViewPositionFactory) return ViewPositionBase_Access;

end org.allbinary.view.ViewPositionFactory_Package;


