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
limited with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References is
   type TransformInfoProperties_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package.TransformInfoProperties'Class;
   type TransformInfoProperties_Access_Array is array (Natural range <>) of TransformInfoProperties_Access;
   type TransformInfoProperties_Access_Array_Access is access all TransformInfoProperties_Access_Array;
   type TransformInfoProperties_Access_Array_Access_Array is array (Natural range <>) of TransformInfoProperties_Access_Array_Access;
   type TransformInfoProperties_Access_Array_Access_Array_Access is access all TransformInfoProperties_Access_Array_Access_Array;
   type TransformInfoProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoProperties_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoProperties_Access_Array_Object'Class then TransformInfoProperties_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoProperties_Access_Array_Access_Array_Object'Class then TransformInfoProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype TransformInfoProperties_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access;
   function "=" (Left, Right : TransformInfoProperties_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   subtype TransformInfoProperties_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array;
   function "=" (Left, Right : TransformInfoProperties_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   subtype TransformInfoProperties_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access;
   function "=" (Left, Right : TransformInfoProperties_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   function Java_Box (Value : TransformInfoProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.Java_Box;
   function Java_Unbox_TransformInfoProperties_Access_Array (Value : access Java_Object'Class) return TransformInfoProperties_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.Java_Unbox_TransformInfoProperties_Access_Array;
   subtype TransformInfoProperties_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   subtype TransformInfoProperties_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.TransformInfoProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References."=";
   function Java_Box (Value : TransformInfoProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.Java_Box;
   function Java_Unbox_TransformInfoProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoProperties_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package_References.Java_Unbox_TransformInfoProperties_Access_Array_Access_Array;

   type TransformInfoProperties is new Java_Object with record
      name : Unbounded_String;
      label : Unbounded_String;
      description : Unbounded_String;
      objectFileName : Unbounded_String;
      objectConfigFileName : Unbounded_String;
      templateFileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out TransformInfoProperties'Class; name : Unbounded_String; label : Unbounded_String; description : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String);
   function Create (name : Unbounded_String; label : Unbounded_String; description : Unbounded_String; objectFileName : Unbounded_String; objectConfigFileName : Unbounded_String; templateFileName : Unbounded_String) return TransformInfoProperties_Access;
   procedure setName (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setDescription (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setViewFile (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setTemplateFile (This : in out TransformInfoProperties; value : Unbounded_String);
   procedure setObjectConfigFile (This : in out TransformInfoProperties; value : Unbounded_String);
   function getName (This : in out TransformInfoProperties) return Unbounded_String;
   function getLabel (This : in out TransformInfoProperties) return Unbounded_String;
   function getDescription (This : in out TransformInfoProperties) return Unbounded_String;
   function getViewFile (This : in out TransformInfoProperties) return Unbounded_String;
   function getTemplateFile (This : in out TransformInfoProperties) return Unbounded_String;
   function getObjectConfigFile (This : in out TransformInfoProperties) return Unbounded_String;

end org.allbinary.logic.visual.transform.info.TransformInfoProperties_Package;


