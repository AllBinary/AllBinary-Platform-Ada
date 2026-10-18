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
with org.allbinary.logic.control.workflow.WorkFlowInterface_Package; use org.allbinary.logic.control.workflow.WorkFlowInterface_Package;

package org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
   package WorkFlowInterface_Package renames Standard.org.allbinary.logic.control.workflow.WorkFlowInterface_Package;

   type WorkFlowEntityInterface is interface and BasicDataTableInterface;
   type WorkFlowEntityInterface_Access is access all WorkFlowEntityInterface'Class;
   type WorkFlowEntityInterface_Access_Array is array (Natural range <>) of WorkFlowEntityInterface_Access;
   type WorkFlowEntityInterface_Access_Array_Access is access all WorkFlowEntityInterface_Access_Array;
   type WorkFlowEntityInterface_Access_Array_Access_Array is array (Natural range <>) of WorkFlowEntityInterface_Access_Array_Access;
   type WorkFlowEntityInterface_Access_Array_Access_Array_Access is access all WorkFlowEntityInterface_Access_Array_Access_Array;
   function get (This : in out WorkFlowEntityInterface; storeName : Unbounded_String) return BasicArrayList_Access is abstract;
   function get (This : in out WorkFlowEntityInterface; name : Unbounded_String; storeName : Unbounded_String) return WorkFlowInterface_Access is abstract;
   procedure delete (This : in out WorkFlowEntityInterface; name : Unbounded_String; storeName : Unbounded_String) is abstract;
   procedure insert (This : in out WorkFlowEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;
   procedure update (This : in out WorkFlowEntityInterface; updatedValues_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.workflow.WorkFlowEntityInterface_Package;


