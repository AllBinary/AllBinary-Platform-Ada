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

package org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package is


   type ItemArraySingletonFactoryInterface is interface;
   type ItemArraySingletonFactoryInterface_Access is access all ItemArraySingletonFactoryInterface'Class;
   type ItemArraySingletonFactoryInterface_Access_Array is array (Natural range <>) of ItemArraySingletonFactoryInterface_Access;
   type ItemArraySingletonFactoryInterface_Access_Array_Access is access all ItemArraySingletonFactoryInterface_Access_Array;
   function getItems (This : in out ItemArraySingletonFactoryInterface) return ABCustomItem_Access_Array_Access is abstract;

end org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;


