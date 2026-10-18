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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.staticpages.StaticPagesEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type StaticPagesEntityInterface is interface and BasicDataTableInterface;
   type StaticPagesEntityInterface_Access is access all StaticPagesEntityInterface'Class;
   type StaticPagesEntityInterface_Access_Array is array (Natural range <>) of StaticPagesEntityInterface_Access;
   type StaticPagesEntityInterface_Access_Array_Access is access all StaticPagesEntityInterface_Access_Array;
   type StaticPagesEntityInterface_Access_Array_Access_Array is array (Natural range <>) of StaticPagesEntityInterface_Access_Array_Access;
   type StaticPagesEntityInterface_Access_Array_Access_Array_Access is access all StaticPagesEntityInterface_Access_Array_Access_Array;
   function getFile (This : in out StaticPagesEntityInterface; store : Unbounded_String; keywords : Unbounded_String) return Unbounded_String is abstract;
   procedure delete (This : in out StaticPagesEntityInterface; value : Unbounded_String) is abstract;
   procedure insert (This : in out StaticPagesEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out StaticPagesEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.staticpages.StaticPagesEntityInterface_Package;


