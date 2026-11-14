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
limited with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;
package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References is
   type CssPropertyView_Access is access all org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package.CssPropertyView'Class;
   type CssPropertyView_Access_Array is array (Natural range <>) of CssPropertyView_Access;
   type CssPropertyView_Access_Array_Access is access all CssPropertyView_Access_Array;
   type CssPropertyView_Access_Array_Access_Array is array (Natural range <>) of CssPropertyView_Access_Array_Access;
   type CssPropertyView_Access_Array_Access_Array_Access is access all CssPropertyView_Access_Array_Access_Array;
   type CssPropertyView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssPropertyView_Access_Array_Access;
   end record;
   function Java_Box (Value : CssPropertyView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssPropertyView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssPropertyView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssPropertyView_Access_Array_Access is (if Value /= null and then Value.all in CssPropertyView_Access_Array_Object'Class then CssPropertyView_Access_Array_Object'Class (Value.all).Value else null);
   type CssPropertyView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CssPropertyView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CssPropertyView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CssPropertyView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CssPropertyView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CssPropertyView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CssPropertyView_Access_Array_Access_Array_Object'Class then CssPropertyView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References;

with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package_References;

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
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
   subtype CssProperty_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package_References.CssProperty_Access;
   use type CssProperty_Access;
   subtype CssProperty_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package_References.CssProperty_Access_Array;
   use type CssProperty_Access_Array;
   subtype CssProperty_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package_References.CssProperty_Access_Array_Access;
   use type CssProperty_Access_Array_Access;
   subtype CssProperty_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package_References.CssProperty_Access_Array_Access_Array;
   use type CssProperty_Access_Array_Access_Array;
   subtype CssProperty_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package_References.CssProperty_Access_Array_Access_Array_Access;
   use type CssProperty_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CssPropertyView_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.CssPropertyView_Access;
   function "=" (Left, Right : CssPropertyView_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References."=";
   subtype CssPropertyView_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.CssPropertyView_Access_Array;
   function "=" (Left, Right : CssPropertyView_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References."=";
   subtype CssPropertyView_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.CssPropertyView_Access_Array_Access;
   function "=" (Left, Right : CssPropertyView_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References."=";
   function Java_Box (Value : CssPropertyView_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.Java_Box;
   function Java_Unbox_CssPropertyView_Access_Array (Value : access Java_Object'Class) return CssPropertyView_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.Java_Unbox_CssPropertyView_Access_Array;
   subtype CssPropertyView_Access_Array_Access_Array is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.CssPropertyView_Access_Array_Access_Array;
   function "=" (Left, Right : CssPropertyView_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References."=";
   subtype CssPropertyView_Access_Array_Access_Array_Access is org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.CssPropertyView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CssPropertyView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References."=";
   function Java_Box (Value : CssPropertyView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.Java_Box;
   function Java_Unbox_CssPropertyView_Access_Array_Access_Array (Value : access Java_Object'Class) return CssPropertyView_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package_References.Java_Unbox_CssPropertyView_Access_Array_Access_Array;

   type CssPropertyView is new Java_Object and DomNodeInterface with record
      commonStrings : CommonStrings_Access;
      cssProperty : CssProperty_Access;
   end record;

   procedure Initialize (This : in out CssPropertyView'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CssPropertyView_Access;
   procedure Initialize (This : in out CssPropertyView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return CssPropertyView_Access;
   function getProperty (This : in out CssPropertyView) return CssProperty_Access;
   function toXmlNode (This : in out CssPropertyView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out CssPropertyView; document_Param : access Document_Package.Document'Class);

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;


