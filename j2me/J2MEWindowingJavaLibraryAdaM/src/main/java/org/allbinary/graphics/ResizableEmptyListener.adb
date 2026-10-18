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



package body org.allbinary.graphics.ResizableEmptyListener_Package is

   procedure Initialize_Fields (This : in out ResizableEmptyListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ResizableEmptyListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ResizableEmptyListener_Access is
      This : constant ResizableEmptyListener_Access := new ResizableEmptyListener;
   begin
      ResizableEmptyListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onResizable (This : in out ResizableEmptyListener; isResizable : Boolean) is
   begin
        null;
   end onResizable;

end org.allbinary.graphics.ResizableEmptyListener_Package;


