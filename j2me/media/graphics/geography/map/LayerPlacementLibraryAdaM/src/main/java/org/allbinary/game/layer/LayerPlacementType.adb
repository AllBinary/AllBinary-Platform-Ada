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


package body org.allbinary.game.layer.LayerPlacementType_Package is

   procedure Initialize_Fields (This : in out LayerPlacementType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LayerPlacementType'Class; type_Id : Integer) is
   begin
      Initialize_Fields (This);
        This.type_Id := type_Id;
   end Initialize;

   function Create (type_Id : Integer) return LayerPlacementType_Access is
      This : constant LayerPlacementType_Access := new LayerPlacementType;
   begin
      LayerPlacementType_Package.Initialize (This.all, type_Id);
      return This;
   end Create;

   function getType (This : in out LayerPlacementType) return Integer is
   begin
        return This.type_Id;
   end getType;

   procedure setType (This : in out LayerPlacementType; type_Id : Integer) is
   begin
        This.type_Id := type_Id;
   end setType;

end org.allbinary.game.layer.LayerPlacementType_Package;


