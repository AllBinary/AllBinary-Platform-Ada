--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.SynchObject_Package; use org.allbinary.thread.SynchObject_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.ABSystemWrapper_Package; use org.allbinary.logic.ABSystemWrapper_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package; use org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;

package org.allbinary.layer.LayerManager_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package SynchObject_Package renames Standard.org.allbinary.thread.SynchObject_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ABSystemWrapper_Package renames Standard.org.allbinary.logic.ABSystemWrapper_Package;

   type LayerManager is tagged;
   type LayerManager_Access is access all LayerManager'Class;
   type LayerManager_Access_Array is array (Natural range <>) of LayerManager_Access;
   type LayerManager_Access_Array_Access is access all LayerManager_Access_Array;

   type LayerManager is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      systemWrapper : ABSystemWrapper_Access;
      tsUtil : TsUtil_Access;
      layerManagerLogging : LayerManagerLoggingBase_Access;
      list : BasicArrayList_Access;
      anyType : SynchObject_Access;
   end record;

   procedure Initialize (This : in out LayerManager'Class; layerManagerLogging_Param : access LayerManagerLoggingBase'Class);
   function Create (layerManagerLogging_Param : access LayerManagerLoggingBase'Class) return LayerManager_Access;
   function contains (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer'Class) return Boolean;
   procedure contains (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer'Class);
   procedure update (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer'Class);
   procedure insert (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer'Class);
   procedure append (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer'Class);
   procedure appendAt (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer'Class; index : Integer);
   procedure remove (This : in out LayerManager; layerInterface_Param : access AllBinaryLayer'Class);
   function getLayerAt (This : in out LayerManager; index : Integer) return Layer_Access;
   procedure getLayerAt (This : in out LayerManager; index : Integer);
   function getSize (This : in out LayerManager) return Integer;
   procedure cleanup (This : in out LayerManager);
   procedure paint (This : in out LayerManager; g_Param : access Graphics'Class; x : Integer; y : Integer);

end org.allbinary.layer.LayerManager_Package;


