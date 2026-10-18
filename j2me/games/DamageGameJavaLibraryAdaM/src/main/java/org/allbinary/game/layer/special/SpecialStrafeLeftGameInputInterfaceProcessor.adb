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



package body org.allbinary.game.layer.special.SpecialStrafeLeftGameInputInterfaceProcessor_Package is

   procedure Initialize_Fields (This : in out SpecialStrafeLeftGameInputInterfaceProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialStrafeLeftGameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface_Package.SpecialGameInputInterface'Class) is
      collidableDestroyableDamageableLayer : constant SpecialGameInputInterface_Access := SpecialGameInputInterface_Access (collidableDestroyableDamageableLayer_Param);
   begin
        SpecialGameInputInterfaceProcessor_Package.Initialize (This, collidableDestroyableDamageableLayer);
   end Initialize;

   function Create (collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface_Package.SpecialGameInputInterface'Class) return SpecialStrafeLeftGameInputInterfaceProcessor_Access is
      This : constant SpecialStrafeLeftGameInputInterfaceProcessor_Access := new SpecialStrafeLeftGameInputInterfaceProcessor;
   begin
      SpecialStrafeLeftGameInputInterfaceProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out SpecialStrafeLeftGameInputInterfaceProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.specialGameInputInterface.strafeLeft;
   end processEvent;

end org.allbinary.game.layer.special.SpecialStrafeLeftGameInputInterfaceProcessor_Package;


