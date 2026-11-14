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
limited with org.allbinary.data.tree.dom.CustomUriResolver_Package;
package org.allbinary.data.tree.dom.CustomUriResolver_Package_References is
   type CustomUriResolver_Access is access all org.allbinary.data.tree.dom.CustomUriResolver_Package.CustomUriResolver'Class;
   type CustomUriResolver_Access_Array is array (Natural range <>) of CustomUriResolver_Access;
   type CustomUriResolver_Access_Array_Access is access all CustomUriResolver_Access_Array;
   type CustomUriResolver_Access_Array_Access_Array is array (Natural range <>) of CustomUriResolver_Access_Array_Access;
   type CustomUriResolver_Access_Array_Access_Array_Access is access all CustomUriResolver_Access_Array_Access_Array;
   type CustomUriResolver_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomUriResolver_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomUriResolver_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomUriResolver_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomUriResolver_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomUriResolver_Access_Array_Access is (if Value /= null and then Value.all in CustomUriResolver_Access_Array_Object'Class then CustomUriResolver_Access_Array_Object'Class (Value.all).Value else null);
   type CustomUriResolver_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomUriResolver_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomUriResolver_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomUriResolver_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomUriResolver_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomUriResolver_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomUriResolver_Access_Array_Access_Array_Object'Class then CustomUriResolver_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.CustomUriResolver_Package_References;

with org.allbinary.data.tree.dom.CustomUriResolver_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.xml.transform.Source_Package; use javax.xml.transform.Source_Package;
--  with javax.xml.transform.TransformerException_Package; use javax.xml.transform.TransformerException_Package;
--  with javax.xml.transform.URIResolver_Package; use javax.xml.transform.URIResolver_Package;
--  with javax.xml.transform.stream.StreamSource_Package; use javax.xml.transform.stream.StreamSource_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.data.tree.dom.URIResolverStrings_Package;
with org.allbinary.data.tree.dom.URIResolverStrings_Package_References;
limited with org.allbinary.data.tree.dom.BasicUriResolver_Package;
with org.allbinary.data.tree.dom.BasicUriResolver_Package_References;

package org.allbinary.data.tree.dom.CustomUriResolver_Package is

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
   subtype URIResolverStrings_Access is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access;
   use type URIResolverStrings_Access;
   subtype URIResolverStrings_Access_Array is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array;
   use type URIResolverStrings_Access_Array;
   subtype URIResolverStrings_Access_Array_Access is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array_Access;
   use type URIResolverStrings_Access_Array_Access;
   subtype URIResolverStrings_Access_Array_Access_Array is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array_Access_Array;
   use type URIResolverStrings_Access_Array_Access_Array;
   subtype URIResolverStrings_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array_Access_Array_Access;
   use type URIResolverStrings_Access_Array_Access_Array_Access;
   subtype BasicUriResolver_Access is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access;
   use type BasicUriResolver_Access;
   subtype BasicUriResolver_Access_Array is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array;
   use type BasicUriResolver_Access_Array;
   subtype BasicUriResolver_Access_Array_Access is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array_Access;
   use type BasicUriResolver_Access_Array_Access;
   subtype BasicUriResolver_Access_Array_Access_Array is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array_Access_Array;
   use type BasicUriResolver_Access_Array_Access_Array;
   subtype BasicUriResolver_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array_Access_Array_Access;
   use type BasicUriResolver_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomUriResolver_Access is org.allbinary.data.tree.dom.CustomUriResolver_Package_References.CustomUriResolver_Access;
   function "=" (Left, Right : CustomUriResolver_Access) return Boolean renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References."=";
   subtype CustomUriResolver_Access_Array is org.allbinary.data.tree.dom.CustomUriResolver_Package_References.CustomUriResolver_Access_Array;
   function "=" (Left, Right : CustomUriResolver_Access_Array) return Boolean renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References."=";
   subtype CustomUriResolver_Access_Array_Access is org.allbinary.data.tree.dom.CustomUriResolver_Package_References.CustomUriResolver_Access_Array_Access;
   function "=" (Left, Right : CustomUriResolver_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References."=";
   function Java_Box (Value : CustomUriResolver_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References.Java_Box;
   function Java_Unbox_CustomUriResolver_Access_Array (Value : access Java_Object'Class) return CustomUriResolver_Access_Array_Access renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References.Java_Unbox_CustomUriResolver_Access_Array;
   subtype CustomUriResolver_Access_Array_Access_Array is org.allbinary.data.tree.dom.CustomUriResolver_Package_References.CustomUriResolver_Access_Array_Access_Array;
   function "=" (Left, Right : CustomUriResolver_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References."=";
   subtype CustomUriResolver_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.CustomUriResolver_Package_References.CustomUriResolver_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomUriResolver_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References."=";
   function Java_Box (Value : CustomUriResolver_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References.Java_Box;
   function Java_Unbox_CustomUriResolver_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomUriResolver_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.CustomUriResolver_Package_References.Java_Unbox_CustomUriResolver_Access_Array_Access_Array;

   type CustomUriResolver is new Java_Object with record
      logUtil : LogUtil_Access;
      uriResolverStrings : URIResolverStrings_Access;
      path : Unbounded_String;
      basicURIResolver : BasicUriResolver_Access;
   end record;

   procedure Initialize (This : in out CustomUriResolver'Class; path : Unbounded_String; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class);
   function Create (path : Unbounded_String; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class) return CustomUriResolver_Access;
   function resolve (This : in out CustomUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access;
   procedure resolve (This : in out CustomUriResolver; href : Unbounded_String; base : Unbounded_String);
   function toString (This : in out CustomUriResolver) return Unbounded_String;

end org.allbinary.data.tree.dom.CustomUriResolver_Package;


