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
   procedure append (This : in out LayerManagerLoggingBase; layerInterface : AllBinaryLayer_Access) is
   begin
        null;
   end append;

   procedure appendAt (This : in out LayerManagerLoggingBase; layerInterface : AllBinaryLayer_Access; index : Integer) is
   begin
        null;
   end appendAt;

   procedure remove (This : in out LayerManagerLoggingBase; layerInterface : AllBinaryLayer_Access) is
   begin
        null;
   end remove;

   procedure removeResult (This : in out LayerManagerLoggingBase; layerManager : LayerManager_Access; layerInterface : AllBinaryLayer_Access; result : Boolean) is
   begin
        null;
   end removeResult;

   procedure clear (This : in out LayerManagerLoggingBase) is
   begin
        null;
   end clear;

end org.allbinary.layer.LayerManagerLoggingBase_Package;


