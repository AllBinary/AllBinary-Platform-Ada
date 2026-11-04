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


with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.layer.LayerManagerNoDebug_Package is

   procedure Initialize_Fields (This : in out LayerManagerNoDebug'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerManagerNoDebug'Class) is
   begin
      LayerManagerLoggingBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerManagerNoDebug_Access is
      This : constant LayerManagerNoDebug_Access := new LayerManagerNoDebug;
   begin
      LayerManagerNoDebug_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerManagerNoDebug_Access is
   begin
        return LayerManagerNoDebug_Access (LayerManagerNoDebug_Package.instance);
   end getInstance;

begin
   null;
   instance := LayerManagerNoDebug_Package.Create;

end org.allbinary.layer.LayerManagerNoDebug_Package;


