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

limited with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package;
package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References is
   type CssPropertyValues_Access is access all org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package.CssPropertyValues'Class;
   type CssPropertyValues_Access_Array is array (Natural range <>) of CssPropertyValues_Access;
   type CssPropertyValues_Access_Array_Access is access all CssPropertyValues_Access_Array;
   type CssPropertyValues_Access_Array_Access_Array is array (Natural range <>) of CssPropertyValues_Access_Array_Access;
   type CssPropertyValues_Access_Array_Access_Array_Access is access all CssPropertyValues_Access_Array_Access_Array;
end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CssPropertyValues_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References.CssPropertyValues_Access;
   function "=" (Left, Right : CssPropertyValues_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References."=";
   subtype CssPropertyValues_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References.CssPropertyValues_Access_Array;
   function "=" (Left, Right : CssPropertyValues_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References."=";
   subtype CssPropertyValues_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References.CssPropertyValues_Access_Array_Access;
   function "=" (Left, Right : CssPropertyValues_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References."=";
   subtype CssPropertyValues_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References.CssPropertyValues_Access_Array_Access_Array;
   function "=" (Left, Right : CssPropertyValues_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References."=";
   subtype CssPropertyValues_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References.CssPropertyValues_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CssPropertyValues_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package_References."=";

   type CssPropertyValues is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      propertyValueVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out CssPropertyValues'Class);
   function Create return CssPropertyValues_Access;
   procedure Initialize (This : in out CssPropertyValues'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return CssPropertyValues_Access;
   function toHashMap (This : in out CssPropertyValues) return HashMap_Access;
   function toXmlNode (This : in out CssPropertyValues; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out CssPropertyValues; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyValues_Package;


