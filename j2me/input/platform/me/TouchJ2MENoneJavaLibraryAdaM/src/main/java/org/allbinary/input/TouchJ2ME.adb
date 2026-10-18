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



package body org.allbinary.input.TouchJ2ME_Package is

   procedure Initialize_Fields (This : in out TouchJ2ME'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchJ2ME'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TouchJ2ME_Access is
      This : constant TouchJ2ME_Access := new TouchJ2ME;
   begin
      TouchJ2ME_Package.Initialize (This.all);
      return This;
   end Create;

   procedure pointerDragged (This : in out TouchJ2ME; x : Integer; y : Integer) is
   begin
        null;
   end pointerDragged;

   procedure pointerPressed (This : in out TouchJ2ME; x : Integer; y : Integer) is
   begin
        null;
   end pointerPressed;

   procedure pointerReleased (This : in out TouchJ2ME; x : Integer; y : Integer) is
   begin
        null;
   end pointerReleased;

end org.allbinary.input.TouchJ2ME_Package;


