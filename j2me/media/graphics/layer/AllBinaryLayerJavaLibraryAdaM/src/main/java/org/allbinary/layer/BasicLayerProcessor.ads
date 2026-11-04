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

limited with org.allbinary.layer.BasicLayerProcessor_Package;
package org.allbinary.layer.BasicLayerProcessor_Package_References is
   type BasicLayerProcessor_Access is access all org.allbinary.layer.BasicLayerProcessor_Package.BasicLayerProcessor'Class;
   type BasicLayerProcessor_Access_Array is array (Natural range <>) of BasicLayerProcessor_Access;
   type BasicLayerProcessor_Access_Array_Access is access all BasicLayerProcessor_Access_Array;
   type BasicLayerProcessor_Access_Array_Access_Array is array (Natural range <>) of BasicLayerProcessor_Access_Array_Access;
   type BasicLayerProcessor_Access_Array_Access_Array_Access is access all BasicLayerProcessor_Access_Array_Access_Array;
end org.allbinary.layer.BasicLayerProcessor_Package_References;

with org.allbinary.layer.BasicLayerProcessor_Package_References;
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
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;

package org.allbinary.layer.BasicLayerProcessor_Package is

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
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicLayerProcessor_Access is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access;
   function "=" (Left, Right : BasicLayerProcessor_Access) return Boolean renames org.allbinary.layer.BasicLayerProcessor_Package_References."=";
   subtype BasicLayerProcessor_Access_Array is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array;
   function "=" (Left, Right : BasicLayerProcessor_Access_Array) return Boolean renames org.allbinary.layer.BasicLayerProcessor_Package_References."=";
   subtype BasicLayerProcessor_Access_Array_Access is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array_Access;
   function "=" (Left, Right : BasicLayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.layer.BasicLayerProcessor_Package_References."=";
   subtype BasicLayerProcessor_Access_Array_Access_Array is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicLayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.BasicLayerProcessor_Package_References."=";
   subtype BasicLayerProcessor_Access_Array_Access_Array_Access is org.allbinary.layer.BasicLayerProcessor_Package_References.BasicLayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicLayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.BasicLayerProcessor_Package_References."=";

   type BasicLayerProcessor is new Java_Object with record
      logUtil : LogUtil_Access;
      list : BasicArrayList_Access;
   end record;
   NULL_LAYER_PROCESSOR : BasicLayerProcessor_Access;

   procedure Initialize (This : in out BasicLayerProcessor'Class);
   function Create return BasicLayerProcessor_Access;
   procedure add (This : in out BasicLayerProcessor; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure process (This : in out BasicLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function getList (This : in out BasicLayerProcessor) return BasicArrayList_Access;

end org.allbinary.layer.BasicLayerProcessor_Package;


