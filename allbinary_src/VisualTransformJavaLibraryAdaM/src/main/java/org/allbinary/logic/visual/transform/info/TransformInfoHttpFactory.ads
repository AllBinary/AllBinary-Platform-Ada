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
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References is
   type TransformInfoHttpFactory_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package.TransformInfoHttpFactory'Class;
   type TransformInfoHttpFactory_Access_Array is array (Natural range <>) of TransformInfoHttpFactory_Access;
   type TransformInfoHttpFactory_Access_Array_Access is access all TransformInfoHttpFactory_Access_Array;
   type TransformInfoHttpFactory_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpFactory_Access_Array_Access;
   type TransformInfoHttpFactory_Access_Array_Access_Array_Access is access all TransformInfoHttpFactory_Access_Array_Access_Array;
   type TransformInfoHttpFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpFactory_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpFactory_Access_Array_Object'Class then TransformInfoHttpFactory_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoHttpFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpFactory_Access_Array_Access_Array_Object'Class then TransformInfoHttpFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References;
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

package org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package is

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


   subtype TransformInfoHttpFactory_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.TransformInfoHttpFactory_Access;
   function "=" (Left, Right : TransformInfoHttpFactory_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References."=";
   subtype TransformInfoHttpFactory_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.TransformInfoHttpFactory_Access_Array;
   function "=" (Left, Right : TransformInfoHttpFactory_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References."=";
   subtype TransformInfoHttpFactory_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.TransformInfoHttpFactory_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References."=";
   function Java_Box (Value : TransformInfoHttpFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpFactory_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpFactory_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.Java_Unbox_TransformInfoHttpFactory_Access_Array;
   subtype TransformInfoHttpFactory_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.TransformInfoHttpFactory_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttpFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References."=";
   subtype TransformInfoHttpFactory_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.TransformInfoHttpFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References."=";
   function Java_Box (Value : TransformInfoHttpFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpFactory_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package_References.Java_Unbox_TransformInfoHttpFactory_Access_Array_Access_Array;

   type TransformInfoHttpFactory is new Java_Object with null record;

   procedure Initialize (This : in out TransformInfoHttpFactory'Class);
   function Create return TransformInfoHttpFactory_Access;
   function getInstance (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return TransformInfoInterface_Access;
   procedure getInstance (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);

end org.allbinary.logic.visual.transform.info.TransformInfoHttpFactory_Package;


