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
limited with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package;
package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References is
   type BasicTopViewGeographicMapCellType_Access is access all org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package.BasicTopViewGeographicMapCellType'Class;
   type BasicTopViewGeographicMapCellType_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellType_Access;
   type BasicTopViewGeographicMapCellType_Access_Array_Access is access all BasicTopViewGeographicMapCellType_Access_Array;
   type BasicTopViewGeographicMapCellType_Access_Array_Access_Array is array (Natural range <>) of BasicTopViewGeographicMapCellType_Access_Array_Access;
   type BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access is access all BasicTopViewGeographicMapCellType_Access_Array_Access_Array;
   type BasicTopViewGeographicMapCellType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTopViewGeographicMapCellType_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTopViewGeographicMapCellType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTopViewGeographicMapCellType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTopViewGeographicMapCellType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTopViewGeographicMapCellType_Access_Array_Access is (if Value /= null and then Value.all in BasicTopViewGeographicMapCellType_Access_Array_Object'Class then BasicTopViewGeographicMapCellType_Access_Array_Object'Class (Value.all).Value else null);
   type BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicTopViewGeographicMapCellType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Object'Class then BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References;

with org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
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
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
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


   subtype BasicTopViewGeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References."=";
   subtype BasicTopViewGeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array;
   function "=" (Left, Right : BasicTopViewGeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References."=";
   subtype BasicTopViewGeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References."=";
   function Java_Box (Value : BasicTopViewGeographicMapCellType_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.Java_Box;
   function Java_Unbox_BasicTopViewGeographicMapCellType_Access_Array (Value : access Java_Object'Class) return BasicTopViewGeographicMapCellType_Access_Array_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.Java_Unbox_BasicTopViewGeographicMapCellType_Access_Array;
   subtype BasicTopViewGeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTopViewGeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References."=";
   subtype BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References."=";
   function Java_Box (Value : BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.Java_Box;
   function Java_Unbox_BasicTopViewGeographicMapCellType_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicTopViewGeographicMapCellType_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package_References.Java_Unbox_BasicTopViewGeographicMapCellType_Access_Array_Access_Array;

   type BasicTopViewGeographicMapCellType is new Java_Object with record
      logUtil : LogUtil_Access;
      name : Unbounded_String;
      cost : Integer;
      types : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out BasicTopViewGeographicMapCellType'Class; name : Unbounded_String; types_Param : access BasicArrayList_Package.BasicArrayList'Class; cost : Integer);
   function Create (name : Unbounded_String; types_Param : access BasicArrayList_Package.BasicArrayList'Class; cost : Integer) return BasicTopViewGeographicMapCellType_Access;
   function createType (name : Unbounded_String; type_Id : Integer; cost : Integer) return BasicTopViewGeographicMapCellType_Access;
   procedure createType (name : Unbounded_String; type_Id : Integer; cost : Integer);
   function isType (This : in out BasicTopViewGeographicMapCellType; type_Id_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean;
   procedure isType (This : in out BasicTopViewGeographicMapCellType; type_Id_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class);
   function hasType (This : in out BasicTopViewGeographicMapCellType; type_Id : Integer) return Boolean;
   procedure hasType (This : in out BasicTopViewGeographicMapCellType; type_Id : Integer);
   function getTypes (This : in out BasicTopViewGeographicMapCellType) return Integer_Array_Access;
   function toString (This : in out BasicTopViewGeographicMapCellType) return Unbounded_String;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellType_Package;


