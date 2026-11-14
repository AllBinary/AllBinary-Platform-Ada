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
limited with org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;
package org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References is
   type TransformInfoHttpSearch_Access is access all org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package.TransformInfoHttpSearch'Class;
   type TransformInfoHttpSearch_Access_Array is array (Natural range <>) of TransformInfoHttpSearch_Access;
   type TransformInfoHttpSearch_Access_Array_Access is access all TransformInfoHttpSearch_Access_Array;
   type TransformInfoHttpSearch_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpSearch_Access_Array_Access;
   type TransformInfoHttpSearch_Access_Array_Access_Array_Access is access all TransformInfoHttpSearch_Access_Array_Access_Array;
   type TransformInfoHttpSearch_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpSearch_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpSearch_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpSearch_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpSearch_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpSearch_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpSearch_Access_Array_Object'Class then TransformInfoHttpSearch_Access_Array_Object'Class (Value.all).Value else null);
   type TransformInfoHttpSearch_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransformInfoHttpSearch_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransformInfoHttpSearch_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransformInfoHttpSearch_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransformInfoHttpSearch_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransformInfoHttpSearch_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransformInfoHttpSearch_Access_Array_Access_Array_Object'Class then TransformInfoHttpSearch_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References;

with org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.control.search.SearchRequest_Package;
with org.allbinary.logic.control.search.SearchRequest_Package_References;
limited with org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPath_Package_References;
with org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttp_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package is

   package SearchRequest_Package renames Standard.org.allbinary.logic.control.search.SearchRequest_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Reference_Types is
   subtype SearchRequest_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access;
   use type SearchRequest_Access;
   subtype SearchRequest_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array;
   use type SearchRequest_Access_Array;
   subtype SearchRequest_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access;
   use type SearchRequest_Access_Array_Access;
   subtype SearchRequest_Access_Array_Access_Array is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array;
   use type SearchRequest_Access_Array_Access_Array;
   subtype SearchRequest_Access_Array_Access_Array_Access is org.allbinary.logic.control.search.SearchRequest_Package_References.SearchRequest_Access_Array_Access_Array_Access;
   use type SearchRequest_Access_Array_Access_Array_Access;
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


   subtype TransformInfoHttpSearch_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.TransformInfoHttpSearch_Access;
   function "=" (Left, Right : TransformInfoHttpSearch_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References."=";
   subtype TransformInfoHttpSearch_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.TransformInfoHttpSearch_Access_Array;
   function "=" (Left, Right : TransformInfoHttpSearch_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References."=";
   subtype TransformInfoHttpSearch_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.TransformInfoHttpSearch_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpSearch_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References."=";
   function Java_Box (Value : TransformInfoHttpSearch_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpSearch_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpSearch_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.Java_Unbox_TransformInfoHttpSearch_Access_Array;
   subtype TransformInfoHttpSearch_Access_Array_Access_Array is org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.TransformInfoHttpSearch_Access_Array_Access_Array;
   function "=" (Left, Right : TransformInfoHttpSearch_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References."=";
   subtype TransformInfoHttpSearch_Access_Array_Access_Array_Access is org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.TransformInfoHttpSearch_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransformInfoHttpSearch_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References."=";
   function Java_Box (Value : TransformInfoHttpSearch_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.Java_Box;
   function Java_Unbox_TransformInfoHttpSearch_Access_Array_Access_Array (Value : access Java_Object'Class) return TransformInfoHttpSearch_Access_Array_Access_Array_Access renames org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package_References.Java_Unbox_TransformInfoHttpSearch_Access_Array_Access_Array;

   type TransformInfoHttpSearch is new TransformInfoHttp with null record;

   procedure Initialize (This : in out TransformInfoHttpSearch'Class; searchRequest_Param : access SearchRequest_Package.SearchRequest'Class);
   function Create (searchRequest_Param : access SearchRequest_Package.SearchRequest'Class) return TransformInfoHttpSearch_Access;
   function getPath (This : in out TransformInfoHttpSearch) return Unbounded_String;
   function getTemplateFilePath (This : in out TransformInfoHttpSearch) return AbPath_Access;
   function getObjectConfigFilePath (This : in out TransformInfoHttpSearch) return AbPath_Access;
   function getDataFilePath (This : in out TransformInfoHttpSearch) return AbPath_Access;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch_Package;


