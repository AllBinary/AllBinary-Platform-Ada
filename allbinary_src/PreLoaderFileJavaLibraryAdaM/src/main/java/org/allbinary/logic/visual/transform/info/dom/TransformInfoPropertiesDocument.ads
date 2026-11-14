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
limited with org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package;
package org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References is
   type TransformInfoPropertiesDocument_Access is access all org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package.TransformInfoPropertiesDocument'Class;
   type TransformInfoPropertiesDocument_Access_Array is array (Natural range <>) of TransformInfoPropertiesDocument_Access;
   type TransformInfoPropertiesDocument_Access_Array_Access is access all TransformInfoPropertiesDocument_Access_Array;
   type TransformInfoPropertiesDocument_Access_Array_Access_Array is array (Natural range <>) of TransformInfoPropertiesDocument_Access_Array_Access;
   type TransformInfoPropertiesDocument_Access_Array_Access_Array_Access is access all TransformInfoPropertiesDocument_Access_Array_Access_Array;
   type TransformInfoPropertiesDocument_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoPropertiesDocument_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoPropertiesDocument_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoPropertiesDocument_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoPropertiesDocument_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoPropertiesDocument_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoPropertiesDocument_Access_Array_Object'Class then TransformInfoPropertiesDocument_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoPropertiesDocument_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoPropertiesDocument_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoPropertiesDocument_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoPropertiesDocument_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoPropertiesDocument_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoPropertiesDocument_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoPropertiesDocument_Access_Array_Access_Array_Object'Class then TransformInfoPropertiesDocument_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References;

with org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoPropertiesDocument_Access is org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.TransformInfoPropertiesDocument_Access;
   function "=" (Left, Right : TransformInfoPropertiesDocument_Access) return Boolean renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References."=";
   subtype TransformInfoPropertiesDocument_Access_Array is org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.TransformInfoPropertiesDocument_Access_Array;
   function "=" (Left, Right : TransformInfoPropertiesDocument_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References."=";
   subtype TransformInfoPropertiesDocument_Access_Array_Access is org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.TransformInfoPropertiesDocument_Access_Array_Access;
   function "=" (Left, Right : TransformInfoPropertiesDocument_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References."=";
   function Java_Box (Value : TransformInfoPropertiesDocument_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.Java_Box;
   function Java_Unbox_TransformInfoPropertiesDocument_Access_Array (Value : access Java_Object'Class) return TransformInfoPropertiesDocument_Access_Array_Access renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.Java_Unbox_TransformInfoPropertiesDocument_Access_Array;
   subtype TransformInfoPropertiesDocument_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.TransformInfoPropertiesDocument_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoPropertiesDocument_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References."=";
   subtype TransformInfoPropertiesDocument_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.TransformInfoPropertiesDocument_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoPropertiesDocument_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References."=";
   function Java_Box (Value : TransformInfoPropertiesDocument_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.Java_Box;
   function Java_Unbox_TransformInfoPropertiesDocument_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoPropertiesDocument_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package_References.Java_Unbox_TransformInfoPropertiesDocument_Access_Array_Access_Array;

   type TransformInfoPropertiesDocument is new Java_Object with record
      logUtil : LogUtil_Access;
      document : Document_Access;
   end record;

   procedure Initialize (This : in out TransformInfoPropertiesDocument'Class; filePath : Unbounded_String);
   function Create (filePath : Unbounded_String) return TransformInfoPropertiesDocument_Access;
   function toTransformInfoPropertiesHashMap (This : in out TransformInfoPropertiesDocument) return HashMap_Access;

end org.allbinary.logic.visual.transform.info.dom.TransformInfoPropertiesDocument_Package;


