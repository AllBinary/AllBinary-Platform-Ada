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
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryUtil_Package; use org.allbinary.business.category.CategoryUtil_Package;
with org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package; use org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.category.properties.CategoryPropertiesInterface_Package; use org.allbinary.business.category.properties.CategoryPropertiesInterface_Package;

package org.allbinary.business.category.properties.CategoryProperties_Package is

   package CategoryData_Package renames org.allbinary.business.category.CategoryData_Package;
   package CategoryInterface_Package renames org.allbinary.business.category.CategoryInterface_Package;
   package CategoryUtil_Package renames org.allbinary.business.category.CategoryUtil_Package;
   package CategoryHierarchyInterface_Package renames org.allbinary.business.category.hierarchy.CategoryHierarchyInterface_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlData_Package renames org.allbinary.logic.communication.sql.AbSqlData_Package;
   package AbPath_Package renames org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type CategoryProperties is tagged;
   type CategoryProperties_Access is access all CategoryProperties'Class;
   type CategoryProperties_Access_Array is array (Natural range <>) of CategoryProperties_Access;
   type CategoryProperties_Access_Array_Access is access all CategoryProperties_Access_Array;

   type CategoryProperties is new CategoryPropertiesInterface with record
      logUtil : LogUtil_Access;
      category : Unbounded_String;
   end record;
   MAXDEPTH : Integer;

   procedure Initialize (This : in out CategoryProperties'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CategoryProperties_Access;
   function isRealRoot (This : in out CategoryProperties) return Boolean;
   procedure isRealRoot (This : in out CategoryProperties);
   function isRoot (This : in out CategoryProperties) return Boolean;
   procedure isRoot (This : in out CategoryProperties);
   function getKey (This : in out CategoryProperties) return Java_Object_Access;
   procedure getKey (This : in out CategoryProperties);
   function getValue (This : in out CategoryProperties) return Unbounded_String;
   procedure getValue (This : in out CategoryProperties);
   function getPath (This : in out CategoryProperties; categoryHierarchyInterface : CategoryHierarchyInterface_Access) return AbPath_Access;
   procedure getPath (This : in out CategoryProperties; categoryHierarchyInterface : CategoryHierarchyInterface_Access);
   function getFileName (This : in out CategoryProperties) return Unbounded_String;
   procedure getFileName (This : in out CategoryProperties);
   function getWebAppPath (This : in out CategoryProperties) return AbPath_Access;
   procedure getWebAppPath (This : in out CategoryProperties);
   procedure setValue (This : in out CategoryProperties; value : Unbounded_String);
   function isValid (This : in out CategoryProperties) return Boolean;
   procedure isValid (This : in out CategoryProperties);
   function toHashMap (This : in out CategoryProperties) return HashMap_Access;
   procedure toHashMap (This : in out CategoryProperties);
   function toVector (This : in out CategoryProperties) return BasicArrayList_Access;
   procedure toVector (This : in out CategoryProperties);
   function toValidationInfoDoc (This : in out CategoryProperties) return Document_Access;
   procedure toValidationInfoDoc (This : in out CategoryProperties);
   function toValidationInfoNode (This : in out CategoryProperties; document : Document_Access) return Node_Access;
   procedure toValidationInfoNode (This : in out CategoryProperties; document : Document_Access);
   function validationInfo (This : in out CategoryProperties) return Unbounded_String;
   procedure validationInfo (This : in out CategoryProperties);

end org.allbinary.business.category.properties.CategoryProperties_Package;


