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



package body org.allbinary.game.layer.special.SpecialGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out SpecialGameInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialGameInputProcessor'Class; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.collidableDestroyableDamageableLayer := collidableDestroyableDamageableLayer;
   end Initialize;

   function Create (collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) return SpecialGameInputProcessor_Access is
      This : constant SpecialGameInputProcessor_Access := new SpecialGameInputProcessor;
   begin
      SpecialGameInputProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer_Param);
      return This;
   end Create;

end org.allbinary.game.layer.special.SpecialGameInputProcessor_Package;


