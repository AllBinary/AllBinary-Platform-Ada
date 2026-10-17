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


package body org.allbinary.game.layer.special.Special4GameInputInterfaceProcessor_Package is

   procedure Initialize_Fields (This : in out Special4GameInputInterfaceProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out Special4GameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access) is
   begin
        SpecialGameInputInterfaceProcessor_Package.Initialize (This, collidableDestroyableDamageableLayer);
   end Initialize;

   function Create (collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access) return Special4GameInputInterfaceProcessor_Access is
      This : constant Special4GameInputInterfaceProcessor_Access := new Special4GameInputInterfaceProcessor;
   begin
      Special4GameInputInterfaceProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out Special4GameInputInterfaceProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.specialGameInputInterface.special4 (allbinaryLayerManager, gameKeyEvent);
   end processEvent;

end org.allbinary.game.layer.special.Special4GameInputInterfaceProcessor_Package;


