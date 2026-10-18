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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.collision.SourceCollisionHelper_Package; use org.allbinary.game.collision.SourceCollisionHelper_Package;

package body org.allbinary.game.collision.CollidableHelperFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   procedure Initialize_Fields (This : in out CollidableHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CollidableHelperFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CollidableHelperFactory_Access is
      This : constant CollidableHelperFactory_Access := new CollidableHelperFactory;
   begin
      CollidableHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CollisionHelper_Access is
   begin
        if Features_Package.getInstance.isFeature (GameFeatureFactory_Package.getInstance.COLLISIONS_WITH_SOURCE) then
            return CollisionHelper_Package.Create (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER);
        else
            return CollisionHelper_Access (SourceCollisionHelper_Package.Create (AllBinaryLayer_Package.NULL_ALLBINARY_LAYER));
        end if;
   end getInstance;

end org.allbinary.game.collision.CollidableHelperFactory_Package;


