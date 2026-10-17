-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.layer.SteeringVisitor_Package is

   procedure Initialize_Fields (This : in out SteeringVisitor'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out SteeringVisitor'Class) is
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SteeringVisitor_Access is
      This : constant SteeringVisitor_Access := new SteeringVisitor;
   begin
      SteeringVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   function getList (This : in out SteeringVisitor) return BasicArrayList_Access is
   begin
        return This.list;
   end getList;

end org.allbinary.game.layer.SteeringVisitor_Package;


