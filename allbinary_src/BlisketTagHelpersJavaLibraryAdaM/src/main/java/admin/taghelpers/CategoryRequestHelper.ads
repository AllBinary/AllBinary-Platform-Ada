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
--  with java.util.Set_Package; use java.util.Set_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.business.category.CategoryInterface_Package; use org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package; use org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.CategoryRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package CategoryLoaderInterface_Package renames Standard.org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CategoryRequestHelper is tagged;
   type CategoryRequestHelper_Access is access all CategoryRequestHelper'Class;
   type CategoryRequestHelper_Access_Array is array (Natural range <>) of CategoryRequestHelper_Access;
   type CategoryRequestHelper_Access_Array_Access is access all CategoryRequestHelper_Access_Array;
   type CategoryRequestHelper_Access_Array_Access_Array is array (Natural range <>) of CategoryRequestHelper_Access_Array_Access;
   type CategoryRequestHelper_Access_Array_Access_Array_Access is access all CategoryRequestHelper_Access_Array_Access_Array;

   type CategoryRequestHelper is new ModifyTable with record
      logUtil : LogUtil_Access;
      pageContext : PageContext_Access;
      hashMap : HashMap_Access;
      request : HttpServletRequest_Access;
      categoryLoaderInterface : CategoryLoaderInterface_Access;
      categoryInterface : CategoryInterface_Access;
      childCategoryInterface : CategoryInterface_Access;
      transformInfoInterface : TransformInfoInterface_Access;
   end record;
   categoryRequest : Unbounded_String;

   procedure Initialize (This : in out CategoryRequestHelper'Class; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return CategoryRequestHelper_Access;
   procedure getXmlData (This : in out CategoryRequestHelper);
   procedure setCategoryLoader (This : in out CategoryRequestHelper; requestNode_Param : access Node_Package.Node'Class);
   function insert (This : in out CategoryRequestHelper) return Unbounded_String;
   function delete (This : in out CategoryRequestHelper) return Unbounded_String;
   function viewCategory (This : in out CategoryRequestHelper) return Unbounded_String;
   function viewCategories (This : in out CategoryRequestHelper) return Unbounded_String;
   function update (This : in out CategoryRequestHelper) return Unbounded_String;

end admin.taghelpers.CategoryRequestHelper_Package;


