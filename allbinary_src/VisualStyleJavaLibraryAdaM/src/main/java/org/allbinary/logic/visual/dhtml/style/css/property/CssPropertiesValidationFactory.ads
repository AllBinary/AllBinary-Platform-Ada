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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.validate.ValidationInterface_Package; use org.allbinary.logic.control.validate.ValidationInterface_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package ValidationInterface_Package renames org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Node_Package renames org.w3c.dom.Node_Package;
   package NodeList_Package renames org.w3c.dom.NodeList_Package;

   type CssPropertiesValidationFactory is tagged;
   type CssPropertiesValidationFactory_Access is access all CssPropertiesValidationFactory'Class;
   type CssPropertiesValidationFactory_Access_Array is array (Natural range <>) of CssPropertiesValidationFactory_Access;
   type CssPropertiesValidationFactory_Access_Array_Access is access all CssPropertiesValidationFactory_Access_Array;

   type CssPropertiesValidationFactory is new Java_Object with null record;

   procedure Initialize (This : in out CssPropertiesValidationFactory'Class);
   function Create return CssPropertiesValidationFactory_Access;
   function getInstance (nodeList : NodeList_Access) return BasicArrayList_Access;
   procedure getInstance (nodeList : NodeList_Access);
   function getInstance (hashMap : HashMap_Access) return BasicArrayList_Access;
   procedure getInstance (hashMap : HashMap_Access);

end org.allbinary.logic.visual.dhtml.style.css.property.CssPropertiesValidationFactory_Package;


