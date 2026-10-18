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
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.data.tables.transform.info.TransformInfoEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type TransformInfoEntityInterface is interface and BasicDataTableInterface;
   type TransformInfoEntityInterface_Access is access all TransformInfoEntityInterface'Class;
   type TransformInfoEntityInterface_Access_Array is array (Natural range <>) of TransformInfoEntityInterface_Access;
   type TransformInfoEntityInterface_Access_Array_Access is access all TransformInfoEntityInterface_Access_Array;
   type TransformInfoEntityInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoEntityInterface_Access_Array_Access;
   type TransformInfoEntityInterface_Access_Array_Access_Array_Access is access all TransformInfoEntityInterface_Access_Array_Access_Array;
   function get (This : in out TransformInfoEntityInterface; name : Unbounded_String; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access is abstract;
   function getObjectConfigs (This : in out TransformInfoEntityInterface; storeName : Unbounded_String) return BasicArrayList_Access is abstract;
   function getNames (This : in out TransformInfoEntityInterface; storeName : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure delete (This : in out TransformInfoEntityInterface; name : Unbounded_String) is abstract;
   procedure insert (This : in out TransformInfoEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out TransformInfoEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.transform.info.TransformInfoEntityInterface_Package;


