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



package body org.allbinary.animation.SideScrollerAnimation_Package is

   procedure Initialize_Fields (This : in out SideScrollerAnimation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SideScrollerAnimation'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return SideScrollerAnimation_Access is
      This : constant SideScrollerAnimation_Access := new SideScrollerAnimation;
   begin
      SideScrollerAnimation_Package.Initialize (This.all);
      return This;
   end Create;

   procedure jump (This : in out SideScrollerAnimation) is
   begin
        null;
   end jump;

   procedure walk (This : in out SideScrollerAnimation) is
   begin
        null;
   end walk;

   procedure run (This : in out SideScrollerAnimation) is
   begin
        null;
   end run;

   procedure crouch (This : in out SideScrollerAnimation) is
   begin
        null;
   end crouch;

end org.allbinary.animation.SideScrollerAnimation_Package;


