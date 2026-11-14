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
limited with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;
package org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References is
   type TransformTemplateCustomizerUtil_Access is access all org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package.TransformTemplateCustomizerUtil'Class;
   type TransformTemplateCustomizerUtil_Access_Array is array (Natural range <>) of TransformTemplateCustomizerUtil_Access;
   type TransformTemplateCustomizerUtil_Access_Array_Access is access all TransformTemplateCustomizerUtil_Access_Array;
   type TransformTemplateCustomizerUtil_Access_Array_Access_Array is array (Natural range <>) of TransformTemplateCustomizerUtil_Access_Array_Access;
   type TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access is access all TransformTemplateCustomizerUtil_Access_Array_Access_Array;
   type TransformTemplateCustomizerUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformTemplateCustomizerUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformTemplateCustomizerUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformTemplateCustomizerUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformTemplateCustomizerUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformTemplateCustomizerUtil_Access_Array_Access is (if Value /= null and then Value.all in TransformTemplateCustomizerUtil_Access_Array_Object'Class then TransformTemplateCustomizerUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TransformTemplateCustomizerUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformTemplateCustomizerUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformTemplateCustomizerUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformTemplateCustomizerUtil_Access_Array_Access_Array_Object'Class then TransformTemplateCustomizerUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References;

with org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;

package org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype TransformTemplateCustomizerUtil_Access is org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.TransformTemplateCustomizerUtil_Access;
   function "=" (Left, Right : TransformTemplateCustomizerUtil_Access) return Boolean renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References."=";
   subtype TransformTemplateCustomizerUtil_Access_Array is org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.TransformTemplateCustomizerUtil_Access_Array;
   function "=" (Left, Right : TransformTemplateCustomizerUtil_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References."=";
   subtype TransformTemplateCustomizerUtil_Access_Array_Access is org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.TransformTemplateCustomizerUtil_Access_Array_Access;
   function "=" (Left, Right : TransformTemplateCustomizerUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References."=";
   function Java_Box (Value : TransformTemplateCustomizerUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.Java_Box;
   function Java_Unbox_TransformTemplateCustomizerUtil_Access_Array (Value : access Java_Object'Class) return TransformTemplateCustomizerUtil_Access_Array_Access renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.Java_Unbox_TransformTemplateCustomizerUtil_Access_Array;
   subtype TransformTemplateCustomizerUtil_Access_Array_Access_Array is org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.TransformTemplateCustomizerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TransformTemplateCustomizerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References."=";
   subtype TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References."=";
   function Java_Box (Value : TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.Java_Box;
   function Java_Unbox_TransformTemplateCustomizerUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformTemplateCustomizerUtil_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package_References.Java_Unbox_TransformTemplateCustomizerUtil_Access_Array_Access_Array;

   type TransformTemplateCustomizerUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      CUSTOMIZER_NAME : Unbounded_String;
      BODY_VIEWNAMEKEY : Unbounded_String;
      TITLE_VIEWNAMEKEY : Unbounded_String;
      GLOBALS_NEW : Unbounded_String;
      GLOBALS_INSERT : Unbounded_String;
      GLOBALS_DELETE : Unbounded_String;
      GLOBALS_EDIT : Unbounded_String;
      GLOBALS_UPDATE : Unbounded_String;
   end record;
   instance : TransformTemplateCustomizerUtil_Access;

   procedure Initialize (This : in out TransformTemplateCustomizerUtil'Class);
   function Create return TransformTemplateCustomizerUtil_Access;
   function getInstance return TransformTemplateCustomizerUtil_Access;
   function getPageNameHack (This : in out TransformTemplateCustomizerUtil; viewName : Unbounded_String; storeName : Unbounded_String) return Unbounded_String;
   procedure getPageNameHack (This : in out TransformTemplateCustomizerUtil; viewName : Unbounded_String; storeName : Unbounded_String);

end org.allbinary.logic.visual.transform.template.util.TransformTemplateCustomizerUtil_Package;


