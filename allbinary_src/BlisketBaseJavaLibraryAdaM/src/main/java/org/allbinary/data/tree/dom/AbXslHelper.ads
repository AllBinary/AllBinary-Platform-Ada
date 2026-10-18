--
-- AllBinary Open License Version 1
-- Copyright (c) 2022 AllBinary
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
--  with javax.xml.transform.stream.StreamResult_Package; use javax.xml.transform.stream.StreamResult_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
with org.allbinary.logic.io.file.AbFile_Package; use org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;

package org.allbinary.data.tree.dom.AbXslHelper_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;

   type AbXslHelper is tagged;
   type AbXslHelper_Access is access all AbXslHelper'Class;
   type AbXslHelper_Access_Array is array (Natural range <>) of AbXslHelper_Access;
   type AbXslHelper_Access_Array_Access is access all AbXslHelper_Access_Array;
   type AbXslHelper_Access_Array_Access_Array is array (Natural range <>) of AbXslHelper_Access_Array_Access;
   type AbXslHelper_Access_Array_Access_Array_Access is access all AbXslHelper_Access_Array_Access_Array;

   type AbXslHelper is new Java_Object with null record;
   instance : AbXslHelper_Access;

   procedure Initialize (This : in out AbXslHelper'Class);
   function Create return AbXslHelper_Access;
   function getInstance return AbXslHelper_Access;
   function translate (This : in out AbXslHelper; xslFile_Param : access AbFile_Package.AbFile'Class; xmlFile_Param : access AbFile_Package.AbFile'Class) return Unbounded_String;
   procedure translate (This : in out AbXslHelper; xslFile_Param : access AbFile_Package.AbFile'Class; xmlFile_Param : access AbFile_Package.AbFile'Class);
   function translate (This : in out AbXslHelper; xslPath_Param : access AbPath_Package.AbPath'Class; xmlPath_Param : access AbPath_Package.AbPath'Class) return Unbounded_String;
   procedure translate (This : in out AbXslHelper; xslPath_Param : access AbPath_Package.AbPath'Class; xmlPath_Param : access AbPath_Package.AbPath'Class);
   function translate (This : in out AbXslHelper; xsltFilePath : Unbounded_String; xmlFilePath : Unbounded_String) return Unbounded_String;
   procedure translate (This : in out AbXslHelper; xsltFilePath : Unbounded_String; xmlFilePath : Unbounded_String);

end org.allbinary.data.tree.dom.AbXslHelper_Package;


