-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.canvas.GameGlobalsFactory_Package is

   procedure Initialize_Fields (This : in out GameGlobalsFactory'Class) is
   begin
      null;
      This.newCanvas := True;
      This.newDisplaybleTime := Long_Long_Integer (Integer_Package.MIN_VALUE);
      This.point := PointFactory_Package.getInstance.ZERO_ZERO;
   end Initialize_Fields;

   procedure Initialize (This : in out GameGlobalsFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameGlobalsFactory_Access is
      This : constant GameGlobalsFactory_Access := new GameGlobalsFactory;
   begin
      GameGlobalsFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return GameGlobalsFactory_Access is
   begin
        return GameGlobalsFactory_Package.instance;
   end getInstance;

begin
   null;
   instance := GameGlobalsFactory_Package.Create;

end org.allbinary.canvas.GameGlobalsFactory_Package;


