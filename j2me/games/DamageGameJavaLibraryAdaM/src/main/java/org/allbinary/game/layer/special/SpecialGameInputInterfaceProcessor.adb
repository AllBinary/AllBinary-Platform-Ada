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


package body org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package is

   procedure Initialize_Fields (This : in out SpecialGameInputInterfaceProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialGameInputInterfaceProcessor'Class; collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface'Class) is
      collidableDestroyableDamageableLayer : SpecialGameInputInterface_Access := SpecialGameInputInterface_Access (collidableDestroyableDamageableLayer_Param);
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.specialGameInputInterface := collidableDestroyableDamageableLayer;
   end Initialize;

   function Create (collidableDestroyableDamageableLayer_Param : access SpecialGameInputInterface'Class) return SpecialGameInputInterfaceProcessor_Access is
      This : constant SpecialGameInputInterfaceProcessor_Access := new SpecialGameInputInterfaceProcessor;
   begin
      SpecialGameInputInterfaceProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer_Param);
      return This;
   end Create;

end org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor_Package;


