-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;
with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.collision.CollidableInterface_Package;
with org.allbinary.game.collision.CollidableInterfaceCompositeInterface_Package;
with org.allbinary.game.collision.CollisionProcessor_Package;
with org.allbinary.game.collision.CollisionType_Package;
with org.allbinary.game.collision.LayerCollisionUtil_Package;

package body org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package is

   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableBaseBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.collision.CollidableBaseBehavior_Package_References."=";
   procedure Initialize_Fields (This : in out CollidableBaseBehaviorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CollidableBaseBehaviorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CollidableBaseBehaviorFactory_Access is
      This : constant CollidableBaseBehaviorFactory_Access := new CollidableBaseBehaviorFactory;
   begin
      CollidableBaseBehaviorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function createBehavior (This : in out CollidableBaseBehaviorFactory) return CollidableBaseBehavior_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end createBehavior;

end org.allbinary.game.collision.CollidableBaseBehaviorFactory_Package;


