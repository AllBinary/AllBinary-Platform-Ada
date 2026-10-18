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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type CssElementsValidationFactory is tagged;
   type CssElementsValidationFactory_Access is access all CssElementsValidationFactory'Class;
   type CssElementsValidationFactory_Access_Array is array (Natural range <>) of CssElementsValidationFactory_Access;
   type CssElementsValidationFactory_Access_Array_Access is access all CssElementsValidationFactory_Access_Array;
   type CssElementsValidationFactory_Access_Array_Access_Array is array (Natural range <>) of CssElementsValidationFactory_Access_Array_Access;
   type CssElementsValidationFactory_Access_Array_Access_Array_Access is access all CssElementsValidationFactory_Access_Array_Access_Array;

   type CssElementsValidationFactory is new Java_Object with null record;

   procedure Initialize (This : in out CssElementsValidationFactory'Class);
   function Create return CssElementsValidationFactory_Access;
   function getInstance (cssElementStyleNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access;
   procedure getInstance (cssElementStyleNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access;
   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.visual.dhtml.style.css.CssElementsValidationFactory_Package;


