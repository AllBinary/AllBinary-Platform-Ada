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


package body org.allbinary.layer.event.LayerManagerEventListener_Package is

   procedure Initialize_Fields (This : in out LayerManagerEventListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LayerManagerEventListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerManagerEventListener_Access is
      This : constant LayerManagerEventListener_Access := new LayerManagerEventListener;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out LayerManagerEventListener; eventObject : AllBinaryEventObject_Access) is
   begin
        null;
   end onEvent;

   --  throws Exception
   procedure onCreateLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent : LayerManagerEvent_Access) is
   begin
        null;
   end onCreateLayerManagerEvent;

   --  throws Exception
   procedure onDeleteLayerManagerEvent (This : in out LayerManagerEventListener; layerManagerEvent : LayerManagerEvent_Access) is
   begin
        null;
   end onDeleteLayerManagerEvent;

end org.allbinary.layer.event.LayerManagerEventListener_Package;


