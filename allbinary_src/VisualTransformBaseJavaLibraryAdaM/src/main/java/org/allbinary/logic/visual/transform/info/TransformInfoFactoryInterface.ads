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
limited with org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References is
   type TransformInfoFactoryInterface_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package.TransformInfoFactoryInterface'Class;
   type TransformInfoFactoryInterface_Access_Array is array (Natural range <>) of TransformInfoFactoryInterface_Access;
   type TransformInfoFactoryInterface_Access_Array_Access is access all TransformInfoFactoryInterface_Access_Array;
   type TransformInfoFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoFactoryInterface_Access_Array_Access;
   type TransformInfoFactoryInterface_Access_Array_Access_Array_Access is access all TransformInfoFactoryInterface_Access_Array_Access_Array;
   type TransformInfoFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoFactoryInterface_Access_Array_Object'Class then TransformInfoFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoFactoryInterface_Access_Array_Access_Array_Object'Class then TransformInfoFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References;
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
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   subtype TransformInfoInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access;
   use type TransformInfoInterface_Access;
   subtype TransformInfoInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array;
   use type TransformInfoInterface_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access;
   subtype TransformInfoInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array;
   use type TransformInfoInterface_Access_Array_Access_Array;
   subtype TransformInfoInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References.TransformInfoInterface_Access_Array_Access_Array_Access;
   use type TransformInfoInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransformInfoFactoryInterface is interface;
   subtype TransformInfoFactoryInterface_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access;
   function "=" (Left, Right : TransformInfoFactoryInterface_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References."=";
   subtype TransformInfoFactoryInterface_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array;
   function "=" (Left, Right : TransformInfoFactoryInterface_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References."=";
   subtype TransformInfoFactoryInterface_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : TransformInfoFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References."=";
   function Java_Box (Value : TransformInfoFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoFactoryInterface_Access_Array (Value : access Java_Object'Class) return TransformInfoFactoryInterface_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.Java_Unbox_TransformInfoFactoryInterface_Access_Array;
   subtype TransformInfoFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References."=";
   subtype TransformInfoFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.TransformInfoFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References."=";
   function Java_Box (Value : TransformInfoFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_TransformInfoFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package_References.Java_Unbox_TransformInfoFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransformInfoFactoryInterface (Value : TransformInfoFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out TransformInfoFactoryInterface; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access is abstract;
   procedure getInstance (This : in out TransformInfoFactoryInterface; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is abstract;

end org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;


