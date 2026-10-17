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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package;

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CssPropertyView is tagged;
   type CssPropertyView_Access is access all CssPropertyView'Class;
   type CssPropertyView_Access_Array is array (Natural range <>) of CssPropertyView_Access;
   type CssPropertyView_Access_Array_Access is access all CssPropertyView_Access_Array;

   type CssPropertyView is new DomNodeInterface with record
      commonStrings : CommonStrings_Access;
      cssProperty : CssProperty_Access;
   end record;

   procedure Initialize (This : in out CssPropertyView'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CssPropertyView_Access;
   procedure Initialize (This : in out CssPropertyView'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return CssPropertyView_Access;
   function getProperty (This : in out CssPropertyView) return CssProperty_Access;
   function toXmlNode (This : in out CssPropertyView; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out CssPropertyView; document_Param : access Document'Class);

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView_Package;


