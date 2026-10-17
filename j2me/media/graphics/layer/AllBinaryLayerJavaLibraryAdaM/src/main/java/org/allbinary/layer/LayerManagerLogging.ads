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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package; use org.allbinary.layer.LayerManagerLoggingBase_Package;

package org.allbinary.layer.LayerManagerLogging_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type LayerManagerLogging is tagged;
   type LayerManagerLogging_Access is access all LayerManagerLogging'Class;
   type LayerManagerLogging_Access_Array is array (Natural range <>) of LayerManagerLogging_Access;
   type LayerManagerLogging_Access_Array_Access is access all LayerManagerLogging_Access_Array;

   type LayerManagerLogging is new LayerManagerLoggingBase with record
      logUtil : LogUtil_Access;
      stringBuilder : StringMaker_Access;
      APPEND : Unbounded_String;
      APPEND_U : Unbounded_String;
      U_AT_U : Unbounded_String;
      ATTEMPT_REMOVE_U : Unbounded_String;
      REMOVE_U : Unbounded_String;
      REMOVE : Unbounded_String;
      DID_NOT_REMOVE : Unbounded_String;
      CLEAR : Unbounded_String;
   end record;
   instance : LayerManagerLogging_Access;
   removeFailed : Boolean;

   procedure Initialize (This : in out LayerManagerLogging'Class);
   function Create return LayerManagerLogging_Access;
   function getInstance return LayerManagerLogging_Access;
   procedure getInstance;
   procedure append_Case (This : in out LayerManagerLogging; layerInterface : AllBinaryLayer_Access);
   procedure appendAt (This : in out LayerManagerLogging; layerInterface : AllBinaryLayer_Access; index : Integer);
   procedure remove_Case (This : in out LayerManagerLogging; layerInterface : AllBinaryLayer_Access);
   procedure removeResult (This : in out LayerManagerLogging; layerManager : LayerManager_Access; layerInterface : AllBinaryLayer_Access; result : Boolean);
   procedure log (This : in out LayerManagerLogging; layerManager : LayerManager_Access);
   procedure clear_Case (This : in out LayerManagerLogging);

end org.allbinary.layer.LayerManagerLogging_Package;


