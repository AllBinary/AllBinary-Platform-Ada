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
with org.allbinary.data.tree.dom.DomData_Package; use org.allbinary.data.tree.dom.DomData_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;

package org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package is

   package DomData_Package renames org.allbinary.data.tree.dom.DomData_Package;
   package DomNodeHelper_Package renames org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomNodeInterface_Package renames org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package DomSearchHelper_Package renames org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type CssProperty is tagged;
   type CssProperty_Access is access all CssProperty'Class;
   type CssProperty_Access_Array is array (Natural range <>) of CssProperty_Access;
   type CssProperty_Access_Array_Access is access all CssProperty_Access_Array;

   type CssProperty is new DomNodeInterface with record
      logUtil : LogUtil_Access;
      propertyName : Unbounded_String;
      cssPropertyValues : CssPropertyValues_Access;
   end record;

   procedure Initialize (This : in out CssProperty'Class; name : Unbounded_String);
   function Create (name : Unbounded_String) return CssProperty_Access;
   function getName (This : in out CssProperty) return Unbounded_String;
   procedure getName (This : in out CssProperty);
   function toHashMap (This : in out CssProperty) return HashMap_Access;
   procedure toHashMap (This : in out CssProperty);
   function toXmlNode (This : in out CssProperty; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out CssProperty; document : Document_Access);

end org.allbinary.logic.visual.dhtml.style.css.property.CssProperty_Package;


