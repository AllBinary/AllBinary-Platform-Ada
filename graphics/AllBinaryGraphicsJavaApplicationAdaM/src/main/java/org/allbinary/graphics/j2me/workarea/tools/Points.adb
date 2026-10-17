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


package body org.allbinary.graphics.j2me.workarea.tools.Points_Package is

   procedure Initialize_Fields (This : in out Points'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Points'Class) is
   begin
      Initialize_Fields (This);
        This.pointVector := BasicArrayListD_Package.Create;
   end Initialize;

   function Create return Points_Access is
      This : constant Points_Access := new Points;
   begin
      Points_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out Points) is
   begin
        This.pointVector.clear;
   end init;

   function getPoints (This : in out Points) return BasicArrayList_Access is
   begin
        return This.pointVector;
   end getPoints;

   procedure addPoints (This : in out Points; vector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      vector : constant BasicArrayList_Access := BasicArrayList_Access (vector_Param);
   begin
        This.pointVector.addAll2 (vector);
   end addPoints;

   function isValid (This : in out Points) return Boolean is
   begin
        if (This.pointVector.size) > (1) then
            return True;
        else
            return False;
        end if;
   end isValid;

   function getSize (This : in out Points) return Integer is
   begin
        return This.pointVector.size;
   end getSize;

end org.allbinary.graphics.j2me.workarea.tools.Points_Package;


