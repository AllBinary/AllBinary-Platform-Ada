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

with AllBinary_Java;
limited with org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package;
package org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References is
   type CssElementView_Access is access all org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package.CssElementView'Class;
   type CssElementView_Access_Array is array (Natural range <>) of CssElementView_Access;
   type CssElementView_Access_Array_Access is access all CssElementView_Access_Array;
   type CssElementView_Access_Array_Access_Array is array (Natural range <>) of CssElementView_Access_Array_Access;
   type CssElementView_Access_Array_Access_Array_Access is access all CssElementView_Access_Array_Access_Array;
   type CssElementView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssElementView_Access_Array_Access;
   end record;
   function Java_Box (Value : CssElementView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssElementView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssElementView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssElementView_Access_Array_Access is (if Value /= null and then Value.all in CssElementView_Access_Array_Object'Class then CssElementView_Access_Array_Object'Class (Value.all).Value else null);
   type CssElementView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssElementView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CssElementView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssElementView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssElementView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssElementView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CssElementView_Access_Array_Access_Array_Object'Class then CssElementView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References;
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
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
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


   subtype CssElementView_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.CssElementView_Access;
   function "=" (Left, Right : CssElementView_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References."=";
   subtype CssElementView_Access_Array is org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.CssElementView_Access_Array;
   function "=" (Left, Right : CssElementView_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References."=";
   subtype CssElementView_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.CssElementView_Access_Array_Access;
   function "=" (Left, Right : CssElementView_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References."=";
   function Java_Box (Value : CssElementView_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.Java_Box;
   function Java_Unbox_CssElementView_Access_Array (Value : access Java_Object'Class) return CssElementView_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.Java_Unbox_CssElementView_Access_Array;
   subtype CssElementView_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.CssElementView_Access_Array_Access_Array;
   function "=" (Left, Right : CssElementView_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References."=";
   subtype CssElementView_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.CssElementView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CssElementView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References."=";
   function Java_Box (Value : CssElementView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.Java_Box;
   function Java_Unbox_CssElementView_Access_Array_Access_Array (Value : access Java_Object'Class) return CssElementView_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package_References.Java_Unbox_CssElementView_Access_Array_Access_Array;

   type CssElementView is new Java_Object and DomNodeInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      TITLE : Unbounded_String;
      DESCRIPTION : Unbounded_String;
      value : Unbounded_String;
      title_Case : Unbounded_String;
      description_Case : Unbounded_String;
      cssElementVector : BasicArrayList_Access;
      cssPropertyVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out CssElementView'Class);
   function Create return CssElementView_Access;
   procedure Initialize (This : in out CssElementView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return CssElementView_Access;
   function getValue (This : in out CssElementView) return Unbounded_String;
   function toHashMap (This : in out CssElementView) return HashMap_Access;
   function toXmlNode (This : in out CssElementView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out CssElementView; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package;


