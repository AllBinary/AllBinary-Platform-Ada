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
limited with org.allbinary.data.tree.dom.StoreUriResolver_Package;
package org.allbinary.data.tree.dom.StoreUriResolver_Package_References is
   type StoreUriResolver_Access is access all org.allbinary.data.tree.dom.StoreUriResolver_Package.StoreUriResolver'Class;
   type StoreUriResolver_Access_Array is array (Natural range <>) of StoreUriResolver_Access;
   type StoreUriResolver_Access_Array_Access is access all StoreUriResolver_Access_Array;
   type StoreUriResolver_Access_Array_Access_Array is array (Natural range <>) of StoreUriResolver_Access_Array_Access;
   type StoreUriResolver_Access_Array_Access_Array_Access is access all StoreUriResolver_Access_Array_Access_Array;
   type StoreUriResolver_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreUriResolver_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreUriResolver_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreUriResolver_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreUriResolver_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreUriResolver_Access_Array_Access is (if Value /= null and then Value.all in StoreUriResolver_Access_Array_Object'Class then StoreUriResolver_Access_Array_Object'Class (Value.all).Value else null);
   type StoreUriResolver_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : StoreUriResolver_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : StoreUriResolver_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new StoreUriResolver_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_StoreUriResolver_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return StoreUriResolver_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in StoreUriResolver_Access_Array_Access_Array_Object'Class then StoreUriResolver_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.StoreUriResolver_Package_References;

with org.allbinary.data.tree.dom.StoreUriResolver_Package_References;
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
limited with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package_References;
limited with org.allbinary.data.tree.dom.URIResolverStrings_Package;
with org.allbinary.data.tree.dom.URIResolverStrings_Package_References;
limited with org.allbinary.data.tree.dom.BasicUriResolver_Package;
with org.allbinary.data.tree.dom.BasicUriResolver_Package_References;

package org.allbinary.data.tree.dom.StoreUriResolver_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
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


   subtype StoreUriResolver_Access is org.allbinary.data.tree.dom.StoreUriResolver_Package_References.StoreUriResolver_Access;
   function "=" (Left, Right : StoreUriResolver_Access) return Boolean renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References."=";
   subtype StoreUriResolver_Access_Array is org.allbinary.data.tree.dom.StoreUriResolver_Package_References.StoreUriResolver_Access_Array;
   function "=" (Left, Right : StoreUriResolver_Access_Array) return Boolean renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References."=";
   subtype StoreUriResolver_Access_Array_Access is org.allbinary.data.tree.dom.StoreUriResolver_Package_References.StoreUriResolver_Access_Array_Access;
   function "=" (Left, Right : StoreUriResolver_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References."=";
   function Java_Box (Value : StoreUriResolver_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References.Java_Box;
   function Java_Unbox_StoreUriResolver_Access_Array (Value : access Java_Object'Class) return StoreUriResolver_Access_Array_Access renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References.Java_Unbox_StoreUriResolver_Access_Array;
   subtype StoreUriResolver_Access_Array_Access_Array is org.allbinary.data.tree.dom.StoreUriResolver_Package_References.StoreUriResolver_Access_Array_Access_Array;
   function "=" (Left, Right : StoreUriResolver_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References."=";
   subtype StoreUriResolver_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.StoreUriResolver_Package_References.StoreUriResolver_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreUriResolver_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References."=";
   function Java_Box (Value : StoreUriResolver_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References.Java_Box;
   function Java_Unbox_StoreUriResolver_Access_Array_Access_Array (Value : access Java_Object'Class) return StoreUriResolver_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.StoreUriResolver_Package_References.Java_Unbox_StoreUriResolver_Access_Array_Access_Array;

   type StoreUriResolver is new Java_Object with record
      logUtil : LogUtil_Access;
      uriResolverStrings : URIResolverStrings_Access;
      basicURIResolver : BasicUriResolver_Access;
      parentTransformInfoInterface : TransformInfoInterface_Access;
   end record;

   procedure Initialize (This : in out StoreUriResolver'Class; parentTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class);
   function Create (parentTransformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; basicURIResolver_Param : access BasicUriResolver_Package.BasicUriResolver'Class) return StoreUriResolver_Access;
   function resolve (This : in out StoreUriResolver; href : Unbounded_String; base : Unbounded_String) return Source_Access;
   procedure resolve (This : in out StoreUriResolver; href : Unbounded_String; base : Unbounded_String);
   function toString (This : in out StoreUriResolver) return Unbounded_String;

end org.allbinary.data.tree.dom.StoreUriResolver_Package;


