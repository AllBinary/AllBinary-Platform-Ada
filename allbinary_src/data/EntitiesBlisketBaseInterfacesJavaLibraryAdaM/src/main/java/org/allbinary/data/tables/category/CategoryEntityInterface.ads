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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.category.CategoryEntityInterface_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package BasicDataTableInterface_Package renames org.allbinary.data.tables.BasicDataTableInterface_Package;

   type CategoryEntityInterface is interface and BasicDataTableInterface;
   type CategoryEntityInterface_Access is access all CategoryEntityInterface'Class;
   type CategoryEntityInterface_Access_Array is array (Natural range <>) of CategoryEntityInterface_Access;
   type CategoryEntityInterface_Access_Array_Access is access all CategoryEntityInterface_Access_Array;
   procedure delete (This : in out CategoryEntityInterface; value : Unbounded_String) is abstract;
   procedure insert (This : in out CategoryEntityInterface; values : BasicArrayList_Access) is abstract;
   procedure update (This : in out CategoryEntityInterface; updatedValues : HashMap_Access) is abstract;

end org.allbinary.data.tables.category.CategoryEntityInterface_Package;


