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
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References is
   type TransformInfoHttpStoreNoManipulation_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package.TransformInfoHttpStoreNoManipulation'Class;
   type TransformInfoHttpStoreNoManipulation_Access_Array is array (Natural range <>) of TransformInfoHttpStoreNoManipulation_Access;
   type TransformInfoHttpStoreNoManipulation_Access_Array_Access is access all TransformInfoHttpStoreNoManipulation_Access_Array;
   type TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpStoreNoManipulation_Access_Array_Access;
   type TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access is access all TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array;
   type TransformInfoHttpStoreNoManipulation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpStoreNoManipulation_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpStoreNoManipulation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpStoreNoManipulation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpStoreNoManipulation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpStoreNoManipulation_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpStoreNoManipulation_Access_Array_Object'Class then TransformInfoHttpStoreNoManipulation_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Object'Class then TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpStore_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoHttpStoreNoManipulation_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.TransformInfoHttpStoreNoManipulation_Access;
   function "=" (Left, Right : TransformInfoHttpStoreNoManipulation_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References."=";
   subtype TransformInfoHttpStoreNoManipulation_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.TransformInfoHttpStoreNoManipulation_Access_Array;
   function "=" (Left, Right : TransformInfoHttpStoreNoManipulation_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References."=";
   subtype TransformInfoHttpStoreNoManipulation_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.TransformInfoHttpStoreNoManipulation_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpStoreNoManipulation_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References."=";
   function Java_Box (Value : TransformInfoHttpStoreNoManipulation_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpStoreNoManipulation_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpStoreNoManipulation_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.Java_Unbox_TransformInfoHttpStoreNoManipulation_Access_Array;
   subtype TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References."=";
   subtype TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References."=";
   function Java_Box (Value : TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package_References.Java_Unbox_TransformInfoHttpStoreNoManipulation_Access_Array_Access_Array;

   type TransformInfoHttpStoreNoManipulation is new TransformInfoHttpStore with null record;

   procedure Initialize (This : in out TransformInfoHttpStoreNoManipulation'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoHttpStoreNoManipulation_Access;
   procedure setObjectConfigFile (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String);
   procedure setObjectConfig (This : in out TransformInfoHttpStoreNoManipulation; value : Unbounded_String);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreNoManipulation_Package;


