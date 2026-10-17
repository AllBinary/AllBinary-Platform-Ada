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


package body org.allbinary.game.layer.SensorAction_Package is

   procedure Initialize_Fields (This : in out SensorAction'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out SensorAction'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return SensorAction_Access is
      This : constant SensorAction_Access := new SensorAction;
   begin
      SensorAction_Package.Initialize (This.all, name);
      return This;
   end Create;

end org.allbinary.game.layer.SensorAction_Package;


