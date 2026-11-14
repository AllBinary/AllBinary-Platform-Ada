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

with AllBinary_Java;
limited with org.allbinary.data.tree.dom.SimpleTransform_Package;
package org.allbinary.data.tree.dom.SimpleTransform_Package_References is
   type SimpleTransform_Access is access all org.allbinary.data.tree.dom.SimpleTransform_Package.SimpleTransform'Class;
   type SimpleTransform_Access_Array is array (Natural range <>) of SimpleTransform_Access;
   type SimpleTransform_Access_Array_Access is access all SimpleTransform_Access_Array;
   type SimpleTransform_Access_Array_Access_Array is array (Natural range <>) of SimpleTransform_Access_Array_Access;
   type SimpleTransform_Access_Array_Access_Array_Access is access all SimpleTransform_Access_Array_Access_Array;
   type SimpleTransform_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleTransform_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleTransform_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleTransform_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleTransform_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleTransform_Access_Array_Access is (if Value /= null and then Value.all in SimpleTransform_Access_Array_Object'Class then SimpleTransform_Access_Array_Object'Class (Value.all).Value else null);
   type SimpleTransform_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleTransform_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleTransform_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleTransform_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleTransform_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleTransform_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimpleTransform_Access_Array_Access_Array_Object'Class then SimpleTransform_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.SimpleTransform_Package_References;

with org.allbinary.data.tree.dom.SimpleTransform_Package_References;
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
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;

package org.allbinary.data.tree.dom.SimpleTransform_Package is

   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
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


   subtype SimpleTransform_Access is org.allbinary.data.tree.dom.SimpleTransform_Package_References.SimpleTransform_Access;
   function "=" (Left, Right : SimpleTransform_Access) return Boolean renames org.allbinary.data.tree.dom.SimpleTransform_Package_References."=";
   subtype SimpleTransform_Access_Array is org.allbinary.data.tree.dom.SimpleTransform_Package_References.SimpleTransform_Access_Array;
   function "=" (Left, Right : SimpleTransform_Access_Array) return Boolean renames org.allbinary.data.tree.dom.SimpleTransform_Package_References."=";
   subtype SimpleTransform_Access_Array_Access is org.allbinary.data.tree.dom.SimpleTransform_Package_References.SimpleTransform_Access_Array_Access;
   function "=" (Left, Right : SimpleTransform_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.SimpleTransform_Package_References."=";
   function Java_Box (Value : SimpleTransform_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.SimpleTransform_Package_References.Java_Box;
   function Java_Unbox_SimpleTransform_Access_Array (Value : access Java_Object'Class) return SimpleTransform_Access_Array_Access renames org.allbinary.data.tree.dom.SimpleTransform_Package_References.Java_Unbox_SimpleTransform_Access_Array;
   subtype SimpleTransform_Access_Array_Access_Array is org.allbinary.data.tree.dom.SimpleTransform_Package_References.SimpleTransform_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleTransform_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.SimpleTransform_Package_References."=";
   subtype SimpleTransform_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.SimpleTransform_Package_References.SimpleTransform_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleTransform_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.SimpleTransform_Package_References."=";
   function Java_Box (Value : SimpleTransform_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.SimpleTransform_Package_References.Java_Box;
   function Java_Unbox_SimpleTransform_Access_Array_Access_Array (Value : access Java_Object'Class) return SimpleTransform_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.SimpleTransform_Package_References.Java_Unbox_SimpleTransform_Access_Array_Access_Array;

   type SimpleTransform is new Java_Object with record
      xsltFilePath : AbPath_Access;
      dataFilePath : AbPath_Access;
   end record;

   procedure Initialize (This : in out SimpleTransform'Class; xsltFilePath_Param : access AbPath_Package.AbPath'Class; dataFilePath_Param : access AbPath_Package.AbPath'Class);
   function Create (xsltFilePath_Param : access AbPath_Package.AbPath'Class; dataFilePath_Param : access AbPath_Package.AbPath'Class) return SimpleTransform_Access;
   function transform (This : in out SimpleTransform) return Unbounded_String;

end org.allbinary.data.tree.dom.SimpleTransform_Package;


