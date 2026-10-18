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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type StylesValidationFactory is tagged;
   type StylesValidationFactory_Access is access all StylesValidationFactory'Class;
   type StylesValidationFactory_Access_Array is array (Natural range <>) of StylesValidationFactory_Access;
   type StylesValidationFactory_Access_Array_Access is access all StylesValidationFactory_Access_Array;
   type StylesValidationFactory_Access_Array_Access_Array is array (Natural range <>) of StylesValidationFactory_Access_Array_Access;
   type StylesValidationFactory_Access_Array_Access_Array_Access is access all StylesValidationFactory_Access_Array_Access_Array;

   type StylesValidationFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : StylesValidationFactory_Access;

   procedure Initialize (This : in out StylesValidationFactory'Class);
   function Create return StylesValidationFactory_Access;
   function getInstance return StylesValidationFactory_Access;
   function getInstance (This : in out StylesValidationFactory; document_Param : access Document_Package.Document'Class) return BasicArrayList_Access;
   procedure getInstance (This : in out StylesValidationFactory; document_Param : access Document_Package.Document'Class);
   function getInstance (hashMap_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access;
   procedure getInstance (hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.visual.dhtml.style.StylesValidationFactory_Package;


