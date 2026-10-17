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

package org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package ValidationInterface_Package renames Standard.org.allbinary.logic.control.validate.ValidationInterface_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type CssElementsValidationFactory is tagged;
   type CssElementsValidationFactory_Access is access all CssElementsValidationFactory'Class;
   type CssElementsValidationFactory_Access_Array is array (Natural range <>) of CssElementsValidationFactory_Access;
   type CssElementsValidationFactory_Access_Array_Access is access all CssElementsValidationFactory_Access_Array;

   type CssElementsValidationFactory is new Java_Object with null record;

   procedure Initialize (This : in out CssElementsValidationFactory'Class);
   function Create return CssElementsValidationFactory_Access;
   function getInstance (cssElementStyleNodeList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getInstance (cssElementStyleNodeList : BasicArrayList_Access);
   function getInstance (hashMap : HashMap_Access) return BasicArrayList_Access;
   procedure getInstance (hashMap : HashMap_Access);

end org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;


