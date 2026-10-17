-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
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

package org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type IdGeneratorEntityInterface is interface and BasicDataTableInterface;
   type IdGeneratorEntityInterface_Access is access all IdGeneratorEntityInterface'Class;
   type IdGeneratorEntityInterface_Access_Array is array (Natural range <>) of IdGeneratorEntityInterface_Access;
   type IdGeneratorEntityInterface_Access_Array_Access is access all IdGeneratorEntityInterface_Access_Array;
   function get (This : in out IdGeneratorEntityInterface; name : Unbounded_String) return Long_Long_Integer is abstract;
   procedure deleteWhere (This : in out IdGeneratorEntityInterface; key : Unbounded_String; value : Unbounded_String) is abstract;
   procedure insert (This : in out IdGeneratorEntityInterface; values_Param : access BasicArrayList'Class) is abstract;
   procedure update (This : in out IdGeneratorEntityInterface; updatedValues_Param : access HashMap'Class) is abstract;

end org.allbinary.data.tables.generator.IdGeneratorEntityInterface_Package;


