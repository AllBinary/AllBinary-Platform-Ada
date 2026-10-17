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


package body org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out GenericTrackingLayerCircularStaticPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericTrackingLayerCircularStaticPool'Class) is
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericTrackingLayerCircularStaticPool_Access is
      This : constant GenericTrackingLayerCircularStaticPool_Access := new GenericTrackingLayerCircularStaticPool;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return GenericTrackingLayerCircularStaticPool_Access is
   begin
        return GenericTrackingLayerCircularStaticPool_Package.SINGLETON;
   end getInstance;

   procedure getInstance is
      Java_Result : constant GenericTrackingLayerCircularStaticPool_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := GenericTrackingLayerCircularStaticPool_Package.Create;

end org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool_Package;


