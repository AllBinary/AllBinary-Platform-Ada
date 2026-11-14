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
limited with org.allbinary.data.tree.dom.BasicUriResolver_Package;
package org.allbinary.data.tree.dom.BasicUriResolver_Package_References is
   type BasicUriResolver_Access is access all org.allbinary.data.tree.dom.BasicUriResolver_Package.BasicUriResolver'Class;
   type BasicUriResolver_Access_Array is array (Natural range <>) of BasicUriResolver_Access;
   type BasicUriResolver_Access_Array_Access is access all BasicUriResolver_Access_Array;
   type BasicUriResolver_Access_Array_Access_Array is array (Natural range <>) of BasicUriResolver_Access_Array_Access;
   type BasicUriResolver_Access_Array_Access_Array_Access is access all BasicUriResolver_Access_Array_Access_Array;
   type BasicUriResolver_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicUriResolver_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicUriResolver_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicUriResolver_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicUriResolver_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicUriResolver_Access_Array_Access is (if Value /= null and then Value.all in BasicUriResolver_Access_Array_Object'Class then BasicUriResolver_Access_Array_Object'Class (Value.all).Value else null);
   type BasicUriResolver_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicUriResolver_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicUriResolver_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicUriResolver_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicUriResolver_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicUriResolver_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicUriResolver_Access_Array_Access_Array_Object'Class then BasicUriResolver_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.BasicUriResolver_Package_References;

with org.allbinary.data.tree.dom.BasicUriResolver_Package_References;
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

package org.allbinary.data.tree.dom.BasicUriResolver_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype BasicUriResolver_Access is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access;
   function "=" (Left, Right : BasicUriResolver_Access) return Boolean renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References."=";
   subtype BasicUriResolver_Access_Array is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array;
   function "=" (Left, Right : BasicUriResolver_Access_Array) return Boolean renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References."=";
   subtype BasicUriResolver_Access_Array_Access is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array_Access;
   function "=" (Left, Right : BasicUriResolver_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References."=";
   function Java_Box (Value : BasicUriResolver_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References.Java_Box;
   function Java_Unbox_BasicUriResolver_Access_Array (Value : access Java_Object'Class) return BasicUriResolver_Access_Array_Access renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References.Java_Unbox_BasicUriResolver_Access_Array;
   subtype BasicUriResolver_Access_Array_Access_Array is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array_Access_Array;
   function "=" (Left, Right : BasicUriResolver_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References."=";
   subtype BasicUriResolver_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.BasicUriResolver_Package_References.BasicUriResolver_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicUriResolver_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References."=";
   function Java_Box (Value : BasicUriResolver_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References.Java_Box;
   function Java_Unbox_BasicUriResolver_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicUriResolver_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.BasicUriResolver_Package_References.Java_Unbox_BasicUriResolver_Access_Array_Access_Array;

   type BasicUriResolver is new Java_Object with record
      logUtil : LogUtil_Access;
      uriResolverStrings : URIResolverStrings_Access;
      extension : Unbounded_String;
   end record;

   procedure Initialize (This : in out BasicUriResolver'Class; extension : Unbounded_String);
   function Create (extension : Unbounded_String) return BasicUriResolver_Access;
   function getExtension (This : in out BasicUriResolver) return Unbounded_String;
   function resolve (This : in out BasicUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access;
   procedure resolve (This : in out BasicUriResolver; href : Unbounded_String; base : Unbounded_String);
   function toString (This : in out BasicUriResolver) return Unbounded_String;

end org.allbinary.data.tree.dom.BasicUriResolver_Package;


