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


package body org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package is

   procedure Initialize_Fields (This : in out DestroyEventFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out DestroyEventFactory'Class; combatGameCanvas : AllBinaryGameCanvas_Access) is
   begin
      Initialize_Fields (This);
        This.combatGameCanvas := combatGameCanvas;
   end Initialize;

   function Create (combatGameCanvas : AllBinaryGameCanvas_Access) return DestroyEventFactory_Access is
      This : constant DestroyEventFactory_Access := new DestroyEventFactory;
   begin
      DestroyEventFactory_Package.Initialize (This.all, combatGameCanvas);
      return This;
   end Create;

   function getInstance (This : in out DestroyEventFactory) return AllBinaryEventObject_Access is
   begin
        return DestroyedEvent_Package.Create (This.combatGameCanvas);
   end getInstance;

end org.allbinary.game.combat.destroy.event.DestroyEventFactory_Package;


