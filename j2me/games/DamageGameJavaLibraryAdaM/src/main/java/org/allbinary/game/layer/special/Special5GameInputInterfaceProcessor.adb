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


package body org.allbinary.game.layer.special.Special5GameInputInterfaceProcessor_Package is

   procedure Initialize_Fields (This : in out Special5GameInputInterfaceProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out Special5GameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access) is
   begin
        SpecialGameInputInterfaceProcessor_Package.Initialize (This, collidableDestroyableDamageableLayer);
   end Initialize;

   function Create (collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access) return Special5GameInputInterfaceProcessor_Access is
      This : constant Special5GameInputInterfaceProcessor_Access := new Special5GameInputInterfaceProcessor;
   begin
      Special5GameInputInterfaceProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out Special5GameInputInterfaceProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.specialGameInputInterface.special5 (allbinaryLayerManager, gameKeyEvent);
   end processEvent;

end org.allbinary.game.layer.special.Special5GameInputInterfaceProcessor_Package;


