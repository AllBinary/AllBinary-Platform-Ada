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


with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.LayerManagerLoggingBase_Package is

   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype LayerManager_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access;
   function "=" (Left, Right : LayerManager_Access) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array;
   function "=" (Left, Right : LayerManager_Access_Array) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access;
   function "=" (Left, Right : LayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   procedure Initialize_Fields (This : in out LayerManagerLoggingBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerManagerLoggingBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerManagerLoggingBase_Access is
      This : constant LayerManagerLoggingBase_Access := new LayerManagerLoggingBase;
   begin
      LayerManagerLoggingBase_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure append (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end append;

   procedure appendAt (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end appendAt;

   procedure remove (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end remove;

   procedure removeResult (This : in out LayerManagerLoggingBase; layerManager_Param : access LayerManager_Package.LayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; result : Boolean) is
      layerManager : constant LayerManager_Access := LayerManager_Access (layerManager_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end removeResult;

   procedure clear (This : in out LayerManagerLoggingBase) is
   begin
        null;
   end clear;

end org.allbinary.layer.LayerManagerLoggingBase_Package;


