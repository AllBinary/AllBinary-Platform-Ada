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

limited with org.allbinary.business.category.CategoryUtil_Package;
package org.allbinary.business.category.CategoryUtil_Package_References is
   type CategoryUtil_Access is access all org.allbinary.business.category.CategoryUtil_Package.CategoryUtil'Class;
   type CategoryUtil_Access_Array is array (Natural range <>) of CategoryUtil_Access;
   type CategoryUtil_Access_Array_Access is access all CategoryUtil_Access_Array;
   type CategoryUtil_Access_Array_Access_Array is array (Natural range <>) of CategoryUtil_Access_Array_Access;
   type CategoryUtil_Access_Array_Access_Array_Access is access all CategoryUtil_Access_Array_Access_Array;
end org.allbinary.business.category.CategoryUtil_Package_References;

with org.allbinary.business.category.CategoryUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.business.category.CategoryUtil_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CategoryUtil_Access is org.allbinary.business.category.CategoryUtil_Package_References.CategoryUtil_Access;
   function "=" (Left, Right : CategoryUtil_Access) return Boolean renames org.allbinary.business.category.CategoryUtil_Package_References."=";
   subtype CategoryUtil_Access_Array is org.allbinary.business.category.CategoryUtil_Package_References.CategoryUtil_Access_Array;
   function "=" (Left, Right : CategoryUtil_Access_Array) return Boolean renames org.allbinary.business.category.CategoryUtil_Package_References."=";
   subtype CategoryUtil_Access_Array_Access is org.allbinary.business.category.CategoryUtil_Package_References.CategoryUtil_Access_Array_Access;
   function "=" (Left, Right : CategoryUtil_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryUtil_Package_References."=";
   subtype CategoryUtil_Access_Array_Access_Array is org.allbinary.business.category.CategoryUtil_Package_References.CategoryUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryUtil_Package_References."=";
   subtype CategoryUtil_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryUtil_Package_References.CategoryUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryUtil_Package_References."=";

   type CategoryUtil is new Java_Object with null record;

   procedure Initialize (This : in out CategoryUtil'Class);
   function Create return CategoryUtil_Access;
   function getPathLevel (categoryPath_Param : access AbPath_Package.AbPath'Class) return Integer;
   procedure getPathLevel (categoryPath_Param : access AbPath_Package.AbPath'Class);
   function getNameFromNode (node_Param : access Node_Package.Node'Class) return Unbounded_String;
   procedure getNameFromNode (node_Param : access Node_Package.Node'Class);

end org.allbinary.business.category.CategoryUtil_Package;


