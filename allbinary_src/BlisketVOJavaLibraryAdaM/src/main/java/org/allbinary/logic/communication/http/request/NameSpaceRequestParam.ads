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
limited with org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package;
package org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References is
   type NameSpaceRequestParam_Access is access all org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package.NameSpaceRequestParam'Class;
   type NameSpaceRequestParam_Access_Array is array (Natural range <>) of NameSpaceRequestParam_Access;
   type NameSpaceRequestParam_Access_Array_Access is access all NameSpaceRequestParam_Access_Array;
   type NameSpaceRequestParam_Access_Array_Access_Array is array (Natural range <>) of NameSpaceRequestParam_Access_Array_Access;
   type NameSpaceRequestParam_Access_Array_Access_Array_Access is access all NameSpaceRequestParam_Access_Array_Access_Array;
   type NameSpaceRequestParam_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NameSpaceRequestParam_Access_Array_Access;
   end record;
   function Java_Box (Value : NameSpaceRequestParam_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NameSpaceRequestParam_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NameSpaceRequestParam_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NameSpaceRequestParam_Access_Array_Access is (if Value /= null and then Value.all in NameSpaceRequestParam_Access_Array_Object'Class then NameSpaceRequestParam_Access_Array_Object'Class (Value.all).Value else null);
   type NameSpaceRequestParam_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NameSpaceRequestParam_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NameSpaceRequestParam_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NameSpaceRequestParam_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NameSpaceRequestParam_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NameSpaceRequestParam_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NameSpaceRequestParam_Access_Array_Access_Array_Object'Class then NameSpaceRequestParam_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References;

with org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NameSpaceRequestParam_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access;
   function "=" (Left, Right : NameSpaceRequestParam_Access) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References."=";
   subtype NameSpaceRequestParam_Access_Array is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array;
   function "=" (Left, Right : NameSpaceRequestParam_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References."=";
   subtype NameSpaceRequestParam_Access_Array_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array_Access;
   function "=" (Left, Right : NameSpaceRequestParam_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References."=";
   function Java_Box (Value : NameSpaceRequestParam_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.Java_Box;
   function Java_Unbox_NameSpaceRequestParam_Access_Array (Value : access Java_Object'Class) return NameSpaceRequestParam_Access_Array_Access renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.Java_Unbox_NameSpaceRequestParam_Access_Array;
   subtype NameSpaceRequestParam_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array_Access_Array;
   function "=" (Left, Right : NameSpaceRequestParam_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References."=";
   subtype NameSpaceRequestParam_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.NameSpaceRequestParam_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NameSpaceRequestParam_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References."=";
   function Java_Box (Value : NameSpaceRequestParam_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.Java_Box;
   function Java_Unbox_NameSpaceRequestParam_Access_Array_Access_Array (Value : access Java_Object'Class) return NameSpaceRequestParam_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package_References.Java_Unbox_NameSpaceRequestParam_Access_Array_Access_Array;

   type NameSpaceRequestParam is new Java_Object with record
      logUtil : LogUtil_Access;
      nameSpaceVector : BasicArrayList_Access;
      nameSpacePropertiesHashMap : HashMap_Access;
      value : Unbounded_String;
   end record;

   procedure Initialize (This : in out NameSpaceRequestParam'Class; nameSpace : Unbounded_String; value : Unbounded_String);
   function Create (nameSpace : Unbounded_String; value : Unbounded_String) return NameSpaceRequestParam_Access;
   function getPackages (This : in out NameSpaceRequestParam) return BasicArrayList_Access;
   function getPackageProperties (This : in out NameSpaceRequestParam; packageIndex : Integer) return HashMap_Access;
   procedure getPackageProperties (This : in out NameSpaceRequestParam; packageIndex : Integer);
   function getValue (This : in out NameSpaceRequestParam) return Unbounded_String;
   function generatePackagePropertiesHashMap (This : in out NameSpaceRequestParam; properties : Unbounded_String) return HashMap_Access;
   procedure generatePackagePropertiesHashMap (This : in out NameSpaceRequestParam; properties : Unbounded_String);

end org.allbinary.logic.communication.http.request.NameSpaceRequestParam_Package;


