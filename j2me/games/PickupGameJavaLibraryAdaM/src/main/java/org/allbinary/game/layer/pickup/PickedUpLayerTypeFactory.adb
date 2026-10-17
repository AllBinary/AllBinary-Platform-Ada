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


package body org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package is

   procedure Initialize_Fields (This : in out PickedUpLayerTypeFactory'Class) is
   begin
      null;
      This.NONE := PickedUpLayerType_Package.Create (StringUtil_Package.getInstance.NULL_STRING);
      This.BEAM := PickedUpLayerType_Package.Create (To_Unbounded_String ("BEAM"));
      This.MINE := PickedUpLayerType_Package.Create (To_Unbounded_String ("MINE"));
      This.PROJECTILE := PickedUpLayerType_Package.Create (To_Unbounded_String ("PROJECTILE"));
      This.ENHANCEMENT := PickedUpLayerType_Package.Create (To_Unbounded_String ("Enhancement"));
      This.MORPH := PickedUpLayerType_Package.Create (To_Unbounded_String ("Morph"));
      This.PART := PickedUpLayerType_Package.Create (To_Unbounded_String ("Part"));
      This.HEAL := PickedUpLayerType_Package.Create (To_Unbounded_String ("Heal"));
      This.LIFE := PickedUpLayerType_Package.Create (To_Unbounded_String ("Life"));
      This.POINTS := PickedUpLayerType_Package.Create (To_Unbounded_String ("Points"));
   end Initialize_Fields;

   procedure Initialize (This : in out PickedUpLayerTypeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PickedUpLayerTypeFactory_Access is
      This : constant PickedUpLayerTypeFactory_Access := new PickedUpLayerTypeFactory;
   begin
      PickedUpLayerTypeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return PickedUpLayerTypeFactory_Access is
   begin
        return PickedUpLayerTypeFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := PickedUpLayerTypeFactory_Package.Create;

end org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;


