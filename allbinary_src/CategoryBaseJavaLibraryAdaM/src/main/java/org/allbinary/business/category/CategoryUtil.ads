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
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.CategoryUtil_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CategoryUtil is tagged;
   type CategoryUtil_Access is access all CategoryUtil'Class;
   type CategoryUtil_Access_Array is array (Natural range <>) of CategoryUtil_Access;
   type CategoryUtil_Access_Array_Access is access all CategoryUtil_Access_Array;
   type CategoryUtil_Access_Array_Access_Array is array (Natural range <>) of CategoryUtil_Access_Array_Access;
   type CategoryUtil_Access_Array_Access_Array_Access is access all CategoryUtil_Access_Array_Access_Array;

   type CategoryUtil is new Java_Object with null record;

   procedure Initialize (This : in out CategoryUtil'Class);
   function Create return CategoryUtil_Access;
   function getPathLevel (categoryPath_Param : access AbPath_Package.AbPath'Class) return Integer;
   procedure getPathLevel (categoryPath_Param : access AbPath_Package.AbPath'Class);
   function getNameFromNode (node_Param : access Node_Package.Node'Class) return Unbounded_String;
   procedure getNameFromNode (node_Param : access Node_Package.Node'Class);

end org.allbinary.business.category.CategoryUtil_Package;


