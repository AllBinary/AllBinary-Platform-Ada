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

limited with org.allbinary.layer.LayerInterfaceFactory_Package;
package org.allbinary.layer.LayerInterfaceFactory_Package_References is
   type LayerInterfaceFactory_Access is access all org.allbinary.layer.LayerInterfaceFactory_Package.LayerInterfaceFactory'Class;
   type LayerInterfaceFactory_Access_Array is array (Natural range <>) of LayerInterfaceFactory_Access;
   type LayerInterfaceFactory_Access_Array_Access is access all LayerInterfaceFactory_Access_Array;
   type LayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of LayerInterfaceFactory_Access_Array_Access;
   type LayerInterfaceFactory_Access_Array_Access_Array_Access is access all LayerInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.layer.LayerInterfaceFactory_Package_References;

with org.allbinary.layer.LayerInterfaceFactory_Package_References;
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
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package org.allbinary.layer.LayerInterfaceFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
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
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
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
   subtype LayerInterfaceFactoryInterface_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access;
   use type LayerInterfaceFactoryInterface_Access;
   subtype LayerInterfaceFactoryInterface_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array;
   use type LayerInterfaceFactoryInterface_Access_Array;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access;
   use type LayerInterfaceFactoryInterface_Access_Array_Access;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type LayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactoryInterface_Package_References.LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type LayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerInterfaceFactory_Access is org.allbinary.layer.LayerInterfaceFactory_Package_References.LayerInterfaceFactory_Access;
   function "=" (Left, Right : LayerInterfaceFactory_Access) return Boolean renames org.allbinary.layer.LayerInterfaceFactory_Package_References."=";
   subtype LayerInterfaceFactory_Access_Array is org.allbinary.layer.LayerInterfaceFactory_Package_References.LayerInterfaceFactory_Access_Array;
   function "=" (Left, Right : LayerInterfaceFactory_Access_Array) return Boolean renames org.allbinary.layer.LayerInterfaceFactory_Package_References."=";
   subtype LayerInterfaceFactory_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactory_Package_References.LayerInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : LayerInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerInterfaceFactory_Package_References."=";
   subtype LayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.layer.LayerInterfaceFactory_Package_References.LayerInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LayerInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerInterfaceFactory_Package_References."=";
   subtype LayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.layer.LayerInterfaceFactory_Package_References.LayerInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerInterfaceFactory_Package_References."=";

   type LayerInterfaceFactory is new Java_Object with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
      HASHTABLE_LABEL : Unbounded_String;
   end record;
   SINGLETON : LayerInterfaceFactory_Access;

   procedure Initialize (This : in out LayerInterfaceFactory'Class);
   function Create return LayerInterfaceFactory_Access;
   function getInstance return LayerInterfaceFactory_Access;
   procedure init (This : in out LayerInterfaceFactory);
   function getNexInstance (This : in out LayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access;
   procedure getNexInstance (This : in out LayerInterfaceFactory; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; x : Integer; y : Integer; z : Integer);
   procedure add (This : in out LayerInterfaceFactory; layerInterfaceFactoryInterface_Param : access LayerInterfaceFactoryInterface_Package.LayerInterfaceFactoryInterface'Class);

end org.allbinary.layer.LayerInterfaceFactory_Package;


