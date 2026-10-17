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
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.apache.commons.lang3.StringUtils_Package; use org.apache.commons.lang3.StringUtils_Package;
with org.w3c.dom.Attr_Package; use org.w3c.dom.Attr_Package;
with org.w3c.dom.NamedNodeMap_Package; use org.w3c.dom.NamedNodeMap_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.business.category.CategoryUtil_Package is

   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringUtils_Package renames org.apache.commons.lang3.StringUtils_Package;
   package Attr_Package renames org.w3c.dom.Attr_Package;
   package NamedNodeMap_Package renames org.w3c.dom.NamedNodeMap_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type CategoryUtil is tagged;
   type CategoryUtil_Access is access all CategoryUtil'Class;
   type CategoryUtil_Access_Array is array (Natural range <>) of CategoryUtil_Access;
   type CategoryUtil_Access_Array_Access is access all CategoryUtil_Access_Array;

   type CategoryUtil is new Java_Object with null record;

   procedure Initialize (This : in out CategoryUtil'Class);
   function Create return CategoryUtil_Access;
   function getPathLevel (categoryPath : AbPath_Access) return Integer;
   procedure getPathLevel (categoryPath : AbPath_Access);
   function getNameFromNode (node : Node_Access) return Unbounded_String;
   procedure getNameFromNode (node : Node_Access);

end org.allbinary.business.category.CategoryUtil_Package;


