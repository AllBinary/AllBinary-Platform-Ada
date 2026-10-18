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
--  with java.io.StringBufferInputStream_Package; use java.io.StringBufferInputStream_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.data.tree.dom.SimpleTransform_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;

   type SimpleTransform is tagged;
   type SimpleTransform_Access is access all SimpleTransform'Class;
   type SimpleTransform_Access_Array is array (Natural range <>) of SimpleTransform_Access;
   type SimpleTransform_Access_Array_Access is access all SimpleTransform_Access_Array;
   type SimpleTransform_Access_Array_Access_Array is array (Natural range <>) of SimpleTransform_Access_Array_Access;
   type SimpleTransform_Access_Array_Access_Array_Access is access all SimpleTransform_Access_Array_Access_Array;

   type SimpleTransform is new Java_Object with record
      xsltFilePath : AbPath_Access;
      dataFilePath : AbPath_Access;
   end record;

   procedure Initialize (This : in out SimpleTransform'Class; xsltFilePath_Param : access AbPath_Package.AbPath'Class; dataFilePath_Param : access AbPath_Package.AbPath'Class);
   function Create (xsltFilePath_Param : access AbPath_Package.AbPath'Class; dataFilePath_Param : access AbPath_Package.AbPath'Class) return SimpleTransform_Access;
   function transform (This : in out SimpleTransform) return Unbounded_String;

end org.allbinary.data.tree.dom.SimpleTransform_Package;


