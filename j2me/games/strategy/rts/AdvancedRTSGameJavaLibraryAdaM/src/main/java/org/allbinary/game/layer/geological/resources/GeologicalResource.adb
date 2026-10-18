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



package body org.allbinary.game.layer.geological.resources.GeologicalResource_Package is

   procedure Initialize_Fields (This : in out GeologicalResource'Class) is
   begin
      null;
      This.total := 0;
      
   end Initialize_Fields;


   procedure Initialize (This : in out GeologicalResource'Class; initTotal : Integer) is
   begin
      Initialize_Fields (This);
        This.initTotal := initTotal;
        GeologicalResource'Class (This).init;
   end Initialize;

   function Create (initTotal : Integer) return GeologicalResource_Access is
      This : constant GeologicalResource_Access := new GeologicalResource;
   begin
      GeologicalResource_Package.Initialize (This.all, initTotal);
      return This;
   end Create;

   procedure init (This : in out GeologicalResource) is
   begin
        GeologicalResource'Class (This).setTotal (This.initTotal);
   end init;

   procedure add (This : in out GeologicalResource; value : Integer) is
      max : Integer;
   begin
        max := Integer'Last;
        if ((GeologicalResource'Class (This).getTotal) + (value)) > (max) then
            GeologicalResource'Class (This).setTotal (max);
        else
            GeologicalResource'Class (This).setTotal ((GeologicalResource'Class (This).getTotal) + (value));
        end if;
   end add;

   procedure remove (This : in out GeologicalResource; value : Integer) is
   begin
        if ((GeologicalResource'Class (This).getTotal) - (value)) < (0) then
            GeologicalResource'Class (This).setTotal (0);
        else
            GeologicalResource'Class (This).setTotal ((GeologicalResource'Class (This).getTotal) - (value));
        end if;
   end remove;

   function getTotal (This : in out GeologicalResource) return Integer is
   begin
        return This.total;
   end getTotal;

   procedure setTotal (This : in out GeologicalResource; total : Integer) is
   begin
        This.total := total;
   end setTotal;

end org.allbinary.game.layer.geological.resources.GeologicalResource_Package;


