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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementData_Package;
with org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package; use org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;

package org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomData_Package renames Standard.org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CssPropertiesValidationFactory_Package renames Standard.org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type CssElementView is tagged;
   type CssElementView_Access is access all CssElementView'Class;
   type CssElementView_Access_Array is array (Natural range <>) of CssElementView_Access;
   type CssElementView_Access_Array_Access is access all CssElementView_Access_Array;

   type CssElementView is new DomNodeInterface with record
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
   function getValue (This : in out CssElementView) return Unbounded_String;
   function toHashMap (This : in out CssElementView) return HashMap_Access;
   function toXmlNode (This : in out CssElementView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out CssElementView; document : Document_Access);

end org.allbinary.logic.visual.dhtml.style.css.CssElementView_Package;


