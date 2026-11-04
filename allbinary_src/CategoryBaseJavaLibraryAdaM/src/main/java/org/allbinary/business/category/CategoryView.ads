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

limited with org.allbinary.business.category.CategoryView_Package;
package org.allbinary.business.category.CategoryView_Package_References is
   type CategoryView_Access is access all org.allbinary.business.category.CategoryView_Package.CategoryView'Class;
   type CategoryView_Access_Array is array (Natural range <>) of CategoryView_Access;
   type CategoryView_Access_Array_Access is access all CategoryView_Access_Array;
   type CategoryView_Access_Array_Access_Array is array (Natural range <>) of CategoryView_Access_Array_Access;
   type CategoryView_Access_Array_Access_Array_Access is access all CategoryView_Access_Array_Access_Array;
end org.allbinary.business.category.CategoryView_Package_References;

with org.allbinary.business.category.CategoryView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.category.CategoryInterface_Package;
with org.allbinary.business.category.CategoryInterface_Package_References;

package org.allbinary.business.category.CategoryView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CategoryView_Access is org.allbinary.business.category.CategoryView_Package_References.CategoryView_Access;
   function "=" (Left, Right : CategoryView_Access) return Boolean renames org.allbinary.business.category.CategoryView_Package_References."=";
   subtype CategoryView_Access_Array is org.allbinary.business.category.CategoryView_Package_References.CategoryView_Access_Array;
   function "=" (Left, Right : CategoryView_Access_Array) return Boolean renames org.allbinary.business.category.CategoryView_Package_References."=";
   subtype CategoryView_Access_Array_Access is org.allbinary.business.category.CategoryView_Package_References.CategoryView_Access_Array_Access;
   function "=" (Left, Right : CategoryView_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryView_Package_References."=";
   subtype CategoryView_Access_Array_Access_Array is org.allbinary.business.category.CategoryView_Package_References.CategoryView_Access_Array_Access_Array;
   function "=" (Left, Right : CategoryView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.category.CategoryView_Package_References."=";
   subtype CategoryView_Access_Array_Access_Array_Access is org.allbinary.business.category.CategoryView_Package_References.CategoryView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CategoryView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.category.CategoryView_Package_References."=";

   type CategoryView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      categoryInterface : CategoryInterface_Access;
   end record;

   procedure Initialize (This : in out CategoryView'Class; categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class);
   function Create (categoryInterface_Param : access CategoryInterface_Package.CategoryInterface'Class) return CategoryView_Access;
   function getCategoryInterface (This : in out CategoryView) return CategoryInterface_Access;
   function toXmlNode (This : in out CategoryView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out CategoryView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.category.CategoryView_Package;


