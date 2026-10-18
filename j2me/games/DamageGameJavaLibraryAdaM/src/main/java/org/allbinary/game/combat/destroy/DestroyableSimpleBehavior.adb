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


package body org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package is

   procedure Initialize_Fields (This : in out DestroyableSimpleBehavior'Class) is
   begin
      null;
      
      This.destroyed := False;
   end Initialize_Fields;


   procedure Initialize (This : in out DestroyableSimpleBehavior'Class; ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) is
      ownerLayer : constant CollidableCompositeLayer_Access := CollidableCompositeLayer_Access (ownerLayer_Param);
   begin
      DestroyableBaseBehavior_Package.Initialize (This);
      Initialize_Fields (This);
        This.ownerLayer := ownerLayer;
   end Initialize;

   function Create (ownerLayer_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class) return DestroyableSimpleBehavior_Access is
      This : constant DestroyableSimpleBehavior_Access := new DestroyableSimpleBehavior;
   begin
      DestroyableSimpleBehavior_Package.Initialize (This.all, ownerLayer_Param);
      return This;
   end Create;

   function isDestroyed (This : in out DestroyableSimpleBehavior) return Boolean is
   begin
        return This.destroyed;
   end isDestroyed;

   procedure setDestroyed (This : in out DestroyableSimpleBehavior; destroyed : Boolean) is
   begin
        This.destroyed := destroyed;
        if DestroyableSimpleBehavior'Class (This).isDestroyed then
            DestroyedLayerProcessor_Package.getInstance.add (This.ownerLayer);
        end if;
   end setDestroyed;

end org.allbinary.game.combat.destroy.DestroyableSimpleBehavior_Package;


