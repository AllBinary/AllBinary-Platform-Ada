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
limited with org.allbinary.logic.util.cache.BaseCircularPool_Package;
package org.allbinary.logic.util.cache.BaseCircularPool_Package_References is
   type BaseCircularPool_Access is access all org.allbinary.logic.util.cache.BaseCircularPool_Package.BaseCircularPool'Class;
   type BaseCircularPool_Access_Array is array (Natural range <>) of BaseCircularPool_Access;
   type BaseCircularPool_Access_Array_Access is access all BaseCircularPool_Access_Array;
   type BaseCircularPool_Access_Array_Access_Array is array (Natural range <>) of BaseCircularPool_Access_Array_Access;
   type BaseCircularPool_Access_Array_Access_Array_Access is access all BaseCircularPool_Access_Array_Access_Array;
   type BaseCircularPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseCircularPool_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseCircularPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseCircularPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseCircularPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseCircularPool_Access_Array_Access is (if Value /= null and then Value.all in BaseCircularPool_Access_Array_Object'Class then BaseCircularPool_Access_Array_Object'Class (Value.all).Value else null);
   type BaseCircularPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BaseCircularPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BaseCircularPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BaseCircularPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BaseCircularPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BaseCircularPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BaseCircularPool_Access_Array_Access_Array_Object'Class then BaseCircularPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.util.cache.BaseCircularPool_Package_References;

with org.allbinary.logic.util.cache.BaseCircularPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
limited with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package;
with org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References;

package org.allbinary.logic.util.cache.BaseCircularPool_Package is

   package CircularIndexUtil_Package renames Standard.org.allbinary.util.CircularIndexUtil_Package;
   package Reference_Types is
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   use type CircularIndexUtil_Access;
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   use type CircularIndexUtil_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access;
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   use type CircularIndexUtil_Access_Array_Access_Array;
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   use type CircularIndexUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryObjectFactoryInterface_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access;
   use type AllBinaryObjectFactoryInterface_Access;
   subtype AllBinaryObjectFactoryInterface_Access_Array is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array;
   use type AllBinaryObjectFactoryInterface_Access_Array;
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access;
   use type AllBinaryObjectFactoryInterface_Access_Array_Access;
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access_Array is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access_Array;
   use type AllBinaryObjectFactoryInterface_Access_Array_Access_Array;
   subtype AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.AllBinaryObjectFactoryInterface_Package_References.AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access;
   use type AllBinaryObjectFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BaseCircularPool_Access is org.allbinary.logic.util.cache.BaseCircularPool_Package_References.BaseCircularPool_Access;
   function "=" (Left, Right : BaseCircularPool_Access) return Boolean renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References."=";
   subtype BaseCircularPool_Access_Array is org.allbinary.logic.util.cache.BaseCircularPool_Package_References.BaseCircularPool_Access_Array;
   function "=" (Left, Right : BaseCircularPool_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References."=";
   subtype BaseCircularPool_Access_Array_Access is org.allbinary.logic.util.cache.BaseCircularPool_Package_References.BaseCircularPool_Access_Array_Access;
   function "=" (Left, Right : BaseCircularPool_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References."=";
   function Java_Box (Value : BaseCircularPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References.Java_Box;
   function Java_Unbox_BaseCircularPool_Access_Array (Value : access Java_Object'Class) return BaseCircularPool_Access_Array_Access renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References.Java_Unbox_BaseCircularPool_Access_Array;
   subtype BaseCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.cache.BaseCircularPool_Package_References.BaseCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : BaseCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References."=";
   subtype BaseCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.cache.BaseCircularPool_Package_References.BaseCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BaseCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References."=";
   function Java_Box (Value : BaseCircularPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References.Java_Box;
   function Java_Unbox_BaseCircularPool_Access_Array_Access_Array (Value : access Java_Object'Class) return BaseCircularPool_Access_Array_Access_Array_Access renames org.allbinary.logic.util.cache.BaseCircularPool_Package_References.Java_Unbox_BaseCircularPool_Access_Array_Access_Array;

   type BaseCircularPool is new Java_Object with record
      circularIndexUtil : CircularIndexUtil_Access;
      OBJECT_ARRAY : Java_Object_Access_Array_Access;
   end record;

   procedure Initialize (This : in out BaseCircularPool'Class);
   function Create return BaseCircularPool_Access;
   function getNextInstance (This : in out BaseCircularPool) return Java_Object_Access;
   procedure init (This : in out BaseCircularPool; allBinaryObjectFactoryInterface_Param : access AllBinaryObjectFactoryInterface_Package.AllBinaryObjectFactoryInterface'Class);
   function getInstance (This : in out BaseCircularPool; index : Integer) return Java_Object_Access;
   procedure getInstance (This : in out BaseCircularPool; index : Integer);

end org.allbinary.logic.util.cache.BaseCircularPool_Package;


