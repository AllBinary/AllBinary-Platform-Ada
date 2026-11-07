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

limited with admin.taghelpers.CategoryRequestHelper_Package;
package admin.taghelpers.CategoryRequestHelper_Package_References is
   type CategoryRequestHelper_Access is access all admin.taghelpers.CategoryRequestHelper_Package.CategoryRequestHelper'Class;
   type CategoryRequestHelper_Access_Array is array (Natural range <>) of CategoryRequestHelper_Access;
   type CategoryRequestHelper_Access_Array_Access is access all CategoryRequestHelper_Access_Array;
   type CategoryRequestHelper_Access_Array_Access_Array is array (Natural range <>) of CategoryRequestHelper_Access_Array_Access;
   type CategoryRequestHelper_Access_Array_Access_Array_Access is access all CategoryRequestHelper_Access_Array_Access_Array;
end admin.taghelpers.CategoryRequestHelper_Package_References;

with admin.taghelpers.CategoryRequestHelper_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;
limited with org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
with org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with admin.taghelpers.ModifyTable_Package; use admin.taghelpers.ModifyTable_Package;

package admin.taghelpers.CategoryRequestHelper_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package CategoryInterface_Package renames Standard.org.allbinary.business.category.CategoryInterface_Package;
   package CategoryLoaderInterface_Package renames Standard.org.allbinary.data.tree.category.CategoryLoaderInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype CategoryInterface_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access;
   use type CategoryInterface_Access;
   subtype CategoryInterface_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array;
   use type CategoryInterface_Access_Array;
   subtype CategoryInterface_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access;
   subtype CategoryInterface_Access_Array_Access_Array is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array;
   use type CategoryInterface_Access_Array_Access_Array;
   subtype CategoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryInterface_Package_References.CategoryInterface_Access_Array_Access_Array_Access;
   use type CategoryInterface_Access_Array_Access_Array_Access;
   subtype CategoryLoaderInterface_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access;
   use type CategoryLoaderInterface_Access;
   subtype CategoryLoaderInterface_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array;
   use type CategoryLoaderInterface_Access_Array;
   subtype CategoryLoaderInterface_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access;
   use type CategoryLoaderInterface_Access_Array_Access;
   subtype CategoryLoaderInterface_Access_Array_Access_Array is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array;
   use type CategoryLoaderInterface_Access_Array_Access_Array;
   subtype CategoryLoaderInterface_Access_Array_Access_Array_Access is org.allbinary.data.tree.category.CategoryLoaderInterface_Package_References.CategoryLoaderInterface_Access_Array_Access_Array_Access;
   use type CategoryLoaderInterface_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
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


   subtype CategoryRequestHelper_Access is admin.taghelpers.CategoryRequestHelper_Package_References.CategoryRequestHelper_Access;
   function "=" (Left, Right : CategoryRequestHelper_Access) return Boolean renames admin.taghelpers.CategoryRequestHelper_Package_References."=";
   subtype CategoryRequestHelper_Access_Array is admin.taghelpers.CategoryRequestHelper_Package_References.CategoryRequestHelper_Access_Array;
   function "=" (Left, Right : CategoryRequestHelper_Access_Array) return Boolean renames admin.taghelpers.CategoryRequestHelper_Package_References."=";
   subtype CategoryRequestHelper_Access_Array_Access is admin.taghelpers.CategoryRequestHelper_Package_References.CategoryRequestHelper_Access_Array_Access;
   function "=" (Left, Right : CategoryRequestHelper_Access_Array_Access) return Boolean renames admin.taghelpers.CategoryRequestHelper_Package_References."=";
   subtype CategoryRequestHelper_Access_Array_Access_Array is admin.taghelpers.CategoryRequestHelper_Package_References.CategoryRequestHelper_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryRequestHelper_Access_Array_Access_Array) return Boolean renames admin.taghelpers.CategoryRequestHelper_Package_References."=";
   subtype CategoryRequestHelper_Access_Array_Access_Array_Access is admin.taghelpers.CategoryRequestHelper_Package_References.CategoryRequestHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryRequestHelper_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.CategoryRequestHelper_Package_References."=";

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


