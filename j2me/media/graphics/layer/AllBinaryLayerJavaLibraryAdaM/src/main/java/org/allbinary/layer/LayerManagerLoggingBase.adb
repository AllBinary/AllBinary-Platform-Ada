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


package body org.allbinary.layer.LayerManagerLoggingBase_Package is

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
   procedure append (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer'Class) is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end append;

   procedure appendAt (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer'Class; index : Integer) is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end appendAt;

   procedure remove (This : in out LayerManagerLoggingBase; layerInterface_Param : access AllBinaryLayer'Class) is
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end remove;

   procedure removeResult (This : in out LayerManagerLoggingBase; layerManager_Param : access LayerManager'Class; layerInterface_Param : access AllBinaryLayer'Class; result : Boolean) is
      layerManager : LayerManager_Access := LayerManager_Access (layerManager_Param);
      layerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        null;
   end removeResult;

   procedure clear (This : in out LayerManagerLoggingBase) is
   begin
        null;
   end clear;

end org.allbinary.layer.LayerManagerLoggingBase_Package;


