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
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References is
   type TransformInfoHttpStoreFactory_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package.TransformInfoHttpStoreFactory'Class;
   type TransformInfoHttpStoreFactory_Access_Array is array (Natural range <>) of TransformInfoHttpStoreFactory_Access;
   type TransformInfoHttpStoreFactory_Access_Array_Access is access all TransformInfoHttpStoreFactory_Access_Array;
   type TransformInfoHttpStoreFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpStoreFactory_Access_Array_Access;
   type TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access is access all TransformInfoHttpStoreFactory_Access_Array_Access_Array;
   type TransformInfoHttpStoreFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpStoreFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpStoreFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpStoreFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpStoreFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpStoreFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpStoreFactory_Access_Array_Object'Class then TransformInfoHttpStoreFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoHttpStoreFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpStoreFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpStoreFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpStoreFactory_Access_Array_Access_Array_Object'Class then TransformInfoHttpStoreFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References;
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
with org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoFactoryInterface_Package;
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package is

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


   subtype TransformInfoHttpStoreFactory_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.TransformInfoHttpStoreFactory_Access;
   function "=" (Left, Right : TransformInfoHttpStoreFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References."=";
   subtype TransformInfoHttpStoreFactory_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.TransformInfoHttpStoreFactory_Access_Array;
   function "=" (Left, Right : TransformInfoHttpStoreFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References."=";
   subtype TransformInfoHttpStoreFactory_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.TransformInfoHttpStoreFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpStoreFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References."=";
   function Java_Box (Value : TransformInfoHttpStoreFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpStoreFactory_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpStoreFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.Java_Unbox_TransformInfoHttpStoreFactory_Access_Array;
   subtype TransformInfoHttpStoreFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.TransformInfoHttpStoreFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttpStoreFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References."=";
   subtype TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References."=";
   function Java_Box (Value : TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpStoreFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpStoreFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package_References.Java_Unbox_TransformInfoHttpStoreFactory_Access_Array_Access_Array;

   type TransformInfoHttpStoreFactory is new Java_Object and TransformInfoFactoryInterface with null record;
   instance : TransformInfoHttpStoreFactory_Access;

   procedure Initialize (This : in out TransformInfoHttpStoreFactory'Class);
   function Create return TransformInfoHttpStoreFactory_Access;
   function getInstance return TransformInfoHttpStoreFactory_Access;
   function getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access;
   procedure getInstance (This : in out TransformInfoHttpStoreFactory; databaseHashMap_Param : access HashMap_Package.HashMap'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreFactory_Package;


