-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.unit.UnitGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out UnitGameInputProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UnitGameInputProcessor'Class; unitLayer_Param : access UnitLayer'Class) is
      unitLayer : UnitLayer_Access := UnitLayer_Access (unitLayer_Param);
   begin
      GameInputProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.unitLayer := unitLayer;
   end Initialize;

   function Create (unitLayer_Param : access UnitLayer'Class) return UnitGameInputProcessor_Access is
      This : constant UnitGameInputProcessor_Access := new UnitGameInputProcessor;
   begin
      UnitGameInputProcessor_Package.Initialize (This.all, unitLayer_Param);
      return This;
   end Create;

end org.allbinary.game.layer.unit.UnitGameInputProcessor_Package;


