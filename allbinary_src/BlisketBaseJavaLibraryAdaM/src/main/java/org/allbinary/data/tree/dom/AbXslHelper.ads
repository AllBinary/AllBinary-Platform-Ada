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

with AllBinary_Java;
limited with org.allbinary.data.tree.dom.AbXslHelper_Package;
package org.allbinary.data.tree.dom.AbXslHelper_Package_References is
   type AbXslHelper_Access is access all org.allbinary.data.tree.dom.AbXslHelper_Package.AbXslHelper'Class;
   type AbXslHelper_Access_Array is array (Natural range <>) of AbXslHelper_Access;
   type AbXslHelper_Access_Array_Access is access all AbXslHelper_Access_Array;
   type AbXslHelper_Access_Array_Access_Array is array (Natural range <>) of AbXslHelper_Access_Array_Access;
   type AbXslHelper_Access_Array_Access_Array_Access is access all AbXslHelper_Access_Array_Access_Array;
   type AbXslHelper_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbXslHelper_Access_Array_Access;
   end record;
   function Java_Box (Value : AbXslHelper_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbXslHelper_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbXslHelper_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbXslHelper_Access_Array_Access is (if Value /= null and then Value.all in AbXslHelper_Access_Array_Object'Class then AbXslHelper_Access_Array_Object'Class (Value.all).Value else null);
   type AbXslHelper_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbXslHelper_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbXslHelper_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbXslHelper_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbXslHelper_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbXslHelper_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbXslHelper_Access_Array_Access_Array_Object'Class then AbXslHelper_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.AbXslHelper_Package_References;

with org.allbinary.data.tree.dom.AbXslHelper_Package_References;
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
limited with org.allbinary.logic.io.file.AbFile_Package;
with org.allbinary.logic.io.file.AbFile_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.data.tree.dom.AbXslHelper_Package is

   package AbFile_Package renames Standard.org.allbinary.logic.io.file.AbFile_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype AbFile_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access;
   use type AbFile_Access;
   subtype AbFile_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array;
   use type AbFile_Access_Array;
   subtype AbFile_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access;
   use type AbFile_Access_Array_Access;
   subtype AbFile_Access_Array_Access_Array is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array;
   use type AbFile_Access_Array_Access_Array;
   subtype AbFile_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.AbFile_Package_References.AbFile_Access_Array_Access_Array_Access;
   use type AbFile_Access_Array_Access_Array_Access;
   subtype AbPath_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access;
   use type AbPath_Access;
   subtype AbPath_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array;
   use type AbPath_Access_Array;
   subtype AbPath_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access;
   use type AbPath_Access_Array_Access;
   subtype AbPath_Access_Array_Access_Array is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array;
   use type AbPath_Access_Array_Access_Array;
   subtype AbPath_Access_Array_Access_Array_Access is org.allbinary.logic.io.path.AbPath_Package_References.AbPath_Access_Array_Access_Array_Access;
   use type AbPath_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbXslHelper_Access is org.allbinary.data.tree.dom.AbXslHelper_Package_References.AbXslHelper_Access;
   function "=" (Left, Right : AbXslHelper_Access) return Boolean renames org.allbinary.data.tree.dom.AbXslHelper_Package_References."=";
   subtype AbXslHelper_Access_Array is org.allbinary.data.tree.dom.AbXslHelper_Package_References.AbXslHelper_Access_Array;
   function "=" (Left, Right : AbXslHelper_Access_Array) return Boolean renames org.allbinary.data.tree.dom.AbXslHelper_Package_References."=";
   subtype AbXslHelper_Access_Array_Access is org.allbinary.data.tree.dom.AbXslHelper_Package_References.AbXslHelper_Access_Array_Access;
   function "=" (Left, Right : AbXslHelper_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.AbXslHelper_Package_References."=";
   function Java_Box (Value : AbXslHelper_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.AbXslHelper_Package_References.Java_Box;
   function Java_Unbox_AbXslHelper_Access_Array (Value : access Java_Object'Class) return AbXslHelper_Access_Array_Access renames org.allbinary.data.tree.dom.AbXslHelper_Package_References.Java_Unbox_AbXslHelper_Access_Array;
   subtype AbXslHelper_Access_Array_Access_Array is org.allbinary.data.tree.dom.AbXslHelper_Package_References.AbXslHelper_Access_Array_Access_Array;
   function "=" (Left, Right : AbXslHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.AbXslHelper_Package_References."=";
   subtype AbXslHelper_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.AbXslHelper_Package_References.AbXslHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbXslHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.AbXslHelper_Package_References."=";
   function Java_Box (Value : AbXslHelper_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.AbXslHelper_Package_References.Java_Box;
   function Java_Unbox_AbXslHelper_Access_Array_Access_Array (Value : access Java_Object'Class) return AbXslHelper_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.AbXslHelper_Package_References.Java_Unbox_AbXslHelper_Access_Array_Access_Array;

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


