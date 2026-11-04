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

limited with org.allbinary.layer.LayerManagerLogging_Package;
package org.allbinary.layer.LayerManagerLogging_Package_References is
   type LayerManagerLogging_Access is access all org.allbinary.layer.LayerManagerLogging_Package.LayerManagerLogging'Class;
   type LayerManagerLogging_Access_Array is array (Natural range <>) of LayerManagerLogging_Access;
   type LayerManagerLogging_Access_Array_Access is access all LayerManagerLogging_Access_Array;
   type LayerManagerLogging_Access_Array_Access_Array is array (Natural range <>) of LayerManagerLogging_Access_Array_Access;
   type LayerManagerLogging_Access_Array_Access_Array_Access is access all LayerManagerLogging_Access_Array_Access_Array;
end org.allbinary.layer.LayerManagerLogging_Package_References;

with org.allbinary.layer.LayerManagerLogging_Package_References;
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
limited with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.layer.LayerManagerLoggingBase_Package; use org.allbinary.layer.LayerManagerLoggingBase_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;

package org.allbinary.layer.LayerManagerLogging_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   use type StringMaker_Access;
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   use type StringMaker_Access_Array;
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   use type StringMaker_Access_Array_Access;
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   use type StringMaker_Access_Array_Access_Array;
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   use type StringMaker_Access_Array_Access_Array_Access;
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
   subtype LayerManager_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access;
   use type LayerManager_Access;
   subtype LayerManager_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array;
   use type LayerManager_Access_Array;
   subtype LayerManager_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access;
   use type LayerManager_Access_Array_Access;
   subtype LayerManager_Access_Array_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array;
   use type LayerManager_Access_Array_Access_Array;
   subtype LayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array_Access;
   use type LayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LayerManagerLogging_Access is org.allbinary.layer.LayerManagerLogging_Package_References.LayerManagerLogging_Access;
   function "=" (Left, Right : LayerManagerLogging_Access) return Boolean renames org.allbinary.layer.LayerManagerLogging_Package_References."=";
   subtype LayerManagerLogging_Access_Array is org.allbinary.layer.LayerManagerLogging_Package_References.LayerManagerLogging_Access_Array;
   function "=" (Left, Right : LayerManagerLogging_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerLogging_Package_References."=";
   subtype LayerManagerLogging_Access_Array_Access is org.allbinary.layer.LayerManagerLogging_Package_References.LayerManagerLogging_Access_Array_Access;
   function "=" (Left, Right : LayerManagerLogging_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerLogging_Package_References."=";
   subtype LayerManagerLogging_Access_Array_Access_Array is org.allbinary.layer.LayerManagerLogging_Package_References.LayerManagerLogging_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerLogging_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerManagerLogging_Package_References."=";
   subtype LayerManagerLogging_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManagerLogging_Package_References.LayerManagerLogging_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerLogging_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManagerLogging_Package_References."=";

   type LayerManagerLogging is new LayerManagerLoggingBase with record
      logUtil : LogUtil_Access;
      stringBuilder : StringMaker_Access;
      APPEND_Field : Unbounded_String;
      APPEND_U : Unbounded_String;
      U_AT_U : Unbounded_String;
      ATTEMPT_REMOVE_U : Unbounded_String;
      REMOVE_U : Unbounded_String;
      REMOVE_Field : Unbounded_String;
      DID_NOT_REMOVE : Unbounded_String;
      CLEAR_Field : Unbounded_String;
   end record;
   instance : LayerManagerLogging_Access;
   removeFailed : Boolean;

   procedure Initialize (This : in out LayerManagerLogging'Class);
   function Create return LayerManagerLogging_Access;
   function getInstance return LayerManagerLogging_Access;
   procedure append (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure appendAt (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer);
   procedure remove (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure removeResult (This : in out LayerManagerLogging; layerManager_Param : access LayerManager_Package.LayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; result : Boolean);
   procedure log (This : in out LayerManagerLogging; layerManager_Param : access LayerManager_Package.LayerManager'Class);
   procedure clear (This : in out LayerManagerLogging);

end org.allbinary.layer.LayerManagerLogging_Package;


