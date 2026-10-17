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


package body org.allbinary.game.collision.CollisionTypeFactory_Package is

   procedure Initialize_Fields (This : in out CollisionTypeFactory'Class) is
   begin
      null;
      This.NONE := CollisionType_Package.Create (To_Unbounded_String ("None"));
      This.DAMAGE := CollisionType_Package.Create (To_Unbounded_String ("Damage"));
      This.PICKUP := CollisionType_Package.Create (To_Unbounded_String ("Pickup"));
      This.COLLISION := CollisionType_Package.Create (To_Unbounded_String ("Collision"));
   end Initialize_Fields;

   procedure Initialize (This : in out CollisionTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CollisionTypeFactory_Access is
      This : constant CollisionTypeFactory_Access := new CollisionTypeFactory;
   begin
      CollisionTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CollisionTypeFactory_Access is
   begin
        return CollisionTypeFactory_Package.SINGLETON;
   end getInstance;

begin
   null;
   SINGLETON := CollisionTypeFactory_Package.Create;

end org.allbinary.game.collision.CollisionTypeFactory_Package;


